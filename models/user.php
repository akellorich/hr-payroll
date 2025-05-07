<?php
    require_once( 'db.php');
    require_once('mail.php');
    $mail =new mail();

    class User extends db{

         function generateRandomString($length = 10) {
            $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ@!$&#?%(){}[]:*_';
            $charactersLength = strlen($characters);
            $randomString = '';
            for ($i = 0; $i < $length; $i++) {
                $randomString .= $characters[rand(0, $charactersLength - 1)];
            }
            return $randomString;
        }

        function checkUser($userid,$field,$searchvalue){ 
            $sql="CALL sp_checkuser({$userid},'{$field}','{$searchvalue}')";
            $rst=$this->getData($sql);   
            if($rst->rowCount()){
                return true;
            }else{
                return false;
            }         
        }

        function saveUser($userid,$username,$password,$salt,$firstname,$middlename,$lastname,$mobile,$email,$systemadmin,$accountactive,$changepasswordonlogon){
            // check username
            if($this->checkUser($userid,'username',$username)){
                return ["status"=>"exists","message"=>"Sorry, the username is already in use.",'category'=>'username'];
            }else if ($this->checkUser($userid,'email',$email)){
               //check email 
                return ["status"=>"exists","message"=> "Sorry, the email address is already in use.",'category'=>'email'];
            }else if ($this->checkUser($userid,'mobile',$mobile)){
                // check mobile
                return ["status"=>"exists","message"=> "Sorry, the mobile phone number is already in use.",'category'=>'mobile'];
            }else{
                $password=hash('SHA256',$password.$salt);
                $sql="CALL  sp_saveuser({$userid},'{$password}','{$salt}',{$systemadmin},'{$username}','{$firstname}','{$middlename}','{$lastname}','{$email}','{$mobile}',{$changepasswordonlogon},{$accountactive},{$_SESSION['userid']},'{$this->platform}')";
                // echo $sql."<br/>";
                $rst=$this->getData($sql);   
                //echo $sql."<br/>";.
                // $row=$rst->fetch(PDO::FETCH_ASSOC);
                do{
                    $row = $rst->fetch(); 
                    if(array_key_exists("userid", $row)){
                        return ["status"=>"success","userid"=>$row['userid']];
                    }
                }while ($rst->nextRowset());        
            }
        }
    
        function getUserNameFromId($id){
            $sql="CALL sp_getuserbyid ({$id})";
            $rst=$this->connect()->query($sql);
            if($rst->rowCount()){
                $row=$rst->fetch();
                return $row['username'];
            }else{
                return '';
            }
        }

        function validateLoginDetails($username,$password){
           $sql="CALL sp_getuserdetails ('{$username}')";
            $rst=$this->connect()->query($sql);
            if($rst->rowCount()>0){
                while ($row = $rst->fetch()) {
                    if($row['password'] == hash('SHA256',$password.$row['salt'])){
                        return ["status"=>"success","message"=>"ok"];
                    }else{
                        return ["status"=>"failed","message"=>"invalid password"] ;
                    }
                }
            }else{
                return ["status"=>"failed","message"=>"invalid username"];
            }
		}
        

        function checkUserAccount($id,$username){
           $sql="CALL sp_checkuser ({$id},'{$username}')";
            $rst=$this->connect()->query($sql);
            if($rst->rowCount()){
                return true;
            }else{
                return false;
            }
        }

        function disableUserAccount($id,$reason){
            $sql="CALL sp_disableuseraccount ({$id},'{$reason}',{$_SESSION['userid']})";
            $rst=$this->connect()->query($sql);
            return ["status"=>"success","message"=>"user account disabled successfully"];
        }

        function enableUserAccount($id){
            $sql="CALL sp_enableuseraccount ({$id},{$_SESSION['userid']})";
            $rst=$this->connect()->query($sql);
            return ["status"=>"success","message"=> "user account enabled successfully"];
        }

        function changeUserPassword($id,$oldpassword,$newpassword,$changepasswordonlogon){
            $username=$this->getUserNameFromId($id);
            $salt=$this->uniqidReal(30);
            // echo $this->validateLoginDetails($username,$password);
            
            if($this->validateLoginDetails($username,$oldpassword)["status"]=="success"){
                $newpassword=hash('SHA256',$newpassword.$salt);
                $sql="CALL sp_changeuserpassword ({$id},'{$newpassword}','{$salt}',{$changepasswordonlogon})";
                $rst=$this->connect()->query($sql);

                // email user informing them their password was changed
                $username=$this->getUserNameFromId($id);
                $sql="CALL sp_getuserdetails('{$username}')";
                $rst=$this->connect()->query($sql)->fetch();
                $fullname="{$rst['firstname']} {$rst['middlename']}";
                $emailaddress=$rst['email'];

                // Send the user an email with their reset password
                $message="Hello {$fullname},<br/>Your password was changed succesfully.";
                $message.="If you did not initiate this process, kindly get in touch with us immidiately";
                $message.="<br/>Kind Regards <br/> System Administrator" ;
                $subject="System Password Changed.";
                $GLOBALS['mail']->sendEmail($emailaddress,$subject,$message,'System Administrator');
                return ["status"=>"success","message"=>"user password changed successfully"];
            }else{
                return ["status"=>"failed","message"=>"invalid old pasword"];
            }
            
        }

        function logUserIn($username,$password){
            $sql="CALL sp_getuserdetails ('{$username}')";
            // echo $sql."<br/>";
            $rst=$this->connect()->query($sql);
            if($rst->rowCount()){
                $row = $rst->fetch();
                // echo $row['password'].'\n\n';
                // echo hash('SHA256',$password.$row['salt']);
                if($row['password'] === hash('SHA256',$password.$row['salt'])){
                    if($row['accountactive']==true){
                        if($row['changepasswordonlogon']==true){
                            $_SESSION['userid']=$row['userid']; 
                            $_SESSION['username']=$row['firstname'].' '.$row['middlename'];
                            $_SESSION['employeeid']=$row['employeeid'];
                            return ["status"=>"change password","message"=>"change password","userid"=>$row['userid']];
                        }else{
                            $_SESSION['userid']=$row['userid'];
                            $_SESSION['username']=$row['firstname'].' '.$row['middlename'];
                            $_SESSION['employeeid']=$row['employeeid'];
                            return ["status"=>"success","message"=>"login successful","userid"=>$row['userid']];
                        }   
                    }else{
                        return ["status"=>"inactive","message"=>"account inactive","userid"=>$row['userid']];
                    } 
                }else{
                    return ["status"=>"invalid","message"=>"invalid credentials"];
                }
            }else{
                return ["status"=>"invalid","message"=>"invalid credentials"];
            }
        }

        function logUserOut(){
            session_destroy();
        }

        function getUsers(){
            $sql="CALL sp_getallusers()";
            $rst=$this->connect()->query($sql);
            echo json_encode($rst->fetchAll(PDO::FETCH_ASSOC));
        }

        function getUserDetails($userid){
            $username=$this->getUserNameFromId($userid);
            $sql="CALL sp_getuserdetails('{$username}')";
            $rst=$this->connect()->query($sql);
            return $this->getJSON($sql);
        }

        function deleteUser($userid){
            $sql="CALL sp_deleteuser ({$userid},{$_SESSION['userid']})";
            $rst=$this->connect()->query($sql);
            return ["status"=>"success","message"=>"The user has been deleted successfully."];
        }

        function getLoggedInUserName(){
            return json_encode(isset($_SESSION['username'])?$_SESSION['username']:""); 
        }

        function getloggedinUserId(){
            return json_encode(isset($_SESSION['userid'])?$_SESSION['userid']:""); 
        }
        
        function logoffUser(){
            session_unset();
        }

        function saveUserPrivilege($userid,$object,$valid){
            $sql="CALL sp_saveuserprivilege ({$userid},{$object},{$valid},{$_SESSION['userid']})";
            $rst=$this->connect()->query($sql); 
            return ["status"=>"success","message"=>"user privilege saved successfully"];
        }

        function checkUserPrivilege($objectcode){
            $userid=$_SESSION['userid'];
            $sql="CALL sp_validateuserprivilege({$userid},'{$objectcode}')";
            $rst=$this->connect()->query($sql);
            if($rst->rowCount()){
                return $rst->fetch()['allowed'];
                // return $row['allowed'];
                // if ($row['allowed']==1){
                //     return 1;
                // }else{
                //     return 0;
                // }
            }else{
                return 0;
            }
        }

        function getUsersList(){
            $sql="CALL sp_getallusers()";
            return $this->getJSON($sql);
        }

        function getUserRoles($userid){
            $sql="CALL sp_getuserroles({$userid})";
            return $this->getJSON($sql);
        }

        function getObjects($moduleid){
            $sql="CALL sp_getobjects('{$moduleid}')";
            return $this->getJSON($sql);
        }

        function getRoles(){
            $sql="CALL sp_getroles()";
            return $this->getJSON($sql);
        }

        function getRoleUsers($roleid){
            $sql="CALL sp_getroleusers({$roleid})";
            return $this->getJSON($sql);
        }

        function getRoleDetails($roleid){
            $sql="CALL sp_getroledetails({$roleid})";
            return $this->getJSON($sql);
        }

        function getRolesForAssignment(){
            $sql="CALL sp_getrolesforuserassignment()";
            return $this->addUserToRolegetJSON($sql);

        }

        function getRolePrivileges($roleid){
            $sql="CALL sp_getroleprivileges({$roleid})";
            return $this->getJSON($sql);
        }

        function getUserNonRoles($userid){
            $sql="CALL sp_getnonuserroles({$userid})";
            return $this->getJSON($sql);
        }

        function removeUserRole($userid,$roleid){
            $sql="CALL sp_removeuserrole({$userid},{$roleid},{$_SESSION['userid']})";
            return $this->getData($sql);
        }

        function  getUserPrivileges($userid){
            $sql="CALL sp_getuserprivileges({$userid})";
            return $this->getJSON($sql);
        }

         function getUsernameFromUserId($userid){
            $sql="CALL sp_getusernamefromuserid({$userid})";
            //echo $sql."<br/>";
            $rst=$this->getData($sql);
            return $rst->rowCount()?$rst->fetch()['username']:'';
        }

        function getuseridfromname($username){
            $sql="CALL sp_getuserdetails ('{$username}')";
            $rst= $this->getData($sql);
            return $rst->rowCount()?$rst->fetch()['userid']:''; 
        }

        function saveTempPrivileges($refno,$id,$objectid,$valid){
            // id is either userid or role id
            $sql="CALL sp_savetempprivilege('{$refno}',{$id},{$objectid},{$valid})";
            $rst=$this->getData($sql);
            if($rst){
                return ["status"=>"success","message"=>'temp privilege saved successfully'];
            }
        }

        function checkRole($roleid,$rolename){
            $sql="CALL spcheckrole({$roleid},'{$rolename}')";
            $rst=$this->getData($sql);
            return $rst->rowCount();  
        }

        function savePrivileges($refno,$userid,$category){
            // category is either user or role
            $sql="CALL sp_saveprivileges({$userid},'{$category}','{$refno}',{$_SESSION['userid']})";
            //echo $sql."<br/>";
            $rst=$this->getData($sql);
            return ["status"=>"success","message"=>"user privileges saved successfully"];
        }
        
        function saveRole($roleid,$rolename,$roledescription){
            if($this-> checkRole($roleid,$rolename)){
                return "Sorry, the role is already in use within the system.";
            }else{
                 $sql="CALL sp_saverole({$roleid},'{$rolename}','{$roledescription}',{$_SESSION['userid']})";
                 //echo $sql;
                 $rst=$this->getData($sql);
                 //if($rst->rowCount()){
                 $row=$rst->fetch(PDO::FETCH_ASSOC);
                 return $row['roleid'];
            }
        } 

        function resetUserPassword($id,$newpassword, $category="user"){
            $userid=$id;
            $salt=$this->uniqidReal(30);
            if($newpassword==''){
                $newpassword=$this->generateRandomString();
            }

            $encryptedpassword=hash('SHA256',$newpassword.$salt);
            $sql="CALL sp_changeuserpassword ({$id},'{$encryptedpassword}','{$salt}',1)";
            // echo $sql."<br/>";
            $rst=$this->connect()->query($sql);
            
            // get users details
            $username=$this->getUserNameFromId($userid);
            $sql="CALL sp_getuserdetails('{$username}')";
            $rst=$this->connect()->query($sql)->fetch();
            $fullname="{$rst['firstname']} {$rst['middlename']} {$rst['lastname']}";
            $emailaddress=$rst['email'];
            $companyname=$rst['companyname'];
            $supportphone=$rst['supportphone'];
            $supportemail=$rst['supportemail'];

            // email the user their password change
            $template_file="../templates/emails/resetuserpasswordnotification.html";
            if(file_exists($template_file)){
                $emailmessage=file_get_contents($template_file);
                // email employee
                // $rst=json_decode($this->getleaveapplicationemployeedetails($applicationid),true); 
                // $rst=json_decode($this->getemployeedetailsbystaffno($staffno),true)[0];
                // print_r($rst).PHP_EOL;
                // swap variables with actual content
                if($category=="user"){
                    $documenttitle="System Passowrd Reset Notification";
                }else if($category=="employee"){
                    $documenttitle="Employee Self Serrvice Portal Password Reset Notifications";
                }
                $swap_var=array(
                    "{{companyname}}"=>$companyname, 
                    "{{documenttitle}}"=>$documenttitle,
                    "{{employeename}}"=>$fullname,
                    "{{newpassword}}"=>$newpassword,
                    "{{username}}"=>$_SESSION['username'],
                    "{{supportemail}}"=>$supportemail,
                    "{{supportphonenumber}}"=>$supportphone,
                    "{{year}}"=>date("Y")
                );

                // search and replace all swap variables with actual contents
                foreach(array_keys($swap_var) as $key){
                    if(strlen($key)>2 && trim($key)!==""){
                        $emailmessage=str_replace($key,$swap_var[$key],$emailmessage);
                    }
                }

                // the requestors email
                // $email=$rst['emailaddress'];
                $response=$GLOBALS['mail']->sendEmail($emailaddress,$documenttitle,$emailmessage,$_SESSION['username']);
                // echo $response;
            }

            // // Send the user an email with their reset password
            // $message="Hello {$fullname},<br/>Your password was reset succesfully.<br>Your new password is <h1>{$newpassword}</h1>";
            // $message.="Please note that you will be resuired to change this password prior to accessing the system for normal operations.";
            // $message.="Kind Regards <br/> System Administrator" ;
            // $subject="System Password Reset.";
            // $GLOBALS['mail']->sendEmail($emailaddress,$subject,$message,'System Administrator');
            // echo $message;

            return ["status"=>"success","message"=>"user password reset succesfully"];
        }

        function addUserToRole($userid,$roleid){
            $sql="CALL sp_saveroleusers({$userid},{$roleid},{$_SESSION['userid']})";
            //echo $sql."<br/>";
            $rst=$this->getData($sql);
            if($rst){
                return ["status"=>"success","message"=> "user added to role successfully"];
            }
        }

        function getsystemadmins(){
            $sql="CALL `sp_getsystemadmins`()";
            return $this->getJSON($sql);
        }

        function saveusercompany($userid,$companyid){
            $sql="CALL `sp_addusercompamy`({$userid},{$companyid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=> "user added to company successfully"];
        }

        function getuserassignedcompanies($userid){
            $sql="CALL `sp_getusercompanies`({$userid})";
            return $this->getJSON($sql);
        }

        function getuserunassignedcompanies($userid){
            $sql="CALL `sp_getusernonassignedcompanies`({$userid})";
            // echo $sql."<br/>";
            return $this->getJSON($sql);
        }
        
    }
?>