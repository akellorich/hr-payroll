<?php
    require_once("db.php");

    class settings extends db{
        function getiddocuments(){
            $sql="CALL `sp_getregistrationdocuments`()";
            return $this->getJSON($sql);
        }

        function getmaritalstatuses(){
            $sql="CALL `sp_getmaritalstatuses`()";
            return $this->getJSON($sql);
        }

        function getreligions(){
            $sql="CALL `sp_getreligions`()";
            return $this->getJSON($sql);
        }

        function getsalutation(){
            $sql="CALL `sp_getsalutations`()";
            return $this->getJSON($sql);
        }

        function gettenantcategories(){
            $sql="CALL `sp_gettenantcategories`()";
            return $this->getJSON($sql);
        }

        function checkpublicholiday($id,$holidaydate,$holidayname){
            $sql="CALL `sp_checkpublicholiday`({$id},'{$holidaydate}','{$holidayname}')";
            $response=$this->getData($sql);
            if($response->rowCount()){
                return ["status"=>"exists","message"=>$response->fetch()['description']];
            }else{
                return ["status"=>"ok","message"=>""];
            }
        }   

        function savepublicholiday($id,$holidayname,$holidaydate,$repeatsannually,$skipweekends){
            $holidaydate=$this->mySQLDate($holidaydate);
            $status=$this->checkpublicholiday($id,$holidaydate,$holidayname);
            if($status['status']=="exists"){
                return  $status;
            }else{
                $sql="CALL `sp_savepublicholiday`({$id},'{$holidayname}','{$holidaydate}',{$repeatsannually},{$skipweekends},{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"success"];
            }
        }

        function getpublicholidays($status="current"){
            $sql="CALL `sp_getpublicholidays`('{$status}')";
            return $this->getJSON($sql);
        }

        function getpublicholidaydetails($id){
            $sql="CALL `sp_getpublicholidaydetails`({$id})";
            return $this->getJSON($sql);
        }

        function deletepublicholiday($id){
            $sql="CALL `sp_deletepublicholiday`({$id},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"success"];
        }

        function getrelationships(){
            $sql="CALL `sp_getrelationships`()";
            return $this->getJSON($sql);
        }

        function getcourselevels(){
            $sql="CALL `sp_getcourselevels`()";
            return $this->getJSON($sql);
        }

        function getpaymentmethods(){
            $sql="CALL `sp_getpaymentmethods`()";
            return $this->getJSON($sql);
        }

        function checkunitdetails($unitid,$checkfield,$checkvalue){
            $sql="CALL `sp_checkunitdetails`({$unitid},'{$checkfield}','{$checkvalue}')";
            return $this->getData($sql)->rowCount();
        }

        function saveunit($unitid,$unitcode,$unitname){
            // check unit code
            if($this->checkunitdetails($unitid,'unitcode',$unitcode)){
                return["status"=>"exists","category"=>"unitcode","message"=>"unit code already exists"];
            }if($this->checkunitdetails($unitid,'unitname',$unitname)){
                return["status"=>"exists","category"=>"unitname","message"=>"unit name already exists"];
            }else{
                $sql="CALL `sp_saveunit`({$unitid},'{$unitcode}','{$unitname}','{$this->platform}',{$this->userid})";
                $this->getData($sql);
                return ["status"=>"success","message"=>"unit saved successfully"];
            }
        }

        function getunits(){
            $sql="CALL `sp_getunits`()";
            return $this->getJSON($sql);
        }

        function getunitdetails($unitid){
            $sql="CALL `sp_getunitdetails`({$unitid})";
            return $this->getJSON($sql);
        }

        function deleteunit($unitid){
            $sql="CALL `sp_deleteunit`({$unitid},'{$this->platform}',{$this->userid})";
            $this->getData($sql);
            return ["status"=>"success","message"=>"unit deleted successfully"];
        }

        function checksection($sectionid,$checkfield,$checkvalue){
            $sql="CALL `sp_checksection`({$sectionid},'{$checkfield}','{$checkvalue}')";
            return $this->getData($sql)->rowCount();
        }

        function savesection($sectionid,$departmentid,$sectioncode, $sectionname){
            if($this->checksection($sectionid,'sectioncode',$sectioncode)){
                return['status'=>'exists',"message">"section code exists","category"=>"sectioncode"];
            }else if($this->checksection($sectionid,'sectionname',$sectionname)){
                return['status'=>'exists',"message">"section name exists","category"=>"sectionname"];
            }else{
                $sql="CALL `sp_savesection`({$sectionid},{$departmentid},'{$sectioncode}',
                '{$sectionname}','{$this->platform}',{$this->userid})";
                $this->getData($sql);
                return ["status"=>"success","message"=>"section saved succesfuly"];
            }
        }

        function getsections($departmentid){
            $sql="CALL `sp_getsections`({$departmentid})";
            return $this->getJSON($sql);
        }

        function getsectiondetails($sectionid){
            $sql="CALL `sp_getsectiondetails`({$sectionid})";
            return $this->getJSON($sql);
        }

        function deletesection($sectionid){
            $sql="CALL `sp_deletesection`({$sectionid},'{$this->platform}',{$this->userid})";
            $this->getData($sql);
            return ["status"=>"success","message"=>"section deleted successfully"];
        }

        function getSystemModules(){
            $sql="CALL spgetsystemmodules()";
            return $this->getJSON($sql);
        }
    
    }

?>