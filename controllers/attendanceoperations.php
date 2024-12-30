<?php
    require_once("../models/attendance.php");
    $attendance=new attendance();

    if(isset($_POST['saveshiftmaster'])){
        $shiftid=$_POST['shiftid'];
        $shiftname=$_POST['shiftname'];
        $shifttype=$_POST['shifttype'];
        $shiftdetails=json_decode(stripcslashes($_POST['shiftdetails']),true);
        $response=$attendance->saveshiftmaster($shiftid,$shiftname,$shifttype);
        if($response['status']=="success"){
            $shiftid=$response['shiftid'];
            foreach($shiftdetails as $shift){
                $shiftdetailid=$shift['shiftdetailsid'];
                $weekday=$shift['weekday'];
                $starttime=$shift['starttime'];
                $endtime=$shift['endtime'];
                $status=$shift['status'];
                $break=$shift['break'];
                $attendance->saveshiftdetails($shiftdetailid,$shiftid,$weekday,$starttime,$endtime,$status,$break);
            }
        }
        echo json_encode($response);
    }

    if(isset($_GET['getshiftmaster'])){
        echo $attendance->getshiftmaster();
    }

    if(isset($_GET['getshiftmasterdetails'])){
        $shiftid=$_GET['shiftid'];
        echo $attendance->getshiftmasterdetails($shiftid);
    }

    if(isset($_GET['getallshiftdetails'])){
        echo $attendance->getshiftdetails();
    }

    if(isset($_GET['getstaffinshift'])){
        $shiftid=$_GET['shiftid'];
        $date=$_GET['date'];
        echo $attendance->getstaffinshift($shiftid, $date);
    }

    if(isset($_POST['savestaffshifts'])){
        $refno=$attendance->uniqeid();
        $shiftid=$_POST['shiftid'];
        $date=$_POST['date'];
        $status=$_POST['status'];
        $overwrite=$_POST['overwrite'];
        $employees=json_decode($_POST['employees'],true);

        // save temporarily
        foreach($employees as $employee){
            $attndance->savetempstaffshift($refno,$employee);
        }

        $response=$attendance->savestaffshift($refno,$shiftid,$date,$status,$overwrite);
        echo json_encode($response);
    }
?>