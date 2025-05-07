<?php
    require_once(__DIR__."/../models/mail.php");

    // get pending mails to send
    $sql="CALL `sp_getpendingemails`()";
    $email=new mail('managed services');

    $rst=$email->getData($sql)->fetchAll(PDO::FETCH_ASSOC);

    // echo json_encode($rst);

    foreach($rst as $mail){ 
        
        $email=new mail($mail['module']);
        $emailid=$mail['id'];
        $from=$mail['from'];
        $to=$mail['to'];
        $subject=$mail['subject'];
        $message=$mail['message'];
        $attachment=explode(",",$mail['attachment']); 
        // send email
        // echo "Processing email id <br>".$emailid;

        // echo json_encode($email);
        // echo json_encode($to);  
        // echo json_encode($subject); 
        // echo json_encode($message);
        // echo json_encode($from);
        // echo json_encode($attachment);  

        $response=$email->sendEmail($to,$subject,$message,$from,$attachment);
        // echo json_encode($response);
        $response["emailid"]=$emailid;
        // update email sending status
        if($response['status']=="success"){
            $sql="CALL `sp_updateemailstatus`({$emailid},1,'')";
            $email->getData($sql);
        }else{
            $errormessage=$response['message'];
            $sql="CALL `sp_updateemailstatus`({$emailid},0,'{$errormessage}')";
            $email->getData($sql);
        }
        
        echo json_encode($response);
    }

?>