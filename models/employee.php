
<?php
    require_once("db.php");
    require_once("mail.php");
    require_once("user.php");

    $mail=new mail();
    $user=new user();

    class employee extends db{
        function checkemployee($employeeid,$checkfield,$iddocument,$checkvalue){
            $sql="CALL `sp_checkemployeedetails`({$employeeid},'{$checkfield}',{$iddocument},'{$checkvalue}')";
            // echo $sql.PHP_EOL;
            return $this->getData($sql)->rowCount();
        }

        function saveemployee($employeeid,$staffno,$firstname,$middlename,$lastname,$termid,$categoryid,$departmentid,
            $religionid,$salutationid,$iddocumentid,$iddocreferenceno,$iddocexpirydate,$dateofbirth,$gender,$pinno,$nssfno,
            $nhifno,$disabled,$disabilitytype,$disabilitydescription,$onpayroll,$fixedpaye, $employmentstatus,$positionid,$jobgroupid,$notchid,
            $bankbranchid,$accountnumber,$employmentdate, $separationdate,$separationreason,$physicaladdress,$postaladdress,$town,
            $postalcode,$mobile,$emailaddress,$alternativemobile,$alternativeemailaddress,$generatestaffno,$disabilitycertificateno){
            if($this->checkemployee($employeeid,'id document',$iddocumentid,$iddocreferenceno)){
                return ["status"=>"exists","message"=>"id doc no exists"];
            }else if($generatestaffno==0 && $this->checkemployee($employeeid,'staff no',$iddocumentid,$staffno)){
                return ["status"=>"exists","message"=>"staff no exists"];
            }else if($this->checkemployee($employeeid,'pin no',$iddocumentid,$pinno)){
                return ["status"=>"exists","message"=>"pin no exists"];
            }else if($this->checkemployee($employeeid,'nssf no',$iddocumentid,$nssfno)){
                return ["status"=>"exists","message"=>"nssf no exists"];
            }else if($this->checkemployee($employeeid,'nhif no',$iddocumentid,$nhifno)){
                return ["status"=>"exists","message"=>"nhif no exists"];
            }else if($this->checkemployee($employeeid,'mobile',$iddocumentid,$mobile)){
                return ["status"=>"exists","message"=>"mobile no exists"];
            }else if($this->checkemployee($employeeid,'email',$iddocumentid,$emailaddress)){
                return ["status"=>"exists","message"=>"email address exists"];
            }else if($disabled==1 && $this->checkemployee($employeeid,'disabilitycertificate',$iddocumentid,$disabilitycertificateno)){
                return ["status"=>"exists","message"=>"disability certificate exists"];
            }else{
                // convert dates to mysql friendly format
                $employmentdate=$this->mySQLDate($employmentdate);
                $separationdate=$this->mySQLDate($separationdate);
                $dateofbirth=$this->mySQLDate($dateofbirth);

                $sql="CALL `sp_saveemployee`({$employeeid},'{$staffno}','{$firstname}','{$middlename}','{$lastname}',{$termid},{$categoryid},{$departmentid},
                {$religionid},{$salutationid},{$iddocumentid},'{$iddocreferenceno}','{$iddocexpirydate}','{$dateofbirth}','{$gender}','{$pinno}','{$nssfno}',
               '{$nhifno}',{$disabled},'{$disabilitytype}','{$disabilitydescription}',{$onpayroll},{$fixedpaye},'{$employmentstatus}',{$positionid},{$jobgroupid},{$notchid},
                {$bankbranchid},'{$accountnumber}','{$employmentdate}','{$separationdate}','{$separationreason}','{$physicaladdress}','{$postaladdress}','{$town}',
                '{$postalcode}','{$mobile}','{$emailaddress}','{$alternativemobile}','{$alternativeemailaddress}',{$generatestaffno},'{$disabilitycertificateno}',{$this->userid},'{$this->platform}')";

                // mysql will return multiple recordset during editing storing data in current and original values variables 
                // that are retuned as resultset internally

                $rst=$this->getData($sql);
                do{
                    $rowset = $rst->fetch(); 
                    if(array_key_exists("staffno", $rowset)){
                        return ["status"=>"success","message"=>"success","staffno"=>$rowset['staffno']];
                    }
                } while ($rst->nextRowset());
            }
        }

        function getemployeedetails($employeeid){
            $sql="CALL `sp_getemployeedetails`({$employeeid})";
            return $this->getJSON($sql);
        }

        function filteremployees($staffno,$staffname,$regdocno,$pinno,$nssfno,$nhifno,$employmentstatus,$gender,$disability,$onpayroll,
            $category,$terms,$employeeposition,$jobgroup,$notch,$salutation,$religion,$registrationdocument){

            $sql="CALL `sp_filteremployees`('{$staffno}','{$staffname}','{$regdocno}','{$pinno}','{$nssfno}','{$nhifno}','{$employmentstatus}','{$gender}','{$disability}','{$onpayroll}',
            {$category},{$terms},{$employeeposition},{$jobgroup},{$notch},{$salutation},{$religion},{$registrationdocument})";

            return $this->getJSON($sql);
        }

        function checkemployeepayrollitem($itemid,$employeeid,$payrollitemid){
            $sql="CALL `sp_checkemployeechpayrollitem`({$itemid},{$employeeid},{$payrollitemid})";
            return $this->getData($sql)->rowCount();
        }

        function saveemployeepayrollitem($itemid,$employeeid,$payrollitemid,$amount,$targetamount,$periodic,$startdate,$duration,$applyrelief,$attachment,$overwrite=0){
            if($this->checkemployeepayrollitem($itemid,$employeeid,$payrollitemid) && $overwrite==0){
                return ["status"=>"exists","message"=>"employee payroll item exists"];
            }else{
                $startdate=$this->mySQLDate($startdate);
                $sql="CALL `sp_saveemployeepayrollitem`({$itemid},{$employeeid},{$payrollitemid},{$amount},{$targetamount},
                {$periodic},'{$startdate}',{$duration},{$applyrelief},'{$attachment}',{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"success"];
            }
        }

        function getemployeepayrollitems($employeeid,$current){
            $sql="CALL `sp_getemployeepayrollitems`({$employeeid},{$current})";
            return $this->getJSON($sql);
        }

        function getemployeepayrollitemdetails($itemid){
            $sql="CALL `sp_getemployeepayrollitemdetails`({$itemid})";
            return $this->getJSON($sql);
        }

        function deleteemployeepayrollitem( $itemid){
           $sql="CALL `sp_deleteemployeepayrollitem`({$itemid},{$this->userid},'{$this->platform}')";
           $this->getData($sql);
           return ["status"=>"success","message"=>"success"];
        }

        function getemployeestatutoryparollitems($employeeid){
            $sql="CALL `sp_getstatutorydeductionforemployee`({$employeeid})";
            return $this->getJSON($sql);
        }

        function getemployeegradepayrollitems($employeeid){
            $sql="CALL `sp_getemployeegradepayrollitems`({$employeeid})";
            return $this->getJSON($sql);
        }

        function getemployeeidfromstaffno($staffno){
            $sql="CALL `sp_getemployeeidfromstaffno`('{$staffno}')";
            $rst=$this->getData($sql);
            return $rst->rowCount()?$rst->fetch()['employeeid']:0;
        }

        function getemployeebystaffno($staffno){
            $sql="CALL `sp_getemployeeidfromstaffno`('{$staffno}')";
            return $this->getJSON($sql);
        }

        function checkemployeedependant($dependantid,$employeeid,$iddoc,$iddocno){
            $sql="CALL `sp_checkemployeedependantiddoc`({$dependantid},{$employeeid},{$iddoc},'{$iddocno}')";
            return $this->getData($sql)->rowCount();
        }

        function saveemployeedependant($dependantid,$employeeid,$dependantname,
        $relationshipid,$iddoc,$iddocno,$dob,$gender,$passportphoto){
            if($this->checkemployeedependant($dependantid,$employeeid,$iddoc,$iddocno)){
                return ["status"=>"exists","dependant id doc number already attached "];
            }else{
                $dob=$this->mySQLDate($dob);
                 $sql="CALL `sp_saveemployeedependant`({$dependantid},{$employeeid},'{$dependantname}',
                {$relationshipid},'{$iddoc}','{$iddocno}','{$dob}','{$gender}','{$passportphoto}',{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"employee dependant saved successfully"];
            }
           
        }

        function getemployeedependants($employeeid){
            $sql="CALL `sp_getemployeedependants`({$employeeid})";
            return $this->getJSON($sql);
        }

        function getemployeedependantdetails($dependantid){
            $sql="CALL `sp_getemployeedependantdetails`({$dependantid})";
            return $this->getJSON($sql);
        }

        function deleteemployeedependant($dependantid){
            $sql="CALL `sp_deleteemployeedependant`({$dependantid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"deleted employee dependant"];
        }

        function getemployeedepartmentcolleagues($employeeid){
            $sql="CALL `sp_getemployeedepartmentcolleagues`({$employeeid})";
            return $this->getJSON($sql);
        }

        function getemployeesupervisors($employeeid){
            $sql="CALL `sp_getemployeesupervisors`({$employeeid})";
            return $this->getJSON($sql);
        }

        function getemployeeleavetypedetails($employeeid,$leavetypeid){
            $sql="CALL `sp_getemployeeleavedetails`({$employeeid},{$leavetypeid})";
            return $this->getJSON($sql);
        }

        function checkemployeebeneficiary($beneficiaryid,$employeeid,$idnumber){
            $sql="CALL `sp_checkemployeebeneficiary`({$beneficiaryid},{$employeeid},'{$idnumber}')";
            return $this->getData($sql)->rowCount();
        }

        function saveemployeebeneficiary($beneficiaryid,$employeeid,$fullname,$idnumber,$mobilenumber,$emailaddress,$percentage,$relationshipid){
            if($this->checkemployeebeneficiary($beneficiaryid,$employeeid,$idnumber)){
                return ["status"=>"exists","message"=>"employee beneficiary id number exists"];
            }else{
                $sql="CALL `sp_saveemployeebeneficiary`({$beneficiaryid},{$employeeid},'{$fullname}','{$idnumber}',
                '{$mobilenumber}','{$emailaddress}',{$percentage},{$relationshipid},{$this->userid},'{$this->platform}')";

                $this->getData($sql);
                return ["status"=>"success","message"=>"employee beneficiary saved successfully"];
            }
        }

        function getemployeebeneficiaries($employeeid){
            $sql="CALL `sp_getemployeebeneficiaries`({$employeeid})";
            return $this->getJSON($sql);
        }

        function getemployeebeneficiarydetails($beneficiaryid){
            $sql="CALL `sp_getemployeebeneficiarydetails`($beneficiaryid)";
            return $this->getJSON($sql);
        }

        function deleteemployeebeneficiary($beneficiaryid){
            $sql="CALL `sp_deleteemployeebeneficiary`({$beneficiaryid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"employee beneficiary deleted successfully"];
        }

        function getemployeebeneficiariespercentage($employeeid,$beneficiaryid){
            $sql="CALL `sp_getemployeebeneficiarytotalpercentage`({$employeeid},{$beneficiaryid})";
            return $this->getJSON($sql);
        }

        function checkinternalexperience($id,$employeeid,$startdate,$enddate,$currentlyhere){
            $sql="CALL `sp_checkemployeeinternalexperience`({$id},{$employeeid},'{$startdate}','{$enddate}',{$currentlyhere})";
            return $this->getData($sql)->rowCount();
        }

        function saveinternalexperience($id,$employeeid,$departmentid,$positionid,$startdate,$enddate,$currentlyhere,$duties){
            // convert date formats for mysql readable format
            $startdate=$this->mySQLDate($startdate);
            $enddate=$this->mySQLDate($enddate);
            if($this->checkinternalexperience($id,$employeeid,$startdate,$enddate,$currentlyhere)){
                return ["status"=>"exists","internal experience already exists"];
            }else{
                $sql="CALL `sp_saveemployeeinternalexperience`({$id},{$employeeid},{$departmentid},{$positionid}, 
                '{$startdate}','{$enddate}',{$currentlyhere},'{$duties}',{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"employee internal experience saved successfully"];
            }
        }

        function getinternalexperiences($employeeid){
            $sql="CALL `sp_getemployeeinternalexperience`({$employeeid})";
            return $this->getJSON($sql);
        }

        function getinternalexperiencedetails($id){
            $sql="CALL `sp_getemployeeinternalexperiencedetails`({$id})";
            return $this->getJSON($sql);
        }

        function deleteinternalexperience($id){
            $sql="CALL `sp_deleteemployeeinternalexperience`({$id},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"employee internal experience deleted successfully"];
        }  
        
        function checkexternalexperience($id,$employeeid,$startdate,$enddate){
            $sql="CALL `sp_checkemployeeexternalexperience`({$id},{$employeeid},'{$startdate}','{$enddate}')";
            return $this->getData($sql)->rowCount();
        }

        function saveexternalexperience($id,$employeeid,$organization,$jobposition,$startdate,$enddate,$duties){
            $startdate=$this->mySQLDate($startdate);
            $enddate=$this->mySQLDate($enddate);
            if($this->checkexternalexperience($id,$employeeid,$startdate,$enddate)){
                return ["status"=>"exists","message"=>"external experience exists"];
            }else{
                $sql="CALL `sp_saveemployeeexternalexperience`({$id},{$employeeid},'{$organization}','{$jobposition}',
                '{$startdate}','{$enddate}','{$duties}',{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"external experience saved succesfully"];
            }
        }

        function getexternalexperience($employeeid){
            $sql="CALL `sp_getemployeeexternalexperiences`({$employeeid})";
            return $this->getJSON($sql);
        }

        function getexternalexperiencedetails($id){
            $sql="CALL `sp_getemployeeexternalexperiencedetails`({$id})";
            return $this->getJSON($sql);
        }

        function deleteexternalexperience($id){
            $sql="CALL `sp_deletexternalemployeeexperience`({$id},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"external experience deleted successfully"];
        }

        function checkemployeetrainingcertificate($trainingid,$employeeid,$certificatenumber){
            $sql="CALL `sp_checkemployeetrainingcertificate`({$trainingid},{$employeeid},'{$certificatenumber}')";
            return $this->getData($sql)->rowCount();
        }

        function savetraining($trainingid,$employeeid,$coursecategory,$levelid,$institutionname,$coursename,
            $coursemajor,$gradeattained,$startdate,$enddate,$currentltattending,$certificateexpires,$certificateexpirydate,
            $certificatenumber,$certificateattachment){

            $startdate=$this->mySQLDate($startdate);
            $enddate=$this->mySQLDate($enddate);
            $certificateexpirydate=$this->mySQLDate($certificateexpirydate);

            if($currentltattending==0 && $this->checkemployeetrainingcertificate($trainingid,$employeeid,$certificatenumber)){
                return ["status"=>"exists","message"=>"training certificate already in use"];
            }else{
                $sql="CALL `sp_saveemployeetraining`({$trainingid},{$employeeid},'{$coursecategory}',{$levelid},'{$institutionname}','{$coursename}',
                '{$coursemajor}','{$gradeattained}','{$startdate}','{$enddate}',${currentltattending},{$certificateexpires},'{$certificateexpirydate}',
                {$certificatenumber},'{$certificateattachment}',{$this->userid},'{$this->platform}')";
                // echo $sql.PHP_EOL;
                $this->getData($sql);
                return ["status"=>"success","message"=>"employee training saved successfully"];
            }
        }

        function gettrainings($employeeid){
            $sql="CALL `sp_getemployeetraining`({$employeeid})";
            return $this->getJSON($sql);
        }

        function gettrainingdetails($trainingid){
            $sql="CALL `sp_getemployeetrainigdetails`({$trainingid})";
            return $this->getJSON($sql);
        }

        function deletetraining($trainingid){
            $sql="CALL `sp_deleteemployeetraining`({$trainingid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"employee trainig deleted successfully"];
        }

        function getemployeename($employeeid){
            $sql="CALL `sp_getemployeename`({$employeeid})";
            return $this->getData($sql)->fetch()['employeename'];
        }

        function disciplinarycategories(){
            $sql="CALL `sp_getdisciplinarycategories`()";
            return $this->getJSON($sql);
        }

        function getdisciplinaryactions(){
            $sql="CALL `sp_getdisciplinaryactionsrequired`()";
            return $this->getJSON($sql);
        }

        function getdisciplinarytypes(){
            $sql="CALL `sp_getdisciplinarytypes`()";
            return $this->getJSON($sql);
        }

        function saveedisciplinarycaseincident($incidentid,$employeeid,$typeid,$categoryid,$actionid, $incidentdescription,$attachment,
        $incidentdate,$actiondate){
            $incidentdate=$this->mySQLDate($incidentdate);
            $actiondate=$this->mySQLDate($actiondate);
            $sql="CALL `sp_savedisciplinaryincidence`({$incidentid},{$employeeid},{$typeid},{$categoryid},{$actionid},'{$incidentdescription}',
            '{$attachment}','{$incidentdate}','{$actiondate}',{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return["status"=>"success","message"=>"employee disciplinary incidence saved successfully"];
        }

        function getdisciplinecases($employeeid){
            $sql="CALL `sp_getemployeedisciplinaryincidents`({$employeeid})";
            return $this->getJSON($sql);
        }

        function getdisciplinecasedetails($incidentid){
            $sql="CALL `sp_getemployeedisciplinarydetails`({$incidentid})";
            return $this->getJSON($sql);
        }

        function deletedisciplinecase($incidentid){
            $sql="CALL `sp_deleteemployeedisciplinaryincident`({$incidentid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"employee disciplinary case deleted successfully"];
        }

        function checkemployeeattachment($id,$documentid,$employeeid){
            $sql="CALL `sp_checkemployeeattachment`({$id},{$documentid},{$employeeid})";
            return $this->getData($sql)->rowCount();
        }

        function saveemployeeattachment($id,$employeeid,$documentid,$documentexpires,$expirydate,$attachment,$narration,$override){
            $expirydate=$this->mySQLDate($expirydate);
            if($this->checkemployeeattachment($id,$documentid,$employeeid ) && !$override){
                return ["status"=>"exists","message"=>"employee document already attached"];
            }else{
                $sql="CALL `sp_saveemployeeattachmment`({$id},{$employeeid},{$documentid},{$documentexpires},'{$expirydate}',
                '{$attachment}','{$narration}',{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"employee attachment saved successfully"];
            }
        }

        function getemployeeattachments($employeeid){
            $sql="CALL `sp_getemployeeattachments`({$employeeid})";
            return $this->getJSON($sql);
        }

        function getemployeeattachmentdetails($id){
            $sql="CALL `sp_getemployeeattachmentdetails`({$id})";
            return $this->getJSON($sql);
        }

        function deleteemployeeattachment($id){
            $sql="CALL `sp_deleteemployeeattachment`({$id},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"employee document deleted successfully"];
        }

        function getemployeeattachabledocuments(){
            $sql="CALL `sp_getemployeedocumentsattachable`()";
            return $this->getJSON($sql);
        }

        function getemployeesleaveapplications($leavetypeid){
            $sql="CALL `sp_getemployeesleaveapplications`({$leavetypeid})";
            return $this->getJSON($sql);
        }

        function registeremployeeasuser($staffno,$mobile,$emailaddress,$salt,$userpassword){
            // check if employee exists
            $employeeid=$this->getemployeeidfromstaffno($staffno);
            $emailactivationcode=$this->uniqidReal(5);
            $phoneactivationcode=$this->uniqidReal(5);
            if($this->checkemployee(0,'staff no',0,$staffno)){
                if($this->checkemployee($employeeid,'mobile',0,$mobile)){
                    return ["status"=>"exists","message"=>"mobile no exists"];
                }else if($this->checkemployee($employeeid,'email',0,$emailaddress)){
                    return ["status"=>"exists","message"=>"email address exists"];
                }else{
                    $sql="CALL `sp_createemployeeuseraccount`('{$staffno}','{$mobile}','{$emailaddress}','{$salt}','{$userpassword}',
                    '{$emailactivationcode}','{$phoneactivationcode}',{$this->systemuserid},'{$this->platform}')";
                    $this->getData($sql);
                    // email welcome message with confirmation code
                    $this->sendemployeeportalwelcomeemail($staffno,$emailactivationcode);
                    // sms welcome message with confirmation code
                    return ["status"=>"success","message"=>"employee ess portal account created successfully"];
                }
            }else{
                return ["status"=>"not exists","message"=>"staff no not found"];
            }  
        }

        function sendemployeeportalwelcomeemail($staffno,$emailactivationcode){
            // echo "Processing welcome message ...";
            // get employee details with support contacts
            $template_file="../templates/emails/employeeportalwelcome.html";
            if(file_exists($template_file)){
                $emailmessage=file_get_contents($template_file);
                // email employee
                // $rst=json_decode($this->getleaveapplicationemployeedetails($applicationid),true); 
                $rst=json_decode($this->getemployeedetailsbystaffno($staffno),true)[0];
                // print_r($rst).PHP_EOL;
                // swap variables with actual content
                $activationcode=$emailactivationcode;
                $activationlink=$rst['essportalurl']."/activateemail.php?staffno=".$staffno;
                $activationurl=$activationlink."&activationcode=".$activationcode;
                $swap_var=array(
                    "{{activationurl}}"=>$activationurl,
                    "{{activationlink}}"=>$activationlink,
                    "{{activationcode}}"=>$activationcode,
                    "{{companyname}}"=>$rst["companyname"], 
                    "{{activationcode}}"=> $activationcode,
                    "{{documenttitle}}"=>"Welcome to Employee Self Service Portal (ESS)",
                    "{{employeename}}"=>$rst["firstname"]." ".$rst['middlename']." ".$rst['lastname'],
                    "{{staffno}}"=>$rst["staffno"],
                    "{{supportemail}}"=>$rst['supportemail'],
                    "{{supportphonenumber}}"=>$rst['supportphone'],
                    "{{portalurl}}"=>$rst['essportalurl'],
                    "{{username}}"=>$_SESSION['username'],
                    "{{year}}"=>date("Y")
                );

                // search and replace all swap variables with actual contents
                foreach(array_keys($swap_var) as $key){
                    if(strlen($key)>2 && trim($key)!==""){
                        $emailmessage=str_replace($key,$swap_var[$key],$emailmessage);
                    }
                }

                // the requestors email
                $email=$rst['emailaddress'];
                $response=$GLOBALS['mail']->sendEmail($email,"Employee Self Service Portal (ESS) Activation",$emailmessage,$_SESSION['username']);
                // echo $response;
                return ["status"=>"success","message"=>"employee email receipt notification sent successfully"];
            }
        }

        function getleaveapplicationemployeedetails($applicationid){
            $sql="CALL `sp_getleaveapplicationemployeedetails`({$applicationid})";
            return $this->getJSON($sql);
        }

        function getemployeedetailsbystaffno($staffno){
            $sql="CALL `sp_getemployeedetailsbystaffno`('{$staffno}')";
            return $this->getJSON($sql);
        }

        function resetemployeeportalpassword($staffno){
            $id=$GLOBALS['user']->getuseridfromname($staffno);
            // check if user exits
            if($id!=""){
                return $GLOBALS['user']->resetUserPassword($id,'',"employee");
            }else{
                return ["status"=>"not exists","message"=>"employee not found"];
            }
        }

        function getemployeepayslips($employeeid,$startmonth,$startyear,$endmonth,$endyear){
            $sql="CALL `sp_getemployeepayslips`({$employeeid},'{$startmonth}',{$startyear},'{$endmonth}',{$endyear})";
            // echo $sql;
            return $this->getJSON($sql);
        }

        function getemployeedashboardsummary($employeeid){
            $sql="CALL `sp_getemployeedaashboardsummaries`({$employeeid})";
            return $this->getJSON($sql);
        }

        function getallemployees(){
            $sql="CALL `sp_getallemployees`()";
            return $this->getJSON($sql);
        }

        function getdepartmentactiveemployees($departmentid){
            $sql="CALL `sp_getdepartmentactiveemployees`({$departmentid})";
            return $this->getJSON($sql);
        }
    }

    
?>