
<?php
  require_once("db.php");
  class departments extends db{
    function checkdepartment($departmentid,$departmentname){
      $sql ="CALL `sp_checkdepartment`({$departmentid},'{$departmentname}')";
      return $this->getData($sql)->rowCount();
    }

    function savedepartment($departmentid,$departmentname,$departmenthead,$departmentextension){
      if($this->checkdepartment($departmentid,$departmentname)){
          return["status"=>"exists","message"=>"name exists"];
      }
      else{
        $sql="CALL `sp_savedepartment`({$departmentid},'{$departmentname}',{$departmenthead},'{$departmentextension}',{$this->userid},'{$this->platform}')";
        // echo $sql.PHP_EOL;
        $this->getData($sql);
        return["status"=>"success","message"=>"success"];
      }
    }

    function getdepartments(){
      $sql="CALL `sp_getdepartments`()";
      return $this->getJSON($sql);
    }

    function getdepartmentdetails($departmentid){
      $sql="CALL `sp_getdepartmentdetails`({$departmentid})";
      return $this->getJson($sql);
    }

    function deletedepartment($departmentid){
      $sql="CALL `sp_deletedepartment`({$departmentid},{$this->userid},'{$this->platform}')";
      $this->getData($sql);
      return ["status"=>"success","message"=>"success"];
    }
  }

?>