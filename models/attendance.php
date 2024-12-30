<?php
    require_once("db.php");

    class attendance extends db{

        function checkshift($shiftid,$shiftname){
            $sql="CALL `sp_checkshiftmasterdetails`({$shiftid},'{$shiftname}')";
            return $this->getData($sql)->rowCount();
        }

        function saveshiftmaster($shiftid,$shiftname,$shifttype){
            if($this->checkshift($shiftid,$shiftname)){
                return["status"=>"exists","message"=>"shift name already in use"];
            }else{
                $sql="CALL `sp_saveshiftmaster`({$shiftid},'{$shiftname}','{$shifttype}',{$this->userid},'{$this->platform}')";
                $response=$this->getData($sql)->fetch()['shiftid'];
                return ["status"=>"success","message"=>"shift master saved successfully","shiftid"=>$response];
            }
        }

        function saveshiftdetails($shiftdetailid,$shiftid,$dayweek,$starttime,$endtime,$workingstatus,$break){
            $sql="CALL `sp_saveshiftdetails`({$shiftdetailid},{$shiftid},'{$dayweek}','{$starttime}','{$endtime}',
            '{$workingstatus}',{$break},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"shift detail saved successfully"];
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
    }
?>