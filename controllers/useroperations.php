<?php 
    require_once("../models/user.php");
    $user=new user();

    if(isset($_POST['loginuser'])){
        $username=$_POST['username'];
        $password=$_POST['password'];
        $response= $user->logUserIn($username,$password);
        echo json_encode($response);
    }

    if(isset($_GET['getuserdetails'])){
        $userid=$_GET['userid'];
        echo $user->getUserDetails($userid);
    }

    if(isset($_POST['deleteuser'])){
        $userid=$_POST['userid'];
        $response=$user->deleteUser($userid);
        echo json_encode($response);
    }

    if(isset($_GET['getloggedinusername'])){
        echo $user->getLoggedInUserName();
    }

    if(isset($_GET['getloggedinuserid'])){
        echo $user->getloggedinUserId();
    }

    if(isset($_GET['getloggedinuser'])){
        echo $user->getUserDetails($_SESSION['userid']);
    }

    if(isset($_GET['logout'])){
        session_destroy();
        header('Location: ../index.php'); 
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
            echo json_encode(["status"=>"success","message"=>"user privilege saved successfully"]);
        }
    }

    if(isset($_POST['getuserprivilege'])){
        $objectid=$_POST['objectid'];
        $status=["allowed"=>$user->checkUserPrivilege($objectid)];
        echo json_encode($status);
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
        echo $user->getRoleUsers($roleid);
    }
 
    if(isset($_POST['saverole'])){
        $category='role';
        $roleid=$_POST['roleid'];
        $rolename=$_POST['rolename'];
        $roledescription=$_POST['roledescription'];
        $refno=mt_rand(1000,9999);
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
             $response= $user->savePrivileges($refno,$roleid,$category);
             echo json_encode($response);
        }else{
            echo $roleid;
        }
    }
 
    if(isset($_GET['getroledetails'])){
        $roleid=$_GET['roleid'];
        echo $user->getRoleDetails($roleid);
    }
 
    if(isset($_GET['getroleprivileges'])){
        $roleid=$_GET['roleid'];
        echo $user-> getRolePrivileges($roleid);
    }

    if(isset($_GET['getrolesforassignment'])){
        echo $user->getRolesForAssignment();
    }

    if(isset($_GET['getusernonroles'])){
        $userid=$_GET['userid'];
        echo $user->getUserNonRoles($userid);
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
     echo json_encode(["status"=>"success","message"=>"user added to roles successfully"]);
    }

    if(isset($_POST['removeuserrole'])){
        $userid=$_POST['userid'];
        $roleid=$_POST['roleid'];
        $response=$user->removeUserRole($userid,$roleid);
        echo json_encode($response);
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
        $password=hash('SHA256',$_POST['password']);
        $email=$_POST['email'];
        $mobile=$_POST['mobile'];
        $firstname=$_POST['firstname'];
        $middlename=$_POST['middlename'];
        $lastname=$_POST['lastname'];
        $systemadmin=$_POST['systemadmin'];
        $changepasswordonlogon=$_POST['changepasswordonlogon'];
        $accountactive=1;#$_POST['accountactive'];
        $refno=mt_rand(1000,9999);
        $category='user';
        $salt=$user->uniqidReal(40);
        $tableData = stripcslashes($_POST['TableData']);
        // Decode the JSON array
        $tableData = json_decode($tableData,TRUE);
        // save the user and return user id
        $institutionid=isset($_POST['institutionid'])?$_POST['institutionid']:1;
        $userid= $user->saveUser($userid,$username,$password,$salt,$firstname,$middlename,$lastname,$mobile,$email,$systemadmin,$accountactive,$changepasswordonlogon,$institutionid);
    
        if(is_numeric($userid)){
            foreach($tableData as $userprivilege){
                $objectid=$userprivilege['id'];
                $valid=$userprivilege['valid'];
                $user->saveTempPrivileges($refno,$userid,$objectid,$valid);
            }
            $response=$user->savePrivileges($refno,$userid,$category);
            echo json_encode($response);
        }else{
            echo $userid;
        } 
    }

    if(isset($_POST['changeaccountstatus'])){
        $activity=$_POST['activity'];
        $id=$_POST['id'];
        $reason=$_POST['reason'];
        if($activity=="disable"){
            $response= $user->disableUserAccount($id,$reason);
        }else{
            $response= $user->enableUserAccount($id);
        }

        echo json_encode($response);
    }

    if(isset($_POST['resetuserpassword'])){
        $id=$_POST['id'];
        $password=$_POST['password'];
        $response= $user->resetUserPassword($id,$password);
        echo json_encode($response);
    }

    if(isset($_POST['recoveruserpassword'])){
        $username=$_POST['username'];
        $userid=$user->getuseridfromname($username);
        if($userid!==''){
            $user->resetUserPassword($userid,'');
            return ["status"=>"success","message"=>"user password reset successfully"];
        }else{
            return ["status"=>"not exists","message"=>"user not found"] ;
        }
        
    }

    // if(isset($_GET['getuserassignedcompanies'])){
    //         $userid=$_GET['userid'];
    //         echo $user->getuserassignedcompanies($userid);
    // }

    // if(isset($_GET['getuserunassignedcompanies'])){
    //     $userid=$_GET['userid'];
    //     echo $user->getuserunassignedcompanies($userid);
    // }

    // if(isset($_POST['saveusercompany'])){
    //     $companies=json_decode(stripcslashes($_POST['companies']),true);
    //     $userid=$_POST['userid'];
    //     foreach($companies as $company){
    //         $companyid=$company['companyid'];
    //         $user->saveusercompany($userid,$companyid);
    //     }
    //     echo "success";
    // }

    if(isset($_POST['changeuserpassword'])){
        $userid=$_POST['userid'];
        $oldpassword=$_POST['oldpassword'];
        $newpassword=$_POST['newpassword'];
        $response= $user->changeUserPassword($userid,$oldpassword,$newpassword,0);
        echo json_encode($response);
    }
?>