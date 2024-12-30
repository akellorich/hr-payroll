<?php
  require_once("../models/department.php");

  $department= new departments();

  if(isset($_POST['savedepartment'])){
    $departmentid=$_POST['departmentid'];
    $departmentname=$_POST['departmentname'];
    $departmentextension=$_POST['departmentextension'];
    $departmenthead=$_POST['departmenthod'];
    $response=$department->savedepartment($departmentid,$departmentname,$departmenthead,$departmentextension);
    echo json_encode($response);
  }

  if(isset($_GET['getdepartments'])){
    echo $department->getdepartments();
  }

  if(isset($_GET['getdepartmentdetails'])){
    $departmentid=$_GET['departmentid'];
    echo $department->getdepartmentdetails($departmentid);
  }

  if(isset($_POST['deletedepartment'])){
    $departmentid =$_POST['departmentid'];
    $response=$department->deletedepartment($departmentid);
    echo json_encode($response);
  }
?>