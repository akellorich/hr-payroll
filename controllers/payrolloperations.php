<?php
    require_once("../models/payroll.php");

    $payroll=new payroll();

    if(isset($_POST['saveemploymentterm'])){
        $termid=$_POST['termid'];
        $termname=$_POST['termname'];
        $response=$payroll->saveemploymentterm($termid,$termname);
        echo json_encode($response);
    }

    if(isset($_GET['getemploymentterms'])){
        echo $payroll->getemploymentterms();
    }

    if(isset($_GET['getpaymenttermdetails'])){
        $termid=$_GET['termid'];
        echo $payroll->getemploymenttermdetails($termid);
    }

    if(isset($_POST['deletepaymentterm'])){
        $termid=$_POST['termid'];
        $response=$payroll->deleteemploymentterm($termid);
        echo json_encode($response);
    }

    // Job Groups
    if(isset($_POST['savejobgroup'])){
        $jobgroups=json_decode(stripcslashes($_POST['jobgroups']),true);
        $status=[];
        foreach($jobgroups as $jobgroup){
            $jobgroupid=$jobgroup['jobgroupid'];
            $jobgroupname=$jobgroup['jobgroupname'];
            $response=$payroll->savejobgroup($jobgroupid,$jobgroupname);
            array_push($status,["status"=>$response,"jobgroupname"=>$jobgroupname]);
        }
        echo json_encode($status);
    }

    if(isset($_GET['getjobgroups'])){
        echo $payroll->getjobgroups();
    }

    if(isset($_GET['getjobgroupdetails'])){
        $jobgroupid=$_GET['jobgroupid'];
        echo $payroll-> getjobgroupdetails($jobgroupid);
    }

    if(isset($_POST['deletejobgroup'])){
        $jobgroupid=$_POST['jobgroupid'];
        $response=$payroll->deletejobgroup($jobgroupid);
        echo json_encode($response);
    }

    // Job Notches
    if(isset($_POST['savenotch'])){
        $notches=json_decode(stripcslashes($_POST['notches']),true);
        $status=[];
        foreach($notches as $notch){
            $notchid=$notch['notchid'];
            $notchname=$notch['notchname'];
            $response=$payroll->savejobnotch($notchid,$notchname);
            array_push($status,["status"=>$response,"notchname"=>$notchname]);
        }
        echo json_encode($status);
    }

    if(isset($_GET['getnotches'])){
        echo $payroll->getjobnotches();
    }

    if(isset($_GET['getnotchdetails'])){
        $notchid=$_GET['notchid'];
        echo $payroll-> getjobnotchdetails($notchid);
    }

    if(isset($_POST['deletenotch'])){
        $notchid=$_POST['notchid'];
        $response=$payroll->deletejobnotch($notchid);
        echo json_encode($response);
    }

    // Job Positions
    if(isset($_POST['savejobposition'])){
        $positionid=$_POST['positionid'];
        $positionname=$_POST['positionname'];
        $establishment=$_POST['establishment'];
        $reportsto=$_POST['reportsto'];
        $startjobgroupid=$_POST['startjobgroupid'];
        $startnotchid=$_POST['startnotchid'];
        $endjobgroupid=$_POST['endjobgroupid'];
        $endnotchid=$_POST['endnotchid'];
        $response=$payroll->savejobposition($positionid,$positionname,$establishment,$reportsto,$startjobgroupid,$startnotchid,$endjobgroupid,$endnotchid);
        echo json_encode($response);
    }

    if(isset($_GET['getjobpositions'])){
        echo $payroll->getjobpositions();
    }

    if(isset($_GET['getjobpositiondetails'])){
        $positionid=$_GET['positionid'];
        echo $payroll->getjobpositiondetials($positionid);
    }

    if(isset($_POST['deletejobposition'])){
        $positionid=$_POST['positionid'];
        $response=$payroll->deletejobposition($positionid);
        echo json_encode($response);
    }

    if(isset($_POST['savepayrollitem'])){

        $refno=$payroll->uniqidReal();
        $itemid=$_POST['itemid'];
        $itemname=$_POST['itemname'];
        $shortname=$_POST['shortname'];
        $itemtype=$_POST['itemtype'];
        $statutory=$_POST['statutory'];
        $display=$_POST['display'];
        $showonpayroll=$_POST['showonpayroll'];
        $taxable=$_POST['taxable'];
        $defaultamount=$_POST['defaultamount'];
        $allowablededuction=$_POST['allowablededuction'];
        $allowabledeductionlowerlimit=$_POST['allowabledeductionlowerlimit'];
        $allowabledeductionupperlimit=$_POST['allowabledeductionupperlimit'];
        $allowabledeductionvalue=$_POST['allowabledeductionvalue'];
        $allowabledeductionpercentage=$_POST['allowabledeductionpercentage'];
        $bracketed=$_POST['bracketed'];
        $bracketedongross=$_POST['bracketgross'];
        $bracketitem=$_POST['bracketed']==0?0:$_POST['bracketitem'];
        $bracketispercentage=$_POST['bracketpercentage'];
        $bracketlowerlimit=$_POST['bracketlowerlimit'];
        $bracketupperlimit=$_POST['bracketupperlimit'];
        $employertomatch=$_POST['matchemployer'];
        $employermatchfactor=$_POST['matchfactor'];
        $applyrelief=$_POST['applyrelief'];
        $reliefitem=$_POST['applyrelief']==0?0:$_POST['reliefitem'];
        $isaloan=$_POST['isaloan'];
        $creditorid=$_POST['creditorid'];
        $itemgroupid=$_POST['itemgroupid'];
        $systemlabel=$_POST['systemlabel'];

        $bracketedvalues=json_decode(stripcslashes($_POST['bracketvalues']),true);
        
        //  temp save bracket values
        if($bracketed==1){
            foreach($bracketedvalues as $bracketedvalue){
                $upperbracket=$bracketedvalue['upperbracket'];
                $lowerbracket=$bracketedvalue['lowerbracket'];
                $bracketvalue=$bracketedvalue['bracketvalue'];
                $payroll->savepayrollitemtempbracketvalues($refno,$upperbracket,$lowerbracket,$bracketvalue);
            }
        }

        $response=$payroll->savepayrollitem($refno,$itemid,$itemname,$shortname,$itemtype,$statutory,$display,$showonpayroll,$taxable,$isaloan,$defaultamount,
        $allowablededuction,$allowabledeductionlowerlimit,$allowabledeductionupperlimit,$allowabledeductionvalue,$allowabledeductionpercentage,
        $bracketed,$bracketedongross,$bracketitem,$bracketispercentage,$bracketlowerlimit,$bracketupperlimit,$employertomatch,
        $employermatchfactor,$applyrelief,$reliefitem,$creditorid,$itemgroupid,$systemlabel);

        echo json_encode($response);
    }

    if(isset($_GET['getpayrollitems'])){
        $category=isset($_GET['category'])?$_GET['category']:'<all>';
        echo $payroll-> getpayrollitems($category);
    }

    if(isset($_GET['getpayrollitemdetails'])){
        $itemid=$_GET['itemid'];
        echo  $payroll->getpayrollitemdetails($itemid);
    }

    if(isset($_POST['deletepayrollitem'])){
        $itemid=$_POST['itemid'];
        $response=$payroll->deletepayrollitem($itemid);
        echo json_encode($response);
    }

    if(isset($_POST['savesalarystructure'])){
        $structureid=$_POST['structureid'];
        $jobgroupid=$_POST['jobgroupid'];
        $notchid=$_POST['notchid'];
        $payrollitemid=$_POST['payrollitemid'];
        $annualincrement=$_POST['annualincrement'];
        $minvalue=$_POST['minvalue'];
        $maxvalue=$_POST['maxvalue'];
        $response=$payroll->savesalarystructure($structureid,$jobgroupid,$notchid,$payrollitemid,$annualincrement,$minvalue,$maxvalue);
        echo json_encode($response);
    }

    if(isset($_GET['getsalarystructures'])){
        $jobgroupid=isset($_GET['jobgroupid'])?$_GET['jobgroupid']:0;
        $notchid=isset($_GET['notchid'])?$_GET['notchid']:0;
        echo $payroll->getsalarystructures($jobgroupid,$notchid);
    }

    if(isset($_GET['getsalarystructuredetails'])){
        $structureid=$_GET['structureid'];
        echo $payroll->getsalarystructuredetails($structureid);
    }

    if(isset($_POST['deletesalarystructure'])){
        $structureid=$_POST['structureid'];
        $response=$payroll->deletesalarystructure($structureid);
        echo json_encode($response);
    }

    if(isset($_POST['savejobcategory'])){
        $categoryid=$_POST['categoryid'];
        $categoryname=$_POST['categoryname'];
        $prefix=$_POST['prefix'];
        $currentnumber=$_POST['currentnumber'];
        $response=$payroll->savejobcategory($categoryid,$categoryname,$prefix,$currentnumber);
        echo json_encode($response);
    }

    if(isset($_GET['getjobcategories'])){
        echo $payroll->getjobcategories();
    }

    if(isset($_GET['getjobcategorydetails'])){
        $categoryid=$_GET['categoryid'];
        echo $payroll->getjobcategorydetails($categoryid);
    }

    if(isset($_POST['deletejobcategory'])){
        $categoryid=$_POST['categoryid'];
        $response= $payroll->deletejobcategory($categoryid);
        echo json_encode($response);
    }

    if(isset($_POST['processpayroll'])){
        $month=$_POST['month'];
        $year=$_POST['year'];
        $taxlabel=$_POST['taxlabel'];
        $response=$payroll->processpayroll($month,$year,$taxlabel);
        echo json_encode($response);
    }

    if(isset($_GET['gettaxlabels'])){
        echo $payroll->gettaxlabels();
    }

    if(isset($_GET['getprocessedpayrolls'])){
        echo $payroll->getprocessedpayrolls();
    }

    if(isset($_POST['closepayrollperiod'])){
        $payrollid=$_POST['payrollid'];
        $response=$payroll->closepayrollperiod($payrollid);
        echo json_encode($response);
    }

    if(isset($_GET['getpayrollregisterdetailed'])){
        $payrollmonth=$_GET['month'];
        $payrollyear=$_GET['year'];
        echo $payroll->getpayrollregisterdetailed($payrollmonth,$payrollyear);
    }

    if(isset($_GET['getstatutoryitems'])){
        echo $payroll->getstatutoryitems();
    }

    if(isset($_GET['getpayeremittanceadvise'])){
        $payrollmonth=$_GET['month'];
        $payrollyear=$_GET['year'];
        $itemid=$_GET['itemid'];
        echo $payroll->getpayeremittanceadvise($payrollmonth,$payrollyear,$itemid);
    }

    if(isset($_GET['getnssfremittanceadvise'])){
        $payrollmonth=$_GET['month'];
        $payrollyear=$_GET['year'];
        $payrollitemid=$_GET['itemid'];
        echo $payroll->getnssfremittanceadvise($payrollmonth,$payrollyear,$payrollitemid);
    }

    if(isset($_GET['getnhifremittance'])){
        $payrollmonth=$_GET['month'];
        $payrollyear=$_GET['year'];
        $payrollitemid=$_GET['itemid'];
        echo $payroll->getnhifremittanceadvise($payrollmonth,$payrollyear,$payrollitemid);
    }

    if(isset($_GET['getstatutoryremittanceadvise'])){
        $payrollmonth=$_GET['month'];
        $payrollyear=$_GET['year'];
        $payrollitemid=$_GET['itemid'];
        echo $payroll->getstatutoryremittanceadvise($payrollmonth,$payrollyear,$payrollitemid);
    }

    if(isset($_GET['getpayrollremittanceadvise'])){
        $payrollmonth=$_GET['month'];
        $payrollyear=$_GET['year'];
        $bankid=$_GET['bankid'];
        echo $payroll->getbankremittanceadvises($payrollmonth,$payrollyear,$bankid);
    }

    if(isset($_GET['getpayrollmonthcreditors'])){
        $payrollmonth=$_GET['month'];
        $payrollyear=$_GET['year'];
        echo $payroll->getpayrollmonthcreditors($payrollmonth,$payrollyear);
    }

    if(isset($_GET['getthirdpartyremittanceadvise'])){
        $payrollmonth=$_GET['month'];
        $payrollyear=$_GET['year'];
        $creditorid=$_GET['creditorid'];
        echo $payroll->getthirdpartyremittanceadvise($payrollmonth,$payrollyear,$creditorid);
    }

    if(isset($_GET['getpayrollentarnts'])){
        $month=$_GET['month'];
        $year=$_GET['year'];
        echo $payroll->getpayrollentrants($month,$year);
    }

    if(isset($_GET['getpayrollexits'])){
        $month=$_GET['month'];
        $year=$_GET['year'];
        echo $payroll->getpayrollexits($month,$year);
    }

    if(isset($_GET['getpayrollchangesitems'])){
        $month=$_GET['month'];
        $year=$_GET['year'];
        echo $payroll->getpayrollchangesitems($month,$year);
    }

    if(isset($_GET['getpayrollchangesemployees'])){
        $month=$_GET['month'];
        $year=$_GET['year'];
        echo $payroll->getpayrollchangesemployees($month,$year);
    }

    if(isset($_GET['getpayrollsummary'])){
        $summary=$_GET['summary'];
        $month=$_GET['month'];
        $year=$_GET['year'];
        echo $payroll->getpayrollsummary($summary,$month,$year);
    }

    if(isset($_GET['getp10certificateemployees'])){
        $month=$_GET['month'];
        $year=$_GET['year'];
        echo $payroll->getp10certificateemployees($month,$year);
    }

    if(isset($_GET['getp9deductionsummary'])){
        $year=$_GET['year'];
        echo $payroll->getp9deductionsummary($year);
    }

    if(isset($_POST['savepayrollitemgroup'])){
        $groupid=$_POST['groupid'];
        $groupname=$_POST['groupname'];
        $itemtype=$_POST['itemtype'];
        $response=$payroll->savepayrollitemgroup($groupid,$groupname,$itemtype);
        echo json_encode($response);
    }

    if(isset($_GET['getpayrollitemgroups'])){
        // echo "Processing ...";
        echo $payroll->getpayrollitemgroups();
    }

    if(isset($_GET['getpayrollgroupitem'])){
        $groupid=$_GET['groupid'];
        echo $payroll->getpayrollitemgroupdetails($groupid);
    }

    if(isset($_POST['deletepayrollitemgroup'])){
        $groupid=$_POST['groupid'];
        $response=$payroll->deletepayrollitemgroup($groupid);
        echo json_encode($response);
    }

    if(isset($_GET['getpayrollregistersummary'])){
        $month=$_GET['month'];
        $year=$_GET['year'];
        echo $payroll->getpayrollregistersummary($month,$year);
    }
?>