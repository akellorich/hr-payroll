<?php
    require_once("../models/leave.php");
    $leave=new leave();

    if(isset($_POST['saveleaveapprovalflow'])){
        $refno=$leave->uniqidReal();
        $flowid=$_POST['flowid'];
        $flowname=$_POST['flowname'];
        $approvallevels=json_decode(stripcslashes($_POST['approvallevels']),true);
        foreach($approvallevels as $level){
            $approvallevel=$level['approvallevel'];
            $hierarchy=$level['hierarchy'];
            $escalation=$level['esacalation'];
            $colourcode=$level['colourcode'];
            $leave->savetemplleaveapprovallevel($refno,$approvallevel,$hierarchy,$escalation,$colourcode);
        }
        $response=$leave->saveapprovalflow($flowid,$refno,$flowname);
        echo json_encode($response);
    }

    if(isset($_GET['getleaveapprovalflows'])){
        echo $leave-> getapprovalflows();
    }

    if(isset($_GET['getleaveapprovalflowdetails'])){
        $flowid=$_GET['flowid'];
        echo $leave->getapprovalflowdetails($flowid);
    }

    if(isset($_POST['deleteleveapprovalflow'])){
        $flowid=$_POST['flowid'];
        $response= $leave->deleteapprovalflow($flowid);
        echo json_encode($response);
    }

    if(isset($_GET['getleaveapprovallevels'])){
        $flowid=$_GET['flowid'];
        echo $leave->getleaveapprovallevels($flowid);
    }

    if(isset($_POST['saveleavetype'])){
        $leaveid=$_POST['leaveid'];
        $refno=$leave->uniqidReal();
        $leavename=$_POST['leavename'];
        $allocationdays=$_POST['allocationdays'];
        $probationperiod=$_POST['probationperiod'];
        $halfdayapplication=$_POST['halfdayapplication'];
        $canbesplit=$_POST['canbesplit'];
        $skipholidays=$_POST['skipholidays'];
        $applywithoutallocation=$_POST['applywithoutallocation'];
        $requiresattachment=$_POST['requiresattachment'];
        $approvalflow=$_POST['approvalflow'];
        $allowancepayable=$_POST['allowancepayable'];
        $allowancepayrollitemid=$_POST['allowancepayrollitemid'];
        $allowableallocations=json_decode(stripcslashes($_POST['allocationsallowable']),true);

        // save temp allowable allocation days e.g. sick leave 30 days full pay  with additional 15 days half pay if applicable
        foreach($allowableallocations as $allocationitem){
            $allocation=$allocationitem['allocation'];
            $percentagepayable=$allocationitem['percentagepayable'];
            $leave->savetempleaveallowableallocation($refno,$allocation,$percentagepayable);
        }

        $response=$leave->saveleavetype($leaveid,$refno,$leavename,$allocationdays, $probationperiod,$halfdayapplication,
        $skipholidays,$applywithoutallocation,$requiresattachment,$approvalflow,$allowancepayable, $allowancepayrollitemid,$canbesplit);
        echo json_encode($response);
    }

    if(isset($_GET['getleavetypes'])){
        echo $leave->getleavetypes();
    }

    if(isset($_GET['getleavetypedetails'])){
        $leaveid=$_GET['leaveid'];
        echo $leave->getleavetypedetails($leaveid);
    }

    if(isset($_POST['deleteleavetype'])){
        $leaveid=$_POST['leaveid'];
        $response=$leave->deleteleavetype($leaveid);
        echo json_encode($response);
    }

    if(isset($_GET['getweekendsbetweendates'])){
        $startdate=$_GET['startdate'];
        $enddate=$_GET['enddate'];
        echo $leave->getweekendsbetweendates($startdate,$enddate);
    }

    if(isset($_POST['saveleaveapplication'])){
        $applicationid=$_POST['applicationid'];
        $employeeid=$_POST['employeeid'];
        $leavetypeid=$_POST['leavetypeid'];
        $startdate=$_POST['startdate'];
        $enddate=$_POST['enddate'];
        $daystaken=$_POST['daystaken'];
        $relieverid=$_POST['relieverid'];
        $supervisorid=$_POST['supervisorid'];
        $narration=$_POST['narration'];
        $halfdayapplication=$_POST['halfdayapplication'];
        $shifthalf=$_POST['shifthalf'];
        $starttime=$_POST['starttime'];
        $endtime=$_POST['endtime'];
        $leavename=$leave->getleavename($leavetypeid);
        // check if upload file is sent and upload
        if(isset($_FILES['attachment']['tmp_name'])){
            $tempname=$_FILES['attachment']['tmp_name'];
            $attachment="../employee_uploads/leaveapplications/employeeid_".$employeeid."_".$leavename."_".$startdate.'_'.$enddate."_".$leave->uniqidReal(20).'_'.str_replace(' ','_',$_FILES['attachment']['name']);
            // rename logo
            move_uploaded_file($tempname,$attachment);
        }else{
            $attachment='';
        }

        $applicationresponse=$leave->saveleaveapplication($applicationid,$employeeid,$leavetypeid,$startdate,$enddate,$daystaken,
        $relieverid,$supervisorid,$narration,$attachment,$halfdayapplication,$shifthalf,$starttime,$endtime);
        // check if response is success and mail the employee for notification and supervisor for approval
        // echo json_encode($applicationresponse).PHP_EOL;
        if($applicationresponse['status']=="success"){
            $applicationid=$applicationresponse['applicationid'];
            $response=json_decode($leave->getleaveapplicationapprovallevel($applicationid),true);
            // echo json_encode($response);
            $approvallevel=$response[0]['approvallevel'];
            $approvaluser=explode(",",$response[0]['approvaluser']);
            $approvername=$approvaluser[0];
            $approvalusermobile=$approvaluser[1];
            $approveremail=$approvaluser[2];

            // also open template and email employee
            $leave->employeeleaveapplicationnotification($applicationid);
            
            // open template and email the approval user
            $leave->approvaluseremailapprovalrequest($applicationid,$approvername,$approvallevel,$approveremail);
        }
        echo json_encode($applicationresponse);
    }

    if(isset($_GET['getleaveapplications'])){
        $employeeid=$_GET['employeeid'];
        $leavetypeid=isset($_GET['leavetypeid'])?$_GET['leavetypeid']:0;
        echo $leave->getleaveapplications($employeeid,$leavetypeid);
    }

    if(isset($_GET['getleaveapplicationdetails'])){
        $applicationid=$_GET['applicationid'];
        echo $leave->getleaveapplicationdetails($applicationid);
    }

    if(isset($_POST['deleteleaveapplication'])){
        $applicationid=$_POST['applicationid'];
        $response=$leave->deleteleaveapplication($applicationid);
        echo json_encode($response);
    }

    if(isset($_GET['getleaveapplicationapprovalstatuses'])){
        $applicationid=$_GET['applicationid'];
        echo $leave->getleaveapplicationapprovalstatuses($applicationid);
    }

    if (isset($_POST["approveleaveapplication"])) {
        $applicationid=$_POST['applicationid'];
        $approvallevelid=$_POST['approvallevelid'];
        $approvalstatus = htmlspecialchars(strip_tags($_POST["status"]));
        $narration = htmlspecialchars(strip_tags($_POST["narration"]));
        $response=$leave->approveleave($applicationid,$approvallevelid,$approvalstatus,$narration);
        echo json_encode($response);
    }

    if(isset($_GET['getleaveapplicationtimeline'])){
        $applicationid=$_GET['applicationid'];
        echo $leave->getleaveapplicationtimeline($applicationid);
    }

    if(isset($_GET['getleaveapplicationstatus'])){
        $applicationid=$_GET['applicationid'];
        echo $leave->getleaveapplicationstatus($applicationid);
    }

?>