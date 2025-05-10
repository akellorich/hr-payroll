<!DOCTYPE html>
<html lang="en">
<head>
   
    <?php  require_once("header.txt")?>
    <title>Rentwise - Admin Dashboard</title>
</head>
<body>
    <input type="checkbox" name="nav-toggle" id="nav-toggle">
    <?php require_once("sidebar.txt"); ?>
    <div class="main-content">
        <div class="header">
            <h2>
                <label for="nav-toggle">
                    <i class="fas fa-bars"></i>
                </label>
                Contracts
            </h2>

            <div class="search-wrapper">
               <i class="fas fa-search"></i>
                <input type="text" name="search" id="search" placeholder="Search here ...">
            </div>

            <div class="user-wrapper">
                <img src="../images/blankavatar.jpg"  height="40px" width="40px"alt="" class="profilephoto">
                <div>
                    <h4 class="username">System Administrator</h4>
                    <small class="role">Admin Account</small>
                </div>
            </div>
        </div>

        <main id="dashboard">
            <div class="card containergroup">
                <div class="card-body">
                    <nav class="nav-justified ">
                            <!-- Navigation -->
                            <div class="nav nav-tabs " id="employees-tab" role="tablist">
                                <a class="nav-item nav-link active" id="dashboard-tab" data-toggle="tab" href="#contractdashboard" role="tab" aria-controls="pop2" aria-selected="false">Dashboard</a>
                                <a class="nav-item nav-link" id="management-tab" data-toggle="tab" href="#management" role="tab" aria-controls="pop2" aria-selected="false">Management</a>
                            </div>
                    </nav>

                    <div class="tab-content text-left" id="nav-tabContent">
                        <!-- Dashboard Page -->
                        <div class="tab-pane fade show active" id="contractdashboard" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>

                        </div>

                        <!-- Management Page -->
                        <div class="tab-pane fade" id="management" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3" id="managementnotifications"></div>
                            <button class="btn btn-sm btn-success mr-2" id="allemploymenttypes">All Types</button>
                            <button class="btn btn-sm btn-outline-success mr-2" id="permamanent">Permanent</button>
                            <button class="btn btn-sm btn-outline-success mr-2" id="contract">Contract</button>
                            <button class="btn btn-sm btn-outline-success mr-2" id="casual">Casual</button>

                            <table class="table table-sm table-striped table-hover mt-3">
                                <thead>
                                    <th><input type="checkbox" name="selectallcontracts" id="selectallcontracts"></th>
                                    <th>#</th>
                                    <th>Payroll Number</th>
                                    <th>Names</th>
                                    <th>Position</th>
                                    <th>Department</th>
                                    <th>Contract Type</th>
                                    <th>Start Date</th>
                                    <th>End Date</th>
                                    <th>&nbsp;</th><!-- Print-->
                                    <th>&nbsp;</th><!-- Cancel -->
                                    <th>&nbsp;</th><!-- Edit -->
                                </thead>
                                <tbody></tbody>
                            </table>
                            <button class="btn btn-sm btn-success mr-2" id="addnewcontract"><i class="fal fa-plus fa-fw fa-lg"></i> Add New Contract</button>
                            <button class="btn btn-sm btn-outline-success mr-2" id="renewcontract"><i class="fal fa-file-signature fa-fw fa-lg"></i> Renew Contract</button>
                            <button class="btn btn-sm btn-outline-success mr-2" id="emailcontract"><i class="fal fa-envelope-open fa-fw fa-lg"></i> Email Contract</button>
                            <button class="btn btn-sm btn-outline-success mr-2" id="printcontract"><i class="fal fa-print fa-fw fa-lg"></i> Print Contract</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <!-- End of Template -->

    <!-- New contract Modal -->
    <div class="modal" tabindex="-1" id="contractdetailsmodal">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Contract Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Toggle button  -->
                <div class="toggle-switch">
                    <span>Single Employee</span>
                    <input type="checkbox" name="singlemultipleemployeeselection" id="singlemultipleemployeeselection" class="toggler" checked>
                    <span>Multiple Employees</span>
                </div>
                <!-- single user div -->
                <div id="singleemployee">
                    <div class="card containergroup">
                        <div class="card-header">
                            <h5>Employee Details</h5>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="staffno">Staff Number</label>
                                    <div class="input-group">
                                        <input type="text" name="saffno" id="staffno" class="form-control form-control-sm">
                                        <div class="input-group-append">
                                            <button class="btn btn-success btn-sm" id="searchstaff"><i class="fal fa-search fa-lg fa-fw"></i></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col form-group">
                                    <label for="staffname">Staff Name</label>
                                    <input type="text" name="staffname" id="staffname" class="form-control form-control-sm" disabled>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col">
                                    <div class="row">
                                        <div class="col form-group">
                                            <label for="idno">ID Number</label>
                                            <input type="text" name="idno" id="idno" class="form-control form-control-sm" disabled>
                                        </div>
                                        <div class="col form-group">
                                            <label for="Department">Department</label>
                                            <input type="text" name="department" id="department" class="form-control form-control-sm" disabled>
                                        </div>
                                    </div>
                                </div>
                                <div class="col form-group">
                                    <label for="position">Position</label>
                                    <input type="text" name="position" id="position" class="form-control form-control-sm" disabled>
                                </div>
                            </div>
                        </div>
                    </div>
                    

                    <div class="card containergroup mt-3">
                        <div class="card-header">
                            <h5>New Contract Details</h5>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="contracttype">Terms</label>
                                    <select name="contracttype" id="contracttype" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                    </select>
                                   
                                </div>
                                <div class="col form-group">
                                    <label for="contractposition">Position</label>
                                    <select name="contractposition" id="contractposition" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row"> 
                                <div class="col">
                                    <div class="row">
                                        <div class="col form-group">
                                            <label for="startdate">Start Date</label>
                                            <input type="text" name="startdate" id="startdate" class="form-control form-control-sm">
                                        </div>
                                        <div class="col form-group">
                                            <label for="enddate">End Date</label>
                                            <input type="text" name="enddate" id="enddate" class="form-control form-control-sm">
                                        </div> 
                                    </div>
                                </div>

                                <div class="col">
                                    <div class="row">
                                        <div class="col form-group">
                                            <label for="contractunit">Unit</label>
                                            <select name="contractunit" id="contractunit" class="form-control form-control-sm">
                                                <option value="">&lt;Choose&gt;</option>
                                            </select>
                                        </div>
                                        <div class="col form-group">
                                            <label for="contractdepartment">Department</label>
                                            <select name="contractdepartment" id="contractdepartment" class="form-control form-control-sm">
                                                <option value="">&lt;Choose&gt;</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Multiple users div -->
                <div id="multipleemployees" style="display:none">
                    
                    <div class="row">                        
                        <div class="col col-md-3">                    
                            <!-- Filter Options card -->
                            <div class="card containergroup">
                                <div class="card-header">
                                    <h5>Step 1: Filter Employees</h5>
                                </div>
                                <div class="card-body">
                                    <div class="filteroptions">
                                        <div class="form-group >
                                            <label for="multipleunit">Unit</label>
                                            <select name="multipleunit" id="multipleunit" class="form-control form-control-sm">
                                                <option value="">&lt;All&gt;</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="multipledepartment">Department</label>
                                            <select name="multipledepartment" id="multipledepartment" class="form-control form-control-sm">
                                                <option value="">&lt;All&gt;</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label for="multipleposition">Position</label>
                                            <select name="multipleposition" id="multipleposition" class="form-control form-control-sm">
                                                <option value="">&lt;All&gt;</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label for="multiplestatus">Status</label>
                                            <div class="input-group">
                                                <select name="multiplestatus" id="multiplestatus" class="form-control form-control-sm">
                                                    <option value="expired">Expired</option>
                                                    <option value="due">Due</option>
                                                </select>
                                                <div class="input-group-append">
                                                    <button class="btn btn-sm btn-success" id="filtermultipleemployees"><i class="fal fa-search fa-lf fa-fw"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Contract Details Card -->
                            <div class="card containergroup mt-1">
                                <div class="card-header">
                                    <h5>Step 3: New Contract Details</h5>
                                </div>
                                <div class="card-body">
                                    <!-- <div class="row"> -->
                                    <div class="form-group">
                                        <label for="multiplecontracttype">Contract Type</label>
                                        <select name="multiplecontracttype" id="multiplecontracttype" class="form-control form-control-sm"></select>
                                    </div>
                                    <div class="form-group">
                                        <label for="multiplestartdate">Start Date</label>
                                        <input type="text" name="multiplestartdate" id="multiplestartdate" class="form-control form-control-sm">
                                    </div>

                                    <div class="form-group">
                                        <label for="multipleenddate">End Date</label>
                                        <input type="text" name="multipleenddate" id="multipleenddate" class="form-control form-control-sm">
                                    </div>
                                    <!-- </div> -->
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <!-- Select Multiple employees -->
                            <div class="card containergroup">
                                <div class="card-header">
                                    <h5>Step 2: Select Employees</h5>
                                </div>
                                <div class="card-body">
                                    <table class="table table-sm table-striped table-hover">
                                        <thead>
                                            <th><input type="checkbox" name="selectallmultiple" id="selectallmultiple"></th>
                                            <th>#</th>
                                            <th>Number</th>
                                            <th>Names</th>
                                            <th>Unit</th>
                                            <th>Department</th>
                                            <th>Position</th>
                                            <th>Type</th>
                                            <th>Status</th>
                                        </thead>
                                        <tbody></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-sm"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
            </div>
            </div>
        </div>
    </div>
</body>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.js" integrity="sha256-qSIshlknROr4J8GMHRlW3fGKrPki733tLq+qeMCR05Q=" crossorigin="anonymous"></script> -->
<?php require_once("footer.txt")?>
<script src="../js/contracts.js"></script> 
</html>