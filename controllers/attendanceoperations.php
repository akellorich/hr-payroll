<?php
    require_once("../models/attendance.php");
    require_once("../models/leave.php");

    $attendance=new attendance();
    $leave=new leave();

    if(isset($_POST['saveshiftmaster'])){
        $shiftid=$_POST['shiftid'];
        $shiftname=$_POST['shiftname'];
        $shifttype=$_POST['shifttype'];
        $defaultshift=$_POST['defaultshift'];
        $shiftdetails=json_decode(stripcslashes($_POST['shiftdetails']),true);
        $refno=$attendance->uniqidReal();
        // Save temp shift detail
        foreach($shiftdetails as $shift){
            // $shiftdetailid=$shift['shiftdetailsid'];
            $weekday=$shift['weekday'];
            $starts=$shift['starttime'];
            $ends=$shift['endtime'];
            $status=$shift['status'];
            $break=$shift['break'];
            $attendance->savetempshiftdetails($refno,$weekday,$starts,$ends,$status,$break);
        }

        $response=$attendance->saveshiftmaster($refno,$shiftid,$shiftname,$shifttype,$defaultshift);
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

    if(isset($_POST['deleteshift'])){
        $shiftid=$_POST['shiftid'];
        $response=$attendance->deleteshift($shiftid);
        echo json_encode($response);
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
            $attendance->savetempstaffshift($refno,$employee);
        }

        $response=$attendance->savestaffshift($refno,$shiftid,$date,$status,$overwrite);
        echo json_encode($response);
    }

    if(isset($_POST['saveovertimerequisition'])){
        $refno=$attendance->uniqidReal();
        $requisitionid=$_POST['requisitionid'];
        $unitid=$_POST['unitid'];
        $departmentid=$_POST['departmentid'];
        $shiftid=$_POST['shiftid'];
        $startdate=$_POST['startdate'];
        $enddate=$_POST['enddate'];
        $duration=$_POST['duration'];
        $narration=$_POST['narration'];
        $employees=json_decode(stripcslashes($_POST['employees']),true);

        // echo $refno;
        // echo "<br/>";

        foreach($employees as $employee){
            $attendance->savetempovertimeemployees($refno,$employee);
        }

        $response=$attendance->saveovertimerequisition($refno,$requisitionid,$unitid,$departmentid,$shiftid,$startdate,$enddate,$duration,$narration);
        echo json_encode($response);
    }

    if(isset($_GET['getovertimerequisitions'])){
        $unitid=$_GET['unitid'];
        $departmentid=$_GET['departmentid'];
        $shiftid=$_GET['shiftid'];
        $startdate=$_GET['startdate'];
        $enddate=$_GET['enddate'];
        echo $attendance->getovertimerequisitions($unitid,$departmentid,$shiftid,$startdate,$enddate);
    }

    if(isset($_GET['getmastershiftdetails'])){
        $shiftid=$_GET['shiftid'];
        echo $attendance->getmastershiftdetails($shiftid);
    }

    if(isset($_POST['saveattendance'])){
        $refno=$attendance->uniqidReal();
        $attendancedate=$_POST['attendancedate'];
        $overwrite=$_POST['overwrite'];
        $employees=json_decode(stripcslashes($_POST['employees']),true);
        // temp save employee attendance
        foreach($employees as $employee){
            $employeeid=$employee['employeeid'];
            $clockin=$employee['clockin'];
            $clockout=$employee['clockout'];
            $response=$attendance->savetempemployeeattendance($refno,$employeeid,$clockin,$clockout);
        }
        $response=$attendance->saveattendance($refno,$attendancedate,$overwrite);
        echo json_encode($response);
    }

    if(isset($_GET['getattendance'])){
        $status=$_GET['status'];
        $startdate=$_GET['startdate'];
        $enddate=$_GET['enddate'];
        echo $attendance->getattendance($status,$startdate,$enddate);
    }

    if(isset($_GET['getattendanceunits'])){
        $attendanceid=$_GET['attendanceid'];
        echo $attendance->getattendanceunits($attendanceid);
    }

    if(isset($_POST['lockattendancedataimport'])){
        $attendanceid=$_POST['attendanceid'];
        $units=json_decode(stripcslashes($_POST['units']),true);
        $response=[];
        foreach($units as $unitid){
            array_push($response,$attendance->lockattendancedataimport($attendanceid,$unitid));
        }
        echo json_encode(["status"=>"success","message"=>"import attendance data locked successfully","unitresponses"=>$response]);
    }

    if(isset($_GET['getemployeeattendance'])){
        $startdate=$_GET['startdate'];
        $enddate=$_GET['enddate'];
        $unitid=$_GET['unitid'];
        $departmentid=$_GET['departmentid'];
        $sectionid=$_GET['sectionid'];
        echo $attendance->getemployeeattendance($unitid,$departmentid,$sectionid,$startdate,$enddate);
    }

    if(isset($_GET['getattendanceabsentemployees'])){
        $startdate=$_GET['startdate'];
        $enddate=$_GET['enddate'];
        echo $attendance->getattendanceabsentemployees($startdate,$enddate);
    }

    if(isset($_POST['saveemployeeattendancesheet'])){
        $operation=$_POST['operation'];
        $employees=json_decode(stripcslashes($_POST['employees']),true);
        $attendanceid=0;
        $leaveapplicationid=0;
        $results=[];

        if($operation=="markpresent"){
            foreach($employees as $employee){
                $attendancedate=$employee['attendancedate'];
                $clockin=$employee['clockin'];
                $clockout=$employee['clockout'];
                $overtime=$employee['overtime'];
                $losthours=$employee['losthours'];
                $employeeid=$employee['employeeid'];
                // $status=$employee['status'];
                $results[]=$attendance->saveemployeeattendancesheet($attendanceid,$attendancedate,$employeeid,$leaveapplicationid,
                $clockin,$clockout,$overtime,$losthours);
            }
            echo json_encode($results);
        }
    }

    if(isset($_GET['getgenerallosthours'])){
        $shiftid=$_GET['shiftid'];
        $workdate=$_GET['workdate'];
        $clockin=$_GET['clockin'];
        $clockout=$_GET['clockout'];
        echo $attendance->getgenerallosthours($shiftid,$workdate,$clockin,$clockout);
    }

    if(isset($_GET['getgeneralovertime'])){
        $shiftid=$_GET['shiftid'];
        $workdate=$_GET['workdate'];
        $clockout=$_GET['clockout'];
        echo $attendance->getgeneralovertime($shiftid,$workdate,$clockout);
    }

    if(isset($_GET['getgeneralotandlosthours'])){
        $shiftid=$_GET['shiftid'];
        $workdate=$_GET['workdate'];
        $clockin=$_GET['clockin'];
        $clockout=$_GET['clockout'];
        echo $attendance->getgeneralotandlosthours($shiftid,$workdate,$clockin,$clockout);
    }

    if(isset($_GET['getemployeesonleave'])){
        $workdate=$_GET['workdate'];
        echo $attendance->getemployeesonleave($workdate);
    }

    if(isset($_GET['getinvalidclockinhours'])){
        $workdate=$_GET['workdate'];
        echo $attendance->getinvalidclockinhours($workdate);
    }

    if(isset($_GET['getinvalidclockouthours'])){
        $workdate=$_GET['workdate'];
        echo $attendance->getinvalidclockouthours($workdate);
    }

    if(isset($_GET['getinactiveattendanceemployees'])){
        $workdate=$_GET['workdate'];
        echo $attendance->getinactiveattendanceemployees($workdate);
    }   

    if(isset($_GET['getshiftstartandendhalftimes'])){
        $employeeid=$_GET['employeeid'];
        $date=$_GET['date'];
        $shifthalf=$_GET['shifthalf'];
        echo $attendance->getshiftstartandendhalfs($employeeid,$date,$shifthalf);
    }

    if(isset($_POST['applyattendanceleaves'])){
        $leavetypeid=$_POST['leavetypeid'];
        $halfdayapplication=$_POST['halfdayapplication'];
        $shifthalf=$_POST['shifthalf'];
        $startdate=$_POST['startdate'];
        $enddate=$_POST['enddate'];
        $daystaken=$_POST['daystaken'];
        $narration=$_POST['narration'];
        $starttime="00:00";
        $endtime="00:00";
        // $applicationid=0;
        $attachment='';  // No attachement e.g sick off necessary
        // set currently looged-in user as the reliever and supervisor since this application is for a single day or shift
        $relieverid=$leave->userid;
        $supervisorid=$relieverid;
        $employees=json_decode(stripcslashes($_POST['employees']),true);
        $results=[];
        foreach($employees as $employeeid){
            $result=$leave->saveleaveapplication(0,$employeeid,$leavetypeid,$startdate,$enddate,$daystaken,
            $relieverid,$supervisorid,$narration,$attachment,$halfdayapplication,$shifthalf,$starttime,$endtime,1);
            // Auto approve the leave for all the levels
            if($result['status']=="success"){
                $applicationid=$result['applicationid'];
                $approvallevels=json_decode($leave->getleaveapplicationapprovalstatuses($applicationid),true);
                // eho(json_encode($approvallevels));
                // echo "<br/>";
                foreach($approvallevels as $approvallevel){
                    // echo 'Approving application for '.$employeeid.' at level '.$approvallevel['approvallevel'].'<br>';
                    $approvallevelid=$approvallevel['approvalid'];
                    $approvallevel=$approvallevel['approvallevel'];
                    $leave->approveleave($applicationid,$approvallevelid,'approved','Auto approved from attendance application',0,0);
                    // last variable does not require escalation email for the next approval officer
                }
                // add leave to attendancesheet for the employee
            }
            array_push($results,["employeeid"=>$employeeid,"status"=>$result['status'],"message"=>$result['message']]);
        }
        echo json_encode($results);
    }

    if(isset($_GET['getsqlserverattendancedata'])){
        echo $attendance->getsqlserverattendance();
    }
?>