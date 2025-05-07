<?php
    require_once("../models/settings.php");
    require_once("../models/mail.php");
    require_once("../models/sms.php");


    $setting=new settings();
    $mail=new mail();
    $sms=new sms();
    
    if(isset($_GET['getserverdate'])){
        echo date('Y-m-d H:i:s') ;
    }

    if(isset($_GET['getregistrationdocuments'])){
        echo $setting->getiddocuments();
    }
    

    if(isset($_GET['getmaritalstatuses'])){
        echo $setting->getmaritalstatuses();
    }

    if(isset($_GET['getreligions'])){
        echo $setting->getreligions();
    }

    if(isset($_GET['getsalutations'])){
        echo $setting->getsalutation();
    }

    if(isset($_GET['gettenantcategories'])){
        echo $setting->gettenantcategories();
    }

    if(isset($_POST['savepublicholiday'])){
        $id=$_POST['holidayid'];
        $holidayname=$_POST['holidayname'];
        $holidaydate=$_POST['holidaydate'];
        $repeatsannually=$_POST['repeatsannually'];
        $skipweekends=$_POST['skipweekends'];
        $response=$setting->savepublicholiday($id,$holidayname,$holidaydate,$repeatsannually,$skipweekends);
        echo json_encode($response);
    }

    if(isset($_GET['getpublicholidays'])){
        $status=isset($_GET['status'])?$_GET['status']:"current";
        echo $setting->getpublicholidays($status);
    }

    if(isset($_GET['getpublicholidaydetails'])){
        $id=$_GET['holidayid'];
        echo $setting->getpublicholidaydetails($id);
    }

    if(isset($_POST['deletepublicholiday'])){
        $id=$_POST['holidayid'];
        $response=$setting->deletepublicholiday($id);
        echo json_encode($response);
    }

    if(isset($_GET['getrelationships'])){
        echo $setting->getrelationships();
    }

    if(isset($_GET['getcourselevels'])){
        echo $setting->getcourselevels();
    }

    if(isset($_GET['getpaymentmethods'])){
        echo $setting->getpaymentmethods();
    }
    
    if(isset($_POST['saveunit'])){
        $unitid=$_POST['unitid'];
        $unitcode=$_POST['unitcode'];
        $unitname=$_POST['unitname'];
        $response=$setting->saveunit($unitid,$unitcode,$unitname);
        echo json_encode($response);
    }

    if(isset($_GET['getunits'])){
        echo $setting->getunits();
    }

    if(isset($_GET['getunitdetails'])){
        $unitid=$_GET['unitid'];
        echo $setting->getunitdetails($unitid);
    }

    if(isset($_POST['deleteunit'])){
        $unitid=$_POST['unitid'];
        $response=$setting->deleteunit($unitid);
        echo json_encode($response);
    }

    if(isset($_POST['savesection'])){
        $sectionid=$_POST['sectionid'];
        $departmentid=$_POST['departmentid'];
        $sectioncode=$_POST['sectioncode'];
        $sectionname=$_POST['sectionname'];
        $response=$setting->savesection($sectionid,$departmentid,$sectioncode, $sectionname);
        echo json_encode($response);
    }

    if(isset($_GET['getsections'])){
        $departmentid=isset($_GET['departmentid'])?$_GET['departmentid']:0;
        echo $setting->getsections($departmentid);
    }

    if(isset($_GET['getsectiondetails'])){
        $sectionid=$_GET['sectionid'];
        echo $setting->getsectiondetails($sectionid);
    }

    if(isset($_POST['deletesection'])){
        $sectionid=$_POST['sectionid'];
        echo $setting->deletesection($sectionid);
    }

    if(isset($_GET['getsmsparameters'])){
        echo $sms->getsmsparameters();
    }

    if(isset($_GET['getemailparameters'])){
        $module=$_GET['module'];
        echo $mail->getemailparameters($module);
    }

    if(isset($_POST['saveemailparameters'])){
        $module=$_POST['module'];
        $emailaddress=$_POST['emailaddress'];
        $sendername=$_POST['sendername'];
        $emailpassword=$_POST['password'];
        $smtpserver=$_POST['smtpserver'];
        $smtpport=$_POST['smtpport'];
        $usessl=$_POST['usessl'];
        $globalsetting=$_POST['globalsetting'];
        $response= $mail->saveemailparameters($module,$emailaddress,$sendername,$emailpassword,$smtpserver,$smtpport,$usessl,$globalsetting);
        echo json_encode($response);
    }

    if(isset($_POST['savesmsparameters'])){
        $clientid=$_POST['clientid'];
        $url=$_POST['url'];
        $senderid=$_POST['senderid'];
        $apikey=$_POST['apikey'];
        echo $sms->savesmsparameters($clientid,$url,$senderid,$apikey);
    }

    if(isset($_POST['sendemail'])){
        $recipient=$_POST['recipient'];
        $subject=$_POST['subject'];
        $message=$_POST['message'];
        $attachment=isset($_POST['attachment'])?$_POST['attachment']:"";
        $sender=isset($_SESSION['username'])?$_SESSION['username']:$recipient;
        $response= $mail->sendEmail($recipient,$subject,$message,$sender,$attachment);
        echo json_encode($response);
    }

    if(isset($_POST['sendsms'])){
        $recipient=$_POST['recipient'];
        $message=$_POST['message'];
        echo $sms->sendSMS($recipient,$message);
    }

    if(isset($_GET['getsystemmodules'])){
        echo $setting->getSystemModules();
    }

    
?>