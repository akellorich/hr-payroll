<?php
    require_once("../models/creditor.php");

    $creditor=new creditor();

    if(isset($_POST['savecreditor'])){
        $creditorid=$_POST['creditorid'];
        $reference=$_POST['reference'];
        $creditorname=$_POST['creditorname'];
        $physicaladdress=$_POST['physicaladdress'];
        $postaladdress=$_POST['postaladdress'];
        $town=$_POST['town'];
        $telephone=$_POST['telephone'];
        $emailaddress=$_POST['emailaddress'];
        $payrollcreditor=$_POST['payrollcreditor'];
        $response=$creditor->savecreditor($creditorid,$reference,$creditorname,$physicaladdress,$postaladdress,$town, $telephone,$emailaddress,$payrollcreditor);
        echo json_encode($response);
    }

    if(isset($_GET['getcreditors'])){
        $payrollcreditors=isset($_GET['payrollcreditor'])?$_GET['payrollcreditor']:1;
        echo $creditor->getcreditors($payrollcreditors);
    }

    if(isset($_GET['getcreditordetails'])){
        $creditorid=$_GET['creditorid'];
        echo $creditor->getcreditordetails($creditorid);
    }

    if(isset($_POST['deletecreditor'])){
        $creditorid=$_POST['creditorid'];
        $response=$creditor->deletecreditor($creditorid);
        echo json_encode($response);
    }

?>