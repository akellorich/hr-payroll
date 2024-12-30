<?php
    require_once("../models/employee.php");
    $employee=new employee();

    if(isset($_POST['saveemployee'])){

        $employeeid=$_POST['employeeid'];
        $staffno=$_POST['staffno'];
        $generatestaffno=$_POST['generatestaffno'];
        $firstname=$_POST['firstname'];
        $middlename=$_POST['middlename'];
        $lastname=$_POST['lastname'];
        $termid=$_POST['termid'];
        $categoryid=$_POST['categoryid'];
        $departmentid=$_POST['departmentid'];
        $religionid=$_POST['religionid'];
        $salutationid=$_POST['salutationid'];
        $iddocumentid=$_POST['iddocumentid'];
        $iddocreferenceno=$_POST['iddocreferenceno'];
        $iddocexpirydate=$_POST['iddocexpirydate'];
        $dateofbirth=$_POST['dateofbirth'];
        $gender=$_POST['gender'];
        $pinno=$_POST['pinno'];
        $nssfno=$_POST['nssfno'];
        $nhifno=$_POST['nhifno'];
        $disabled=$_POST['disabled'];
        $disabilitytype=$_POST['disabilitytype'];
        $disabilitydescription=$_POST['disabilitydescription'];
        $disabilitycertificateno=$_POST['disabilitycertificateno'];
        $onpayroll=$_POST['onpayroll'];
        $fixedpaye=$_POST['fixedpaye'];
        $status=$_POST['status'];
        $jobgroupid=$_POST['jobgroupid'];
        $notchid=$_POST['notchid'];
        $bankbranchid=$_POST['bankbranchid'];
        $accountnumber=$_POST['accountnumber'];
        $employmentdate=$_POST['employmentdate'];
        $separationdate=$_POST['separationdate'];
        $separationreason=$_POST['separationreason'];
        $physicaladdress=$_POST['physicaladdress'];
        $postaladdress=$_POST['postaladdress'];
        $town=$_POST['town'];
        $postalcode=$_POST['postalcode'];
        $mobile=$_POST['mobile'];
        $emailaddress=$_POST['emailaddress'];
        $alternativemobile=$_POST['alternativemobile'];
        $alternativeemailaddress=$_POST['alternativeemailaddress'];
        $positionid=$_POST['positionid'];

        if($separationdate==""){
            $separationdate="31-Dec-2100";
        }

        if($disabilitytype==""){
            $disabilitytype="none";
        }

        $response=$employee-> saveemployee($employeeid,$staffno,$firstname,$middlename,$lastname,$termid,$categoryid,$departmentid,
            $religionid,$salutationid,$iddocumentid,$iddocreferenceno,$iddocexpirydate,$dateofbirth,$gender,$pinno,$nssfno,
            $nhifno,$disabled,$disabilitytype,$disabilitydescription,$onpayroll,$fixedpaye,$status,$positionid,$jobgroupid,$notchid,
            $bankbranchid,$accountnumber,$employmentdate,$separationdate,$separationreason,$physicaladdress,$postaladdress,$town,
            $postalcode,$mobile,$emailaddress,$alternativemobile,$alternativeemailaddress,$generatestaffno,$disabilitycertificateno);

        echo json_encode($response);
    }

    if(isset($_GET['filteremployees'])){
        $staffno=$_GET['staffno'];
        $staffname=$_GET['staffname'];
        $regdocno=$_GET['regdocno'];
        $pinno=$_GET['pinno'];
        $nssfno=$_GET['nssfno'];
        $nhifno=$_GET['nhifno'];
        $status=$_GET['status'];
        $gender=$_GET['gender'];
        $disability=$_GET['disability'];
        $onpayroll=$_GET['onpayroll'];
        $category=$_GET['category'];
        $terms=$_GET['terms'];
        $position=$_GET['position'];
        $jobgroup=$_GET['jobgroup'];
        $notch=$_GET['notch'];
        $salutation=$_GET['salutation'];
        $religion=$_GET['religion'];
        $registrationdocument=$_GET['registrationdocument'];
        echo $employee->filteremployees($staffno,$staffname,$regdocno,$pinno,$nssfno,$nhifno,$status,$gender,$disability,$onpayroll,
        $category,$terms,$position,$jobgroup,$notch,$salutation,$religion,$registrationdocument);
    }

    if(isset($_GET['getemployeedetails'])){
        $employeeid=$_GET['employeeid'];
        echo $employee->getemployeedetails($employeeid);
    }

    if(isset($_POST['saveemployeepayrollitem'])){
        $itemid=$_POST['itemid'];
        $employeeid=$_POST['employeeid'];
        $payrollitemid=$_POST['payrollitemid'];
        $amount=$_POST['amount'];
        $targetamount=$_POST['targetamount'];
        $periodic=$_POST['periodic'];
        $startdate=$_POST['startdate'];
        $duration=$_POST['duration'];
        $applyrelief=$_POST['applyrelief'];

        // check if a file is being uploaded, upload and rename
        if(isset($_FILES['attachment']['tmp_name'])){
            $tempname=$_FILES['attachment']['tmp_name'];
            $attachment="../employee_uploads/payrollattachment_".$payrollitemid."_".$employeeid."_".$institution->uniqidReal(30).'_'.str_replace(' ','_',$_FILES['attachment']['name']);
             // rename logo
            move_uploaded_file($tempname,$logo);
        }else{
            $attachment='';
        }

        $response=$employee->saveemployeepayrollitem($itemid,$employeeid,$payrollitemid,$amount,$targetamount,$periodic,$startdate,$duration,$applyrelief,$attachment);
        echo json_encode($response);
    }

    if(isset($_GET['getemployeepayrollitems'])){
        $employeeid=$_GET['employeeid'];
        $current=isset($_GET['current'])?$_GET['current']:1;
        echo $employee->getemployeepayrollitems($employeeid,$current);
    }

    if(isset($_GET['getemployeepayrollitemdetails'])){
        $itemid=$_GET['itemid'];
        echo $employee->getemployeepayrollitemdetails($itemid);
    }

    if(isset($_POST['deleteemployeepayrollitem'])){
        $itemid=$_POST['itemid'];
        $response=$employee->deleteemployeepayrollitem( $itemid);
        echo json_encode($response);
    }

    if(isset($_GET['getemployeestatutorypayrollitems'])){
        $employeeid=$_GET['employeeid'];
        echo $employee->getemployeestatutoryparollitems($employeeid);
    }

    if(isset($_POST['savegroupedemployeepayrollitems'])){
        $payload=json_decode(stripcslashes($_POST['payload']),true); 
        $overwrite=isset($_POST['overwrite'])?$_POST['overwrite']:0;
        $itemid=0;
        $response=[];
        foreach($payload as $payrollitem){
            $employeeid=$payrollitem["employeeid"];
            $payrollitemid=$payrollitem['payrollitemid'];
            $amount=$payrollitem['amount'];
            $startdate=$payrollitem['startdate'];
            $duration=$payrollitem['duration'];
            $applyrelief=$payrollitem['applyrelief'];
            $targetamount=$payrollitem['targetamount'];
            $periodic=$payrollitem['periodic'];
            $attachment="";
            $result=$employee->saveemployeepayrollitem($itemid,$employeeid,$payrollitemid,$amount,$targetamount,$periodic,$startdate,$duration,$applyrelief,$attachment,$overwrite);
            // add extra collumns for payrollitemid and employeeid
            $result["payrollitemid"]=$payrollitemid;
            $result["employeeid"]=$employeeid;
            array_push($response,$result);
        }
        echo json_encode($response);
    }

    if(isset($_GET['getemployeegradepayrollitems'])){
        $employeeid=$_GET['employeeid'];
        echo $employee->getemployeegradepayrollitems($employeeid);
    }

    if(isset($_GET['getstafffrompayrollno'])){
        // echo "Processing".PHP_EOL;
        $staffno=$_GET['staffno'];
        echo $employee->getemployeebystaffno($staffno);
    }

    if(isset($_POST['saveemployeedependant'])){

        $dependantid=$_POST['dependantid'];
        $employeeid=$_POST['employeeid'];
        $dependantname=$_POST['dependantname'];
        $relationshipid=$_POST['relationshipid'];
        $iddoc=$_POST['iddoc'];
        $iddocno=$_POST['iddocno'];
        $dob=$_POST['dob'];
        $gender=$_POST['gender'];
        $employeename=$employee->getemployeename($employeeid);

        // check if image is uploaded
        if(isset($_FILES['passportphoto']['tmp_name'])){
            $tempname=$_FILES['passportphoto']['tmp_name'];
            $passportphoto="../employee_uploads/dependants/dependant_".$employeename."_".$employeeid."_".$dependantname."_".$employee->uniqidReal(20).'_'.str_replace(' ','_',$_FILES['passportphoto']['name']);
            // rename logo
            $passportphoto=str_replace(" ","_",$passportphoto);
            move_uploaded_file($tempname,$passportphoto);
        }else{
            $passportphoto='';
        }

        $response=$employee->saveemployeedependant($dependantid,$employeeid,$dependantname,$relationshipid,$iddoc,$iddocno,$dob,$gender,$passportphoto);
        echo json_encode($response);
    }

    if(isset($_GET['getemployeedependants'])){
        $employeeid=$_GET['employeeid'];
        echo $employee-> getemployeedependants($employeeid);
    }

    if(isset($_GET['getemployeedependantdetails'])){
        $dependantid=$_GET['dependantid'];
        echo $employee->getemployeedependantdetails($dependantid);
    }

    if(isset($_POST['deleteemployeedependant'])){
        $dependantid=$_POST['dependantid'];
        $response=$employee->deleteemployeedependant($dependantid);
        echo json_encode($response);
    }

    if(isset($_GET['getemployeedepartmentcolleagues'])){
        $employeeid=$_GET['employeeid'];
        echo $employee->getemployeedepartmentcolleagues($employeeid);
    }

    if(isset($_GET['getemployeesupervisors'])){
        $employeeid=$_GET['employeeid'];
        echo $employee->getemployeesupervisors($employeeid);
    }

    if(isset($_GET['getemployeeleavetypedetails'])){
        $employeeid=$_GET['employeeid'];
        $leavetypeid=$_GET['leaveid'];
        echo $employee->getemployeeleavetypedetails($employeeid,$leavetypeid);
    }

    if(isset($_POST['saveemployeebeneficiary'])){
        $beneficiaryid=$_POST['beneficiaryid'];
        $employeeid=$_POST['employeeid'];
        $fullname=$_POST['fullname'];
        $idnumber=$_POST['idnumber'];
        $mobilenumber=$_POST['mobilenumber'];
        $emailaddress=$_POST['emailaddress'];
        $percentage=$_POST['percentage'];
        $relationshipid=$_POST['relationshipid'];
        $response=$employee->saveemployeebeneficiary($beneficiaryid,$employeeid,$fullname,$idnumber,$mobilenumber,$emailaddress,$percentage,$relationshipid);
        echo json_encode($response);
    }

    if(isset($_GET['getemployeebeneficiaries'])){
        $employeeid=$_GET['employeeid'];
        echo $employee->getemployeebeneficiaries($employeeid);
    }

    if(isset($_GET['getemployeebeneficiarydetails'])){
        $beneficiaryid=$_GET['beneficiaryid'];
        echo $employee->getemployeebeneficiarydetails($beneficiaryid);
    }

    if(isset($_GET['getemployeebeneficiarypercentage'])){
        $employeeid=$_GET['employeeid'];
        $beneficiaryid=isset($_GET['beneficiaryid'])?$_GET['beneficiaryid']:0;
        echo $employee->getemployeebeneficiariespercentage($employeeid,$beneficiaryid);
    }

    if(isset($_POST['deleteemployeebeneficiary'])){
        $beneficiaryid=$_POST['beneficiaryid'];
        $response=$employee->deleteemployeebeneficiary($beneficiaryid);
        echo json_encode($response);
    }

    if(isset($_POST['saveemployeeinternalexperience'])){
        $id=$_POST['id'];
        $departmentid=$_POST['departmentid'];
        $positionid=$_POST['positionid'];
        $startdate=$_POST['startdate'];
        $enddate=$_POST['enddate'];
        $currentlyhere=$_POST['currentlyhere'];
        $duties=$_POST['duties'];
        $employeeid=$_POST['employeeid'];
        $response=$employee->saveinternalexperience($id,$employeeid,$departmentid,$positionid,$startdate,$enddate,$currentlyhere,$duties);
        echo json_encode($response);
    }

    if(isset($_GET['getemployeeinternalexperience'])){
        $employeeid=$_GET['employeeid'];
        echo $employee->getinternalexperiences($employeeid);
    }

    if(isset($_GET['getinternalexperiencedetails'])){
        $id=$_GET['id'];
        echo $employee->getinternalexperiencedetails($id);
    }

    if(isset($_POST['deleteinternalexperience'])){
        $id=$_POST['id'];
        $response=$employee->deleteinternalexperience($id);
        echo json_encode($response);
    }

    if(isset($_POST['saveexternalexperience'])){
        $id=$_POST['id'];
        $employeeid=$_POST['employeeid'];
        $organization=$_POST['organization'];
        $jobposition=$_POST['jobposition'];
        $startdate=$_POST['startdate'];
        $enddate=$_POST['enddate'];
        $duties=$_POST['duties'];
        $response=$employee-> saveexternalexperience($id,$employeeid,$organization,$jobposition,$startdate,$enddate,$duties);
        echo json_encode($response);
    }

    if(isset($_GET['getexternalexperiences'])){
        $employeeid=$_GET['employeeid'];
        echo $employee-> getexternalexperience($employeeid);
    }

    if(isset($_GET['getexternalexperiencedetails'])){
        $id=$_GET['id'];
        echo $employee->getexternalexperiencedetails($id);
    }

    if(isset($_POST['deleteexternalexperience'])){
        $id=$_POST['id'];
        $response=$employee-> deleteexternalexperience($id);
        echo json_encode($response);
    }

    if(isset($_POST['saveemployeetraining'])){

        $trainingid=$_POST['trainingid'];
        $employeeid=$_POST['employeeid'];
        $coursecategory=$_POST['coursecategory'];
        $levelid=$_POST['levelid'];
        $institutionname=$_POST['institutionname'];
        $coursename=$_POST['coursename'];
        $coursemajor=$_POST['coursemajor'];
        $gradeattained=$_POST['gradeattained'];
        $startdate=$_POST['startdate'];
        $enddate=$_POST['enddate'];
        $currentltattending=$_POST['currentlyattending'];
        $certificateexpires=$_POST['certificateexpires'];
        $certificateexpirydate=$certificateexpires=="0"?'01-Jan-2100':$_POST['certificateexpirydate'];
        $certificatenumber=$_POST['certificatenumber'];

        $employeename=$employee->getemployeename($employeeid);

        // check if attachment is uploaded
        if(isset($_FILES['attachment']['tmp_name'])){
            $tempname=$_FILES['attachment']['tmp_name'];
            $attachment="../employee_uploads/trainings/".$employeename."_".$employeeid."_".$employee->uniqidReal(20).'_'.str_replace(' ','_',$_FILES['attachment']['name']);
            // rename attachment 
            $attachment=str_replace(' ', '_', $attachment);
            move_uploaded_file($tempname,$attachment);
        }else{
            $attachment='';
        }

        // replace spaces with underscores in the file name
        $response=$employee->savetraining($trainingid,$employeeid,$coursecategory,$levelid,$institutionname,$coursename,
        $coursemajor,$gradeattained,$startdate,$enddate,$currentltattending,$certificateexpires,$certificateexpirydate,
        $certificatenumber,$attachment);
        echo json_encode($response);

    }

    if(isset($_GET['getemployeetrainings'])){
        $employeeid=$_GET['employeeid'];
        echo $employee->gettrainings($employeeid);
    }

    if(isset($_GET['gettrainingdetails'])){
        $trainingid=$_GET['trainingid'];
        echo $employee->gettrainingdetails($trainingid);
    }

    if(isset($_POST['deletetraining'])){
        $trainingid=$_POST['trainingid'];
        $response=$employee->deletetraining($trainingid);
        echo json_encode($response);
    }

    if(isset($_GET['getdisciplinarycategories'])){
        echo $employee->disciplinarycategories();
    }

    if(isset($_GET['getdisciplinaryactions'])){
        echo $employee->getdisciplinaryactions();
    }

    if(isset($_GET['getdisciplinarytypes'])){
        echo $employee->getdisciplinarytypes();
    }

    if(isset($_POST['savedisciplinarycase'])){
        $incidentid=$_POST['incidentid'];
        $employeeid=$_POST['employeeid'];
        $typeid=$_POST['typeid'];
        $categoryid=$_POST['categoryid'];
        $incidentdescription=$_POST['incidentdescription'];
        $incidentdate=$_POST['incidentdate'];
        $actionid=$_POST['actionid'];
        $actiondate=$_POST['actiondate'];
        $employeename=$employee->getemployeename($employeeid);

        // check if attachment is uploaded
        if(isset($_FILES['attachment']['tmp_name'])){
            $tempname=$_FILES['attachment']['tmp_name'];
            $attachment="../employee_uploads/disciplinary/".$employeename."_".$employeeid."_".$employee->uniqidReal(20).'_'.str_replace(' ','_',$_FILES['attachment']['name']);
            // rename attachment 
            $attachment=str_replace(' ', '_', $attachment);
            move_uploaded_file($tempname,$attachment);
        }else{
            $attachment='';
        }

        // replace spaces with underscores in the file name
       
        $response=$employee->saveedisciplinarycaseincident($incidentid,$employeeid,$typeid,$categoryid,$actionid,$incidentdescription,$attachment,
        $incidentdate,$actiondate);
        echo json_encode($response);
    }

    if(isset($_GET['getemployeedisciplinarycases'])){
        $employeeid=$_GET['employeeid'];
        echo $employee->getdisciplinecases($employeeid);
    }

    if(isset($_GET['getdisciplinarycasedetails'])){
        $incidentid=$_GET['incidentid'];
        echo $employee->getdisciplinecasedetails($incidentid);
    }

    if(isset($_POST['deletedisciplinecase'])){
        $incidentid=$_POST['incidentid'];
        $response=$employee->deletedisciplinecase($incidentid);
        echo json_encode($response);
    }

    if(isset($_POST['saveemployeeattachment'])){
        $id=$_POST['id'];
        $employeeid=$_POST['employeeid'];
        $documentid=$_POST['documentid'];
        $documentexpires=$_POST['documentexpires'];
        $expirydate=$_POST['expirydate'];
        $narration=$_POST['narration'];
        $override=$_POST['override'];
        $employeename=$employee->getemployeename($employeeid);
        
        if($documentexpires==0){
            $expirydate="01-Jan-1970";
        }

        // check if attachment was uploaded
        if(isset($_FILES['attachment']['tmp_name'])){
            $tempname=$_FILES['attachment']['tmp_name'];
            $attachment="../employee_uploads/document_attachments/".$employeename."_".$employeeid."_".$employee->uniqidReal(20).'_'.str_replace(' ','_',$_FILES['attachment']['name']);
            // rename attachment
            $attachment=str_replace(" ","_",$attachment);
            move_uploaded_file($tempname,$attachment);
        }else{
            $attachment='';
        }

        $response=$employee->saveemployeeattachment($id,$employeeid,$documentid,$documentexpires,$expirydate,$attachment,$narration,$override);
        echo json_encode($response);
    }

    if(isset($_GET['getemployeedocumentattachments'])){
        $employeeid=$_GET['employeeid'];
        echo $employee->getemployeeattachments($employeeid);
    }

    if(isset($_GET['getemployeedocumentdetails'])){
        $id=$_GET['id'];
        echo $employee->getemployeeattachmentdetails($id);
    }

    if(isset($_POST['deleteemployeedoucmentattachment'])){
        $id=$_POST['id'];
        $response=$employee->deleteemployeeattachment($id);
        echo json_encode($response);
    }

    if(isset($_GET['getemployeeattachabledocuments'])){
        echo $employee->getemployeeattachabledocuments();
    }

    if(isset($_GET['getemployeeleaveapplications'])){
        $leavetypeid=isset($_GET['leavetypeid'])?$_GET['leavetypeid']:0;
        echo $employee-> getemployeesleaveapplications($leavetypeid);
    }

    if(isset($_POST['registeremployeeasuser'])){
        $staffno=$_POST['staffno'];
        $password=$_POST['password'];
        $email=$_POST['email'];
        $mobile=$_POST['mobile'];
        $salt=$employee->uniqidReal(30);
        $userpassword=hash('SHA256',$password.$salt);
        $response=$employee->registeremployeeasuser($staffno,$mobile,$email,$salt,$userpassword);
        echo json_encode($response);
    }

    if(isset($_POST['resetemployeeportalpassword'])){
        $staffno=$_POST['staffno'];
        $response=$employee->resetemployeeportalpassword($staffno);
        echo json_encode($response);
    }

    if(isset($_GET['getemployeepayslips'])){
        $employeeid=isset($_GET['employeeid'])?$_GET['employeeid']:$_SESSION['employeeid'];
        $startmonth=$_GET['startmonth'];
        $startyear=$_GET['startyear'];
        $endmonth=$_GET['endmonth'];
        $endyear=$_GET['endyear'];
        
        echo $employee->getemployeepayslips($employeeid,$startmonth,$startyear,$endmonth,$endyear);
    }

    if(isset($_GET['getemployeedashbaordsummary'])){
        $employeeid=isset($_GET['employeeid'])?$_GET['employeeid']:$_SESSION['employeeid'];
        echo $employee->getemployeedashboardsummary($employeeid);
    }

    if(isset($_GET['getallemployees'])){
        echo $employee->getallemployees();
    }

    if(isset($_GET['getdepartmentactiveemployees'])){
        $departmentid=$_GET['departmentid'];
        echo $employee->getdepartmentactiveemployees($departmentid);
    }
?>