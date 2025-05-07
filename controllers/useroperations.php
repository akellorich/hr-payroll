<?php 
    require_once("../models/user.php");
    $user=new user();

    if(isset($_POST['loginuser'])){
        // $database=$_GET['company'];
        $username=$_POST['username'];
        $password=$_POST['password'];
        // $_SESSION['dbname']=$database;
        echo json_encode($user->logUserIn($username,$password));
        //echo json_encode($result);
    }
    if(isset($_GET['getuserdetails'])){
        $userid=$_GET['userid'];
        $user->getUserDetails($userid);
    }
    if(isset($_POST['deleteuser'])){
        $userid=$_POST['userid'];
        $user->deleteUser($userid);
    }
    if(isset($_GET['getloggedinusername'])){
        echo $user->getLoggedInUserName();
    }
    if(isset($_GET['getloggedinuserid'])){
        echo $user->getloggedinUserId();
    }
    if(isset($_GET['logout'])){
        //redirect to the login page
        session_destroy();
        header('Location: ../index.html'); 
    }
    if(isset($_POST['saveuserprivileges'])){
        $pattern='::';
        $userid=$_POST['userid'];
        $privileges=explode(",",json_decode($_POST['privileges']));
        if(count($privileges)>0){
            // the array is not empty
            foreach($privileges as $privilege){
                //echo print_r(explode($pattern,$otherspare));
                $privilegedetail=explode($pattern,$privilege);
                $objectid=$privilegedetail[0];
                $valid=$privilegedetail[1];
                $user-> saveUserPrivilege($userid,$objectid,$valid);
            }
            echo "Success";
        }
    }

    if(isset($_POST['getuserprivilege'])){
        $objectcode=$_POST['objectcode'];
        echo $user->checkUserPrivilege($objectcode);
    }

    if(isset($_GET['getuserslist'])){
        echo $user->getUsersList();
    }

    if(isset($_GET['getuserroles'])){
        $userid=$_GET['userid'];
        echo $user->getUserRoles($userid);
    }

    if(isset($_GET['getobjects'])){
        if(isset($_GET['moduleid'])){
            $moduleid=$_GET['moduleid'];
        }else{
            $moduleid='';
        }
        echo $user->getObjects($moduleid);
    }

    if(isset($_GET['getroles'])){
        echo $user->getRoles();
    }
 
    if(isset($_GET['getroleusers'])){
        $roleid=$_GET['roleid'];
        $user->getRoleUsers($roleid);
    }
 
    if(isset($_POST['saverole'])){
        $category='role';
        $roleid=$_POST['roleid'];
        $rolename=$_POST['rolename'];
        $roledescription=$_POST['roledescription'];
        $refno=$user->generateid();
        $tableData = stripcslashes($_POST['TableData']);
        // Decode the JSON array
        $tableData = json_decode($tableData,TRUE);
        // save the role
        $roleid=$user->saveRole($roleid,$rolename,$roledescription);
        if(is_numeric($roleid)){
             foreach($tableData as $roleprivilege){
                 $objectid=$roleprivilege['id'];
                 $valid=$roleprivilege['valid'];
                 $user->saveTempPrivileges($refno,$roleid,$objectid,$valid);
             }
             echo $user->savePrivileges($refno,$roleid,$category);
        }else{
            echo $roleid;
        }
    }
 
    if(isset($_GET['getroledetails'])){
        $roleid=$_GET['roleid'];
        $user->getRoleDetails($roleid);
    }
 
    if(isset($_GET['getroleprivileges'])){
        $roleid=$_GET['roleid'];
        $user-> getRolePrivileges($roleid);
    }

    if(isset($_GET['getrolesforassignment'])){
        $user->getRolesForAssignment();
    }

    if(isset($_GET['getusernonroles'])){
        $userid=$_GET['userid'];
        $user->getUserNonRoles($userid);
    }

    if(isset($_POST['saveuserroles'])){
        $userid=$_POST['userid'];
        $tableData = stripcslashes($_POST['TableData']);
        // Decode the JSON array
        $tableData = json_decode($tableData,TRUE);
        foreach($tableData as $userrole){
            $roleid=$userrole['roleid'];
            $user->addUserToRole($userid,$roleid);
        }
        echo "success";
    }

    if(isset($_POST['removeuserrole'])){
        $userid=$_POST['userid'];
        $roleid=$_POST['roleid'];
        $user->removeUserRole($userid,$roleid);
    }

    if(isset($_GET['getusersdetails'])){
        $userid=$_GET['userid'];
        $username=$user->getUsernameFromUserId($userid);
        echo $user->getUserDetails($userid);
    }

    if(isset($_GET['getuserprivileges'])){
        $userid=$_GET['userid'];
        echo $user->getUserPrivileges($userid);
    }

    if(isset($_POST['saveuser'])){
        $userid=$_POST['userid'];
        $username=$_POST['username'];
        $password=$_POST['password'];
        $passwordsalt=generate_random_no(20);
        $email=$_POST['email'];
        $mobile=$_POST['mobile'];
        $firstname=$_POST['firstname'];
        $middlename=$_POST['middlename'];
        $lastname=$_POST['lastname'];
        $systemadmin=$_POST['systemadmin'];
        $changepasswordonlogon=$_POST['changepasswordonlogon'];
        $accountactive=1;#$_POST['accountactive'];
        $refno=generate_random_no(10);
        $category='user';
        // $pin=$_POST['pin'];
        // $pinsalt=generate_random_no(20);

        $tableData = stripcslashes($_POST['TableData']);
        // Decode the JSON array
        $tableData = json_decode($tableData,TRUE);
        // save the user and return user id
        $response= $user->saveUser($userid,$username,$password,$passwordsalt,$firstname,$middlename,$lastname,$mobile,
        $email,$systemadmin,$accountactive,$changepasswordonlogon);
    
        if($response['status']=="success"){
            $userid=$response['userid'];
            foreach($tableData as $userprivilege){
                $objectid=$userprivilege['id'];
                $valid=$userprivilege['valid'];
                $user->saveTempPrivileges($refno,$userid,$objectid,$valid);
            }
            $user->savePrivileges($refno,$userid,$category);
        }
        echo json_encode($response);
    }
   
    if(isset($_POST['changeaccountstatus'])){
        $activity=$_POST['activity'];
        $id=$_POST['id'];
        $reason=$_POST['reason'];
        if($activity=="disable"){
            echo $user->disableUserAccount($id,$reason);
        }else{
            echo $user->enableUserAccount($id);
        }
    }

    if(isset($_POST['resetuserpassword'])){
        $id=$_POST['id'];
        $password=$_POST['password'];
        echo $user->resetUserPassword($id,$password);
    }

    if(isset($_GET['getloggedinuserdetails'])){
        if(isset($_SESSION['username'])){
            echo json_encode(array(
                "status"=>"success",
                "username"=>$_SESSION['username'],
                "userimage"=>$_SESSION['userimage']
            ));
        }else{
            echo json_encode(array(
                "status"=>"error",
                "message"=>'User not logged in'
            ));
        }
    }

    if(isset($_GET['logoutmobiuser'])){
        $user->logUserOut();
        header('Location: ../mobi/index.php'); 
    }

    if(isset($_POST['saverequisitionprivilege'])){
        // save requisition privileges
            $userid=$_POST['userid'];
            $privileges=json_decode(stripcslashes($_POST['privileges']),TRUE);
            foreach($privileges as $privilege){
                $departmentid=$privilege['departmentid'];
                $approvallevelid=$privilege['approvallevelid'];
                $valid=$privilege['valid'];
                $user->saverequisitionprivilege($userid,$approvallevelid,$departmentid,$valid);
            }
            // save purchase order privileges
            $poprivileges=json_decode(stripcslashes($_POST['poprivileges']),TRUE);
            foreach($poprivileges as $privilege){
                $departmentid=$privilege['departmentid'];
                $approvallevelid=$privilege['approvallevelid'];
                $valid=$privilege['valid'];
                $user->savepurchaseorderprivilege($userid,$approvallevelid,$departmentid,$valid);
            }
            echo "success";
    }

    if(isset($_GET['getuserrequisitionapprovalprivileges'])){
        $userid=$_GET['userid'];
        echo $user->getuserrequisitionapprovalprivileges($userid);
    }

    if(isset($_GET['getuserpurchaseorderapprovalprivileges'])){
        $userid=$_GET['userid'];
        echo $user->getuserpurchaseorderapprovalprivileges($userid);
    }

    if(isset($_POST['uploadsignature'])){      
        $userid=isset($_POST['userid'])?$_POST['userid']:$_SESSION['userid'];
        $documentname="../images/signatures/".$user->generateid(20).'_'.$_FILES['file']['name'];
        $tempname=$_FILES['file']['tmp_name'];
        if(move_uploaded_file($tempname,$documentname)){
            echo $user->saveusersignature($userid,$documentname);
        }else{
            echo "File was not uploaded. Please try again";
        }
    }

    if(isset($_POST['uploadprofilephoto'])){
        $userid=isset($_POST['userid'])?$_POST['userid']:$_SESSION['userid'];
        $documentname="../images/user_profiles/".$user->generateid(20).'_'.$_FILES['file']['name'];
        $tempname=$_FILES['file']['tmp_name'];
        if(move_uploaded_file($tempname,$documentname)){
            echo $user->saveuserprofilephoto($userid,$documentname);
        }else{
            echo "File was not uploaded. Please try again";
        }
    }

    if(isset($_POST['resetuserpin'])){
        $userid=$_POST['userid'];
        $pin=$_POST['pin'];
        $pinsalt=generate_random_no(20);
        echo json_encode($user->resetuserpin($userid,$pin,$pinsalt));
    }

    if(isset($_GET['loginuserbypin'])){
        $username=$_GET['username'];
        $pin=$_GET['pin'];
        $database=$_GET['company'];
        $_SESSION['dbname']=$database;
        echo json_encode($user->loginuserbypin($username,$pin));
    }

    if(isset($_GET['checkuserprivilegewithcode'])){
        $code=$_GET['code'];
        echo json_encode($user->checkuserprivilegewithcode($code));
    }
?>