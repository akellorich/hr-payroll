<?php
    require_once("db.php");

    class attendance extends db{

        function checkshift($shiftid,$shiftname){
            $sql="CALL `sp_checkshiftmasterdetails`({$shiftid},'{$shiftname}')";
            return $this->getData($sql)->rowCount();
        }

        function savetempshiftdetails($refno,$weekday,$starts,$ends,$status,$break){
            $sql="CALL `sp_savetempshiftdetails`('{$refno}','{$weekday}','{$starts}','{$ends}','{$status}',{$break})";
            $this->getData($sql);
            return ["status"=>"success","message"=>"temp shift details saved successfully"];
        }

        function saveshiftmaster($refno,$shiftid,$shiftname,$shifttype,$defaultshift){
            if($this->checkshift($shiftid,$shiftname)){
                return["status"=>"exists","message"=>"shift name already in use"];
            }else{
                $sql="CALL `sp_saveshiftmaster`('{$refno}',{$shiftid},'{$shiftname}','{$shifttype}',{$defaultshift},{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"shift master saved successfully"];
            }
        }

        function getshiftmaster(){
            $sql="CALL `sp_getshiftmaster`()";
            return $this->getJSON($sql);
        }

        function getshiftmasterdetails($shiftid){
            $sql="CALL `sp_getshiftmasterdetails`({$shiftid})";
            return $this->getJSON($sql);
        }

        function getshiftdetails(){
            $sql="CALL `sp_getallshiftdetails`()";
            return $this->getJSON($sql);
        }

        function deleteshift($shiftid){
            $sql="CALL `sp_deleteshift`({$shiftid},'{$this->platform}',{$this->userid})";
            $this->getData($sql);
            return  ["status"=>"success","message"=>"shift deleted successfully"];
        }

        function getstaffinshift($shiftid, $date){
            $date=$this->mySQLDate($date);
            $sql="CALL `sp_getstaffinshift`({$shiftid},'{$date}')";
            return $this->getJSON($sql);
        }

        function savetempstaffshift($refno,$employeeid){
            $sql="CALL `sp_savetempstaffshift`('{$refno}',{$employeeid})";
            $this->getData($sql);
            return ["status"=>"success","message"=>"temp staff shift saved successfully"];
        }

        function savestaffshift($refno,$shiftid,$date,$status,$overwrite){
            $date=$this->mySQLDate($date);
            $sql="CALL `sp_savestaffshift`('{$refno}',{$shiftid},'{$date}','{$status}',{$overwrite},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"staff shift saved successfully"];
        }

        function savetempovertimeemployees($refno,$employeeid){
            $sql="CALL `sp_savetempotrequisitionemployees`('{$refno}',{$employeeid})";
            $this->getData($sql); 
            // echo $sql;
            return ["status"=>"success","message"=>"temp overtime employees saved successfully"];
        }

        function saveovertimerequisition($refno,$requisitionid,$unitid,$departmentid,$shiftid,$startdate,$enddate,$duration,$narration){
            $startdate=$this->mySQLDate($startdate);
            $enddate=$this->mySQLDate($enddate);
            $sql="CALL `sp_saveotrequisition`('{$refno}',{$requisitionid},{$unitid},{$departmentid},{$shiftid},'{$startdate}','{$enddate}',
            {$duration},'{$narration}',{$this->userid},'{$this->platform}')";
            $response=$this->getData($sql)->fetch();
            return ["status"=>"success","message"=>"overtimerequisition saved successfully","requisitionno"=>$response['requisitionno'],"requisitionid"=>$response['requisitionid']];
        }

        function getovertimerequisitions($unitid,$departmentid,$shiftid,$startdate,$enddate){
            $startdate=$this->mySQLDate($startdate);
            $enddate=$this->mySQLDate($enddate);
            $sql="CALL `sp_getovertimerequisitions`({$unitid},{$departmentid},{$shiftid},'{$startdate}','{$enddate}')";
            // echo $sql."<br/>";
            return $this->getJSON($sql);
        }

        function getmastershiftdetails($shiftid){
            $sql="CALL `sp_getshiftdetails`({$shiftid})";
            return $this->getJSON($sql);
        }

        function savetempemployeeattendance($refno,$employeeid,$clockin,$clockout){
            $sql="CALL `sp_savetempemployeeattendance`('{$refno}',{$employeeid},'{$clockin}','{$clockout}')";
            $this->getData($sql);
            return ["status"=>"success","employee attendance teporarily saved succesfully"];
        }

        function saveattendance($refno,$attendancedate,$overwrite){
            $attendancedate=$this->mySQLDate($attendancedate);
            $sql="CALL `sp_saveattendance`('{$refno}','{$attendancedate}',{$overwrite},'{$this->platform}',{$this->userid})";
            $this->getData($sql);
            return ["status"=>"success","message"=>"attendance saved successfully"];
        }

        function getattendance($status,$startdate,$enddate){
            $startdate=$this->mySQLDate($startdate);
            $enddate=$this->mySQLDate($enddate);
            $sql="CALL `sp_getattendance`('{$status}','{$startdate}','{$enddate}')";
            return $this->getJSON($sql);
        }

        function getattendanceunits($attendanceid){
            $sql="CALL `sp_getattendanceunits`({$attendanceid})";
            return $this->getJSON($sql);
        }

        function lockattendancedataimport($attendanceid,$unitid){
            $sql="CALL `sp_lockattendanceunitdataimport`({$attendanceid},{$unitid},'{$this->platform}',{$this->userid})";
            $this->getData($sql);
            return ["status"=>"success","message"=>"attendance unit locked for import successfully"];
        }

        function getemployeeattendance($unitid,$departmentid,$sectionid,$startdate,$enddate){
            $startdate=$this->mySQLDate($startdate);
            $enddate=$this->mySQLDate($enddate);
            $sql="CALL `sp_getemployeeattendance`({$unitid},{$departmentid},{$sectionid},'{$startdate}','{$enddate}')";
            return $this->getJSON($sql);
        }

        function getattendanceabsentemployees($startdate,$enddate){
            $startdate=$this->mySQLDate($startdate);
            $enddate=$this->mySQLDate($enddate);
            $sql="CALL `sp_getattendanceabsentemployees`('{$startdate}','{$enddate}')";
            return $this->getJSON($sql);
        }

        function saveemployeeattendancesheet($attendanceid,$attendancedate,$employeeid,$leaveapplicationid,
            $clockin,$clockout,$overtime,$losthours){
            
            $attendancedate=$this->mySQLDate($attendancedate);
            $sql="CALL `sp_saveemployeeattendance`({$attendanceid},'{$attendancedate}',{$employeeid},{$leaveapplicationid},
            '{$clockin}','{$clockout}',{$overtime},'{$losthours}',{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"employee attendance saved successfully","employeeid"=>$employeeid];
        }

        function getgenerallosthours($shiftid,$workdate,$clockin,$clockout){
            $workdate=$this->mySQLDate($workdate);
            $sql="CALL `sp_getgenerallosthours`({$shiftid},'{$workdate}','{$clockin}','{$clockout}')";
            return $this->getJSON($sql);
        }

        function getgeneralovertime($shiftid,$workdate,$clockout){
            $workdate=$this->mySQLDate($workdate);
            $sql="CALL `sp_getgeneralovertime`({$shiftid},'{$workdate}','{$clockout}')";
            return $this->getJSON($sql);
        }

        function getgeneralotandlosthours($shiftid,$workdate,$clockin,$clockout){
            $workdate=$this->mySQLDate($workdate);
            $sql="CALL `sp_getgeneralotandlosthours`({$shiftid},'{$workdate}','{$clockin}','{$clockout}')";
            return $this->getJSON($sql);
        }

        function getemployeesonleave($workdate){
            $workdate=$this->mySQLDate($workdate);
            $sql="CALL `sp_getemployeesonleave`('{$workdate}')";
            return $this->getJSON($sql);
        }

        function getinvalidclockinhours($workdate){
            $workdate=$this->mySQLDate($workdate);
            $sql="CALL `sp_getinvalidclockinhours`('{$workdate}')";
            return $this->getJSON($sql);
        }

        function getinvalidclockouthours($workdate){
            $workdate=$this->mySQLDate($workdate);
            $sql="CALL `sp_getinvalidclockouthours`('{$workdate}')";
            return $this->getJSON($sql);
        }

        function getinactiveattendanceemployees($workdate){
            $workdate=$this->mySQLDate($workdate);
            $sql="CALL `sp_getinactiveattendanceemployees`('{$workdate}')";
            return $this->getJSON($sql);
        }   

        function getshiftstartandendhalfs($employeeid,$workdate,$shifthalf){
            $workdate=$this->mySQLDate($workdate);
            $sql="CALL `sp_getshifthalfstartandendtime`({$employeeid},'{$workdate}',{$shifthalf})";
            return $this->getJSON($sql);
        }
        
        function getsqlserverattendance(){
            $sql="sp_getsqlserverattendance";
            return $this->getmssqljson($sql);
        }
    }
?>