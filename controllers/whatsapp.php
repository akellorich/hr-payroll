<?php
    require_once dirname(__DIR__,1).("/models/whatsapp.php");
    $whatsapp=new whatsapp();

    if(isset($_POST['sendtestmessage'])){
        $messagetype=$_POST['messagetype'];
        $number=$_POST['number'];
        $profilename=isset($_POST['profilename'])?$_POST['profilename']:'';

        if($messagetype=="welcome"){
            $response=$whatsapp->sendwelcomemessage($number,$profilename,1);
        }
        
        echo $response['status']=="success"?"success":$response['message'];
    }

    if(isset($_POST['sendtext'])){
        $number=$_POST['number'];
        $message=$_POST['message']; 
        $category=$_POST['category'];
        $response=$whatsapp->sendtext($number,$message,$category);
        if($response['status']=="success"){
            echo "success";
        }else{
            echo $response['message'];
        }
    }
    
    if(isset($_POST['savewhatsppconfiguration'])){
        $phonenumberid=$_POST['phonenumberid'];
        $accesstoken=$_POST['accesstoken'];
        $baseurl=$_POST['baseurl'];
        echo $whatsapp->savewhatsappconfiguration($phonenumberid,$accesstoken,$baseurl);
    }

    if(isset($_GET['getwhatsappconfiguration'])){
        echo $whatsapp->getwhatsappconfiguration();
    }

    if(isset($_POST['savewhatsappmessage'])){
        $wamid=$_POST['wamid'];
        $phoneno=$_POST['number'];
        $messagecontent=$_POST['body'];
        $direction=$_POST['direction'];
        $template=$_POST['template'];
        $templatename=$_POST['templatename'];
        $category=$_POST['category'];
        $questionid=isset($_POST['questionid'])?$_POST['questionid']:0;
        echo $whatsapp->savemessage($wamid,$phoneno,$messagecontent,$direction,$template,$templatename,$category,$questionid);
    }

    if(isset($_POST['sendwelcomemessage'])){
        $number=$_POST['number'];
        $profilename=$_POST['profilename'];
        $whatsapp->sendwelcomemessage($number,$profilename);
        echo "Welcome Message sent".PHP_EOL;
    }

    if(isset($_POST['sendintroductionmessage'])){
        $number=$_POST['number']; 
        echo "Sending introduction message  to ".$number."...".PHP_EOL;
        $whatsapp->sendintroductionmessage($number);
        // echo 'Candidate introduction message sent'.PHP_EOL;
    }

    if(isset($_POST['updatemessagestatus'])){
        $wamid=$_POST['wamid'];
        $status=$_POST['status'];
        echo "Updating message status ...".$status.PHP_EOL;
        $whatsapp->updatemessagestatus($wamid,$status);
    }

    if(isset($_POST['sendmainmenu'])){
        // echo "Processing main menu ...";
        $number=$_POST['number'];
        $whatsapp->sendmainmenu($number);
    }

    if(isset($_POST['nextquestionprompt'])){
        $number=$_POST['number'];
        $whatsapp->nextquestionprompt($number);
    }

    if(isset($_POST['sendanswerresponse'])){
        $response=$_POST['response'];
        $number=$_POST['number'];
        $whatsapp->sendanswerresponse($response,$number);
    }

    if(isset($_POST['sendjoke'])){
        $number=$_POST['number'];
        $whatsapp->sendjoke($number);
    }


    if(isset($_POST['sendmotivation'])){
        $number=$_POST['number'];
        $whatsapp->sendmotivation($number);
    }

    if(isset($_POST['getsubscribertriviadetails'])){
        // echo 'Generating whatsapp trivia details (controller) ...'.PHP_EOL;
        $wamid=$_POST['wamid'];
        echo $whatsapp->getsubscribertriviadetails($wamid);
    }

    if(isset($_POST['sendtriviaresponse'])){
        $number=$_POST['number'];
        $response=$_POST['response'];
        $whatsapp->sendtriviaresponse($number,$response);
    }

    if(isset($_POST['practiceexamwelcome'])){
        $number=$_POST['number'];
        $message=$_POST['message'];
        $whatsapp->practiceexamwelcome($number,$message);
    }

    if(isset($_POST['startpracticeexam'])){
        echo "Starting practice exam ...".PHP_EOL;
        $number=$_POST['number'];
        // $examtypeid=$_SESSION['examtypeid'];
        echo $whatsapp->startsubscriberpracticeexam($number);
    }

    if(isset($_POST['checkpracticeexxam'])){
        // echo "Checking practice exam ...".PHP_EOL;
        $number=$_POST['number'];
        $examtypeid=isset($_POST['examtypeid'])?$_POST['examtypeid']:0;
        // echo "Exam typeid controller ".$examtypeid.PHP_EOL;
        echo $whatsapp->checksubscriberrunningexam($number,$examtypeid);
    }

    if(isset($_POST['sendpracticequestion'])){
        echo "Sending practice question (controller)...".PHP_EOL;
        $number=$_POST['number'];
        $whatsapp->sendpracticeexamquestion($number);
    }

    if(isset($_POST['updatepracticeexamanswer'])){
        $wamid=$_POST['wamid'];
        $number=$_POST['number'];
        $answerid=$_POST['answerid'];
        $answertext=$_POST['answertext'];
        echo $whatsapp->updatepracticeexamanswer($wamid,$number,$answerid,$answertext);
    }

    if(isset($_POST['getsubscriberpracticeexamtotalquestions'])){
        $number=$_POST['number'];
        echo $whatsapp->subscriberpracticeexamquestionsasked($number);
    }

    if(isset($_POST['stoppracticeexam'])){
        $number=$_POST['number'];
        $reason=isset($_POST['reason'])?$_POST['reason']:'time eleapsed';
        echo $whatsapp->stoppracticeexam($number,$reason);
    }

    if(isset($_POST['getpracticeexamsummary'])){
        $number=$_POST['number'];
        $examid=isset($_POST['examid'])?$_POST['examid']:0;
        echo $whatsapp->getpracticeexamresults($number,$examid);
    }

    if(isset($_POST['getpracticeexamsummarybycategory'])){
        $number=$_POST['number'];
        $examid=isset($_POST['examid'])?$_POST['examid']:0;
        echo $whatsapp->getpracticeexamresultsbycategory($number,$examid);
    }

    if(isset($_POST['informationmenu'])){
        $number=$_POST['number'];
        $message="Please select a menu option below: ";
        echo $whatsapp->informationmenu($message,$number);
    }

    if(isset($_POST['entertainmentmenu'])){
        $number=$_POST['number'];
        $message="Please select a menu option below: ";
        echo $whatsapp->entertainmentmenu($message,$number);
    }

    if(isset($_POST['testmenu'])){
        $number=$_POST['number'];
        $message="Please select a menu option below: ";
        echo json_encode($whatsapp->questionsmenu($message,$number));
    }

    if(isset($_POST['sendfaqlink'])){
        $number=$_POST['number'];
        echo $whatsapp->sendfaqslink($number);
    }

    if(isset($_POST['sendtipslink'])){
        $number=$_POST['number'];
        echo $whatsapp->sendtipslink($number);
    }

    if(isset($_POST['sendaboutnclexchat'])){
        $number=$_POST['number'];
        echo $whatsapp->sendaboutnclexchat($number);
    }

    if(isset($_POST['sendhelpmenu'])){
        echo "Sending help menu ...".PHP_EOL;
        $number=$_POST['number'];
        echo "Sending help ment to ".$number.PHP_EOL;
        echo $whatsapp->sendhelpmenu($number);
    }

    if(isset($_POST['getnonmultiplechoicequestionanswers'])){
        $wamid=$_POST['wamid'];
        echo $whatsapp->getnonmultiplechoicequestionanswers($wamid);
    }

    if(isset($_POST['getwhatsappmesasgedetails'])){
        $wamid=$_POST['wamid'];
        echo $whatsapp->getwhatsappmessagedetails($wamid);
    }

    if(isset($_POST['sendtemplate'])){
        $number=$_POST['number'];
        $templatename=$_POST['templatename'];
        $category=$_POST['category'];
        $params=isset($_POST['params'])?json_decode(stripcslashes($_POST['params']),true):[];
        echo json_encode($whatsapp->sendtemplate($number,$templatename,$category,$params));
    }
?>