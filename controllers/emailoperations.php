<?php
    require_once("../models/mail.php");

    if(isset($_POST['queueemail'])){
        $module=$_POST['module'];
        $email=new mail($module);
        $emailfrom='';
        $emailto=$_POST['recipient'];
        $emailsubject=$_POST['subject'];
        $emailmessage=$_POST['message'];
        $attachment="";
        $uploadDir="../mailattachments/";
        // check if any attachments then upload and 
        if(isset($_FILES['attachment'])){
            foreach ($_FILES['attachment']['name'] as $key => $name) {
                if ($_FILES['attachment']['error'][$key] === UPLOAD_ERR_OK) {
                    // Get temporary file path
                    $tmpName = $_FILES['attachment']['tmp_name'][$key];
                    // Define target path
                    $targetPath = $uploadDir . $email->uniqid(). basename($name);
                    // Move the file to the upload directory
                    if (move_uploaded_file($tmpName, $targetPath)) {
                        $attachment .=$attachment==""?$targetPath:",".$targetPath;
                    }    
                    else {
                        echo "Failed to upload file '$name'.<br>";
                    }
                } 
                else {
                    echo "Error uploading file '$name'. Error code: " . $_FILES['files']['error'][$key] . "<br>";
                }
            }
        }

        $response=$email->queueemail($module,$emailfrom,$emailto,$emailsubject,$emailmessage,$attachment);
        echo json_encode($response);
    }
    
?>