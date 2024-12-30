<?php
    require_once("db.php");

    class payroll extends db{

        // Employment terms
        function checkemploymentterms($termid,$termname){
            $sql="CALL `sp_checkemploymentterm`({$termid},'{$termname}')";
            return $this->getData($sql)->rowCount();
        }

        function saveemploymentterm($termid,$termname){
            if($this->checkemploymentterms($termid,$termname)){
                return ["status"=>"exists","message"=>"name exists"];
            }else{
                $sql="CALL `sp_saveemploymentterm`({$termid},'{$termname}',{$this->userid},'{$this->platform}')";
                // echo $sql.PHP_EOL;
                $this->getData($sql);
                return ["status"=>"success","message"=>"success"];
            }
        }

        function getemploymentterms(){
            $sql="CALL `sp_getemploymentterms`()";
            return $this->getJSON($sql);
        }

        function getemploymenttermdetails($termid){
            $sql="CALL `sp_getemploymenttermdetails`({$termid})";
            return $this->getJSON($sql);
        }

        function deleteemploymentterm($termid){
            $sql="CALL `sp_deleteemploymentterm`({$termid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"success"];
        }

        function checkjobgroup($jobgroupid,$jobgroupname){
            $sql="CALL `sp_checkjobgroup`({$jobgroupid},'{$jobgroupname}')";
            return $this->getData($sql)->rowCount();
        }

        // Job Groups
        function savejobgroup($jobgroupid,$jobgroupname){
            if($this->checkjobgroup($jobgroupid,$jobgroupname)){
                return "exists";
            }else{
                $sql="CALL `sp_savejobgroup`({$jobgroupid},'{$jobgroupname}',{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return "success";
            }
        }

        function getjobgroups(){
            $sql="CALL `sp_getjobgroups`()";
            return $this->getJSON($sql);
        }

        function getjobgroupdetails($jobgroupid){
            $sql="CALL `sp_getjobgroupdetails`({$jobgroupid})";
            return $this->getJSON($sql);
        }

        function deletejobgroup($jobgroupid){
            $sql="CALL `sp_deletejobgroup`({$jobgroupid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"success"];
        }

        // Job Notches
        function checkjobnotch($notchid,$notchname){
            $sql="CALL `sp_checkjobnotch`({$notchid},'{$notchname}')";
            return $this->getData($sql)->rowCount();
        }

        function savejobnotch($notchid,$notchname){
            if($this->checkjobnotch($notchid,$notchname)){
                return "exists";
            }else{
                $sql="CALL `sp_savejobnotch`({$notchid},'{$notchname}',{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return "success";
            }
        }

        function getjobnotches(){
            $sql="CALL `sp_getjobnotches`()";
            return $this->getJSON($sql);
        }

        function getjobnotchdetails($notchid){
            $sql="CALL `sp_getjobnotchdetails`({$notchid})";
            return $this->getJSON($sql);
        }

        function deletejobnotch($notchid){
            $sql="CALL `sp_deletejobnotch`({$notchid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"success"];
        }

        function checkjobposition($positionid,$positionname){
            $sql="CALL `sp_checkjobposition`({$positionid},'{$positionname}')";
            return $this->getData($sql)->rowCount();
        }

        function savejobposition($positionid,$positionname,$establishment,$reportsto,$startjobgroupid,$startnotchid,$endjobgroupid,$endnotchid){
            if($this->checkjobposition($positionid,$positionname)){
                return ["status"=>"exists","message"=>"position exists"];
            }else{    
                $sql="CALL `sp_savejobposition`({$positionid},'{$positionname}',{$establishment},{$reportsto},{$startjobgroupid},{$startnotchid},
                {$endjobgroupid},{$endnotchid},{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"success"];
            }
        }

        function getjobpositions(){
            $sql="CALL `sp_getjobpositions`()";
            return $this->getJSON($sql);
        }

        function getjobpositiondetials($positionid){
            $sql="CALL `sp_getjobpositiondetails`({$positionid})";
            return $this->getJSON($sql);
        }

        function deletejobposition($positionid){
            $sql="CALL `sp_deletejobposition`({$positionid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"success"];
        }

        function savepayrollitemtempbracketvalues($refno,$upperbracket,$lowerbracket,$bracketvalue){
            $sql="CALL `sp_savetemppayrollitembracketvalues`('{$refno}',{$upperbracket},{$lowerbracket},{$bracketvalue})";
            $this->getData($sql);
            return ["status"=>"success","message"=>"success"];
        }

        function checkpayrollitem($itemid,$itemname){
            $sql="CALL `sp_checkpayrollitem`({$itemid},'{$itemname}')";
            return $this->getData($sql)->rowCount();
        }

        function savepayrollitem($refno,$itemid,$itemname,$shortname,$itemtype,$statutory,$display,$showonpayroll,$taxable,$isaloan,$defaultamount,
            $allowablededuction,$allowabledeductionlowerlimit,$allowabledeductionupperlimit,$allowabledeductionvalue,$allowabledeductionpercentage,
            $bracketed,$bracketongross,$bracketitem,$bracketispercentage,$bracketlowerlimit,$bracketupperlimit,$employertomatch,
            $employermatchfactor,$applyrelief,$reliefitem,$creditorid,$itemgroupid,$systemlabel){
            if($this->checkpayrollitem($itemid,$itemname)){
                return ["status"=>"exists","message"=>"itemname exists"];
            }else{
                $sql="CALL `sp_savepayrollitem`('{$refno}',{$itemid},'{$itemname}','{$shortname}','{$itemtype}',{$statutory},'{$display}',{$showonpayroll},{$taxable},{$isaloan},{$defaultamount},
                {$allowablededuction},{$allowabledeductionlowerlimit},{$allowabledeductionupperlimit},{$allowabledeductionvalue},{$allowabledeductionpercentage},
                {$bracketed},{$bracketongross},{$bracketitem},{$bracketispercentage},{$bracketlowerlimit},{$bracketupperlimit},{$employertomatch},
                {$employermatchfactor},{$applyrelief},{$reliefitem},{$creditorid},{$itemgroupid},'{$systemlabel}',{$this->userid},'{$this->platform}')";

                // echo $sql.PHP_EOL.PHP_EOL;

                $this->getData($sql);
                return ["status"=>"success","message"=>"success"];
            }
        }

        function getpayrollitems($category='<all>'){
            $sql="CALL `sp_getpayrollitems`('{$category}')";
            return $this->getJSON($sql);
        }

        function getpayrollitemdetails($itemid){
            $sql="CALL `sp_getpayrollitemdetails`({$itemid})";
            return $this->getJSON($sql);
        }

        function deletepayrollitem($itemid){
            $sql="CALL `sp_deletepayrollitem`({$itemid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"success"];
        }

        function checksalarystructure($structureid,$jobgroupid,$notchid,$payrollitemid){
            $sql="CALL `sp_checksalarystructure`({$structureid},{$jobgroupid},{$notchid},{$payrollitemid})";
            return $this->getData($sql)->rowCount();
        }

        function savesalarystructure($structureid,$jobgroupid,$notchid,$payrollitemid,$annualincrement,$minvalue,$maxvalue){
            if($this->checksalarystructure($structureid,$jobgroupid,$notchid,$payrollitemid)){
                return ["status"=>"exists","message"=>"structure exists"];
            }else{
                $sql="CALL `sp_savesalarystructure`({$structureid},{$jobgroupid},{$notchid},{$payrollitemid},{$annualincrement},{$minvalue},{$maxvalue},{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"success"];
            }
        }

        function getsalarystructures($jobgroupid,$notchid){
            $sql="CALL `sp_getsalarystructures`({$jobgroupid},{$notchid})";
            return $this->getJSON($sql);
        }

        function getsalarystructuredetails($structureid){
            $sql="CALL `sp_getsalarystructuredetails`({$structureid})";
            return $this->getJSON($sql);
        }

        function deletesalarystructure($structureid){
            $sql="CALL `sp_deletesalarystructure`({$structureid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"success"];
        }

        function checkjobcategory($categoryid,$checkfield,$checkvalue){
            $sql="CALL `sp_checkjobcategory`({$categoryid},'{$checkfield}','{$checkvalue}')";
            return $this->getData($sql)->rowCount();
        }

        function savejobcategory($categoryid,$categoryname,$prefix,$currentnumber){
            if($this->checkjobcategory($categoryid,'prefix',$prefix)){
                return ["status"=>"exists","message"=>"prefix exists"];
            }else if($this->checkjobcategory($categoryid,'name',$categoryname)){
                return ["status"=>"exists","message"=>"name exists"];
            }else{
                // save the job category
                $sql="CALL `sp_savejobcategory`({$categoryid},'{$categoryname}','{$prefix}',{$currentnumber},{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"success"];
            }
        }

        function getjobcategories(){
            $sql="CALL `sp_getjobcategories`()";
            return $this->getJSON($sql);
        }

        function getjobcategorydetails($categoryid){
            $sql="CALL `sp_getjobcategorydetails`({$categoryid})";
            return $this->getJSON($sql);
        }

        function deletejobcategory($categoryid){
            $sql="CALL `sp_deletejobcategory`({$categoryid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"success"];
        }

        function processpayroll($payrollmonth,$payrollyear,$taxlabel){
            if($this->checkpayrollperiodstatus($payrollmonth,$payrollyear)=="closed"){
                return ["status"=>"closed"];
            }elseif($this->checkotheropenperiods($payrollmonth,$payrollyear)){
                return ["status"=>"open"];
            }else{
                $sql="CALL `sp_processpayroll`('{$payrollmonth}',{$payrollyear},'{$taxlabel}',{$this->userid},'{$this->platform}')";
                // echo $sql.PHP_EOL;
                $this->getData($sql);
                return ["status"=>"success","message"=>"success"];
            }
        }

        function gettaxlabels(){
            $sql="CALL `sp_getpayetaxlabels`()";
            return $this->getJSON($sql);
        }

        function getprocessedpayrolls(){
            $sql="CALL `sp_getprocessedpayrolls`()";
            return $this->getJSON($sql);
        }

        function closepayrollperiod($payrollid){
            $sql="CALL `sp_closepayrollperiod`({$payrollid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"success"];
        }

        function checkpayrollperiodstatus($month,$year){
            $sql="CALL `sp_checkpayrollperiodstatus`('{$month}',{$year})";
            $rst= $this->getData($sql);
            if($rst->rowCount()){
                return $rst->fetch()['status'];
            }else{
                return "";
            }
        }

        function checkotheropenperiods($payrollmonth,$payrollyear){
            $sql="CALL `sp_checkpayrollotheropenperiods`('{$payrollmonth}',{$payrollyear})";
            return $this->getData($sql)->rowCount();
        }

        function getpayrollregisterdetailed($payrollmonth,$payrollyear){
            $sql="CALL `sp_getpayrollregisterdetailed`('{$payrollmonth}',{$payrollyear})";
            return $this->getJSON($sql);
        }

        function getstatutoryitems(){
            $sql="CALL `sp_getstatutorypayrollitems`()";
            return $this->getJSON($sql);
        }

        function getpayeremittanceadvise($payrollmonth,$payrollyear,$itemid){
            $sql="CALL `sp_getpayeremittanceadvice`('{$payrollmonth}',{$payrollyear},{$itemid})";
            return $this->getJSON($sql);
        }

        function getnssfremittanceadvise($payrollmonth,$payrollyear,$payrollitemid){
            $sql="CALL `sp_getnssfremittanceadvise`('{$payrollmonth}',{$payrollyear},{$payrollitemid})";
            return $this->getJSON($sql);
        }

        function getnhifremittanceadvise($payrollmonth,$payrollyear,$payrollitemid){
            $sql="CALL `sp_getnhifremittanceadvise`('{$payrollmonth}',{$payrollyear},{$payrollitemid})";
            return $this->getJSON($sql);
        }

        function getstatutoryremittanceadvise($payrollmonth,$payrollyear,$payrollitemid){
            $sql="CALL `sp_getstatutoryremittanceadvice`('{$payrollmonth}',{$payrollyear},{$payrollitemid})";
            return $this->getJSON($sql);
        }

        function getbankremittanceadvises($payrollmonth,$payrollyear,$bankid){
            $sql="CALL `sp_getbankremittanceadvises`('{$payrollmonth}',{$payrollyear},{$bankid})";
            return $this->getJSON($sql);
        }

        function getpayrollmonthcreditors($payrollmonth,$payrollyear){
            $sql="CALL `sp_getpayrollmonthcreditors`('{$payrollmonth}',{$payrollyear})";
            return $this->getJSON($sql);
        }

        function getthirdpartyremittanceadvise($payrollmonth,$payrollyear,$creditorid){
            $sql="CALL `sp_getpayrollthirdpartremittanceadvise`('{$payrollmonth}',{$payrollyear},{$creditorid})";
            return $this->getJSON($sql);
        }

        function getpayrollentrants($month,$year){
            $sql="CALL `sp_getpayrollentrants`('{$month}',{$year})";
            return $this->getJSON($sql);
        }

        function getpayrollexits($month,$year){
            $sql="CALL `sp_getpayrollexits`('{$month}',{$year})";
            return $this->getJSON($sql);
        }

        function getpayrollchangesitems($month,$year){
            $sql="CALL `sp_getpayrollchangesitems`('{$month}',{$year})";
            return $this->getJSON($sql);
        }

        function getpayrollchangesemployees($month,$year){
            $sql="CALL `sp_getpayrollchangesemployees`('{$month}',{$year})";
            // echo $sql.PHP_EOL;
            return $this->getJSON($sql);
        }

        function getpayrollsummary($summary,$month,$year){
            $sql="CALL `sp_getpayrollsummary`('{$summary}','{$month}',{$year})";
            return $this->getJSON($sql);
        }

        function getp10certificateemployees($month,$year){
            $sql="CALL `sp_getp10certificateemployeedata`('{$month}',{$year})";
            return $this->getJSON($sql);
        }

        function getp9deductionsummary($year){
            $sql="CALL `sp_getp9deductionsummary`({$year})";
            return $this->getJSON($sql);
        }

        function getemployeep9deductioncard($employeeid,$year){
            $sql="CALL `sp_getp9deductioncard`({$year},{$employeeid})";
            return $this->getJSON($sql);
        }

        function checkpayrollitemgroup($groupid,$groupname){
            $sql="CALL `sp_checkpayrollitemgroup`({$groupid},'{$groupname}')";
            return $this->getData($sql)->rowCount();
        }

        function savepayrollitemgroup($groupid,$groupname,$itemtype){
            if($this->checkpayrollitemgroup($groupid,$groupname)){
                return ["status"=>"exists","message"=>"group name exists"];
            }else{
                $sql="CALL `sp_savepayrollitemgroup`({$groupid},'{$groupname}','{$itemtype}',{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"saved successfully"];
            }
        }

        function getpayrollitemgroups(){
            $sql="CALL `sp_getpayrollitemgroups`()";
            return $this->getJSON($sql);
        }

        function getpayrollitemgroupdetails($groupid){
            $sql="CALL `sp_getpayrollitemgroupdetails`({$groupid})";
            return $this->getJSON($sql);
        }

        function deletepayrollitemgroup($groupid){
            $sql="CALL `sp_deletepayrollitemgroup`({$groupid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"deleted successfully"];
        }

        function getpayrollregistersummary($month,$year){
            $sql="CALL `sp_getpayrollregistersummary`('{$month}',{$year})";
            return $this->getJSON($sql);
        }
    }

?>