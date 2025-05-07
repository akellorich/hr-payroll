<!DOCTYPE html>
<html lang="en">
<head>
   
    <?php  require_once("header.txt")?>
    <title>HR-Payroll - Attendance</title>
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
                Attendance
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

        <main id="attendancedetails">
            <div class="card card-body">
                <nav class="nav-justified ">
                    <!-- Navigation -->
                    <div class="nav nav-tabs " id="employees-tab" role="tablist">
                        <a class="nav-item nav-link active" id="attendance-tab" data-toggle="tab" href="#attendancedata" role="tab" aria-controls="pop1" aria-selected="true">Attendance</a>
                        <a class="nav-item nav-link" id="attendanceactions-tab" data-toggle="tab" href="#attendanceactions" role="tab" aria-controls="pop2" aria-selected="false">Attendance Actions</a>
                        <a class="nav-item nav-link" id="presabs-tab" data-toggle="tab" href="#presabs" role="tab" aria-controls="pop1" aria-selected="true">PresAbs Report</a>
                        <a class="nav-item nav-link" id="staffshifts-tab" data-toggle="tab" href="#staffshifts" role="tab" aria-controls="pop2" aria-selected="false">Staff Shifts</a>
                        <a class="nav-item nav-link" id="overtime-tab" data-toggle="tab" href="#overtime" role="tab" aria-controls="pop2" aria-selected="false">Overtime</a> 
                        <a class="nav-item nav-link" id="shiftregister-tab" data-toggle="tab" href="#shiftregister" role="tab" aria-controls="pop2" aria-selected="false">Shift Register</a>
                        <a class="nav-item nav-link" id="shiftmaster-tab" data-toggle="tab" href="#shiftmaster" role="tab" aria-controls="pop2" aria-selected="false">Shift Master</a>
                    </div>
                </nav>

                <!-- Tabs -->
                <div class="tab-content text-left" id="nav-tabContent">
                    <!-- Attendance Report Page -->
                    <div class="tab-pane fade show active" id="attendancedata" role="tabpanel" aria-labelledby="pop1-tab">
                        <div class="card containergroup mt-3">
                            <div class="card-header">
                                <h3>Filter Options</h3>
                            </div>
                            <div class="card-body">
                                <div id="attendancenotifications"></div>
                                <div class="row">
                                    
                                    <div class="col form-group">
                                        <label for="filterattendancestatus">Status</label>
                                        <select name="filterattendancestatus" id="filterattendancestatus" class="form-control form-control-sm">
                                            <option value="all">&lt;All&gt;</option>
                                            <option value="processed">Processed</option>
                                            <option value="pending">Pending</option>
                                        </select>
                                    </div>

                                    <div class="col form-group">
                                        <label for="attendancedaterange">Date Range</label>
                                        <select name="attendancedaterange" id="attendancedaterange" class="form-control form-control-sm">
                                            <option value="0">&lt;All Dates&gt;</option>
                                            <option value="1">This Week</option>
                                            <option value="2">This Month</option>
                                            <option value="3">Specify Range</option>
                                        </select>
                                    </div> 

                                    <div class="col form-group">
                                        <label for="attendancestartdate">Start Date</label>
                                        <div class="input-group">
                                            <input type="text" name="attendancestartdate" id="attendancestartdate" class="form-control form-control-sm" disabled autocomplete="false">
                                            <div class="input-group-append">
                                                <button class="btn btn-sm btn-outline-secondary" id="selectattendancestartdate"><i class="fal fa-calendar-alt fa-lg fa-fw"></i></button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col form-group">
                                        <label for="attendanceenddate">End Date</label>
                                        <div class="input-group">
                                            <input type="text" name="attendanceenddate" id="attendanceenddate" class="form-control form-control-sm" disabled  autocomplete="false">
                                            <div class="input-group-append">
                                                <button class="btn btn-outline-secondary btn-sm" id="selectattendanceenddate"><i class="fal fa-calendar-alt fa-lg fa-fw"></i></button>
                                                <button class="btn btn-outline-success ml-3 btn-sm" id="fiterattendance"><i class="fal fa-sync fa-fw fa-lg"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <table class="table table-sm table-striped table-hover" id="attendancetable">
                                    <thead>
                                        <th>#</th>
                                        <th>Date</th>
                                        <th>Units</th>
                                        <th>Open</th>
                                        <th>Locked</th>
                                        <th>Employees</th>
                                        <th>Status</th>
                                        <th>Date Added</th>
                                        <th>Added By</th>
                                        <th>&nbsp;</th><!-- Lock -->
                                        <th>&nbsp;</th><!-- Actions -->
                                        <th>&nbsp;</th><!-- Process to payroll -->
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <button class="btn btn-success btn-sm" id="importattendancedata"><i class="fal fa-file-import fa-lg fa-fw"></i> Import Data</button>
                            </div>
                        </div>
                    </div>

                    <!-- PresAbs Report Page -->
                    <div class="tab-pane fade" id="presabs" role="tabpanel" aria-labelledby="pop1-tab">
                        <div class="card containergroup mt-3">
                            <div class="card-header">
                                <h3>Filter Options</h3>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col form-group">
                                        <label for="presabsdepartment">Department</label>
                                        <select name="presabsdepartment" id="presabsdepartment" class="form-control form-control-sm"></select>
                                    </div>

                                    <div class="col formgroup">
                                        <label for="presabsmonth">Month</label>
                                        <select name="presabsmonth" id="presabsmonth" class="form-control form-control-sm"></select>
                                    </div>

                                    <div class="col form-group">
                                        <label for="presabsyear">Year</label>
                                        <div class="input-group">
                                            <select name="presabsyear" id="presabsyear" class="form-control form-control-sm"></select>
                                            <div class="input-group-append">
                                                <button id="loadpresabsreport" class="btn btn-sm btn-success"><i class="fal fa-sync fa-lg fa-fw"></i> Load</button>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                                <table class="table table-sm table-striped table-hover" id="presabscalendar">
                                    <thead>
                                        <th>#</th>
                                        <th>Staff No</th>
                                        <th>Names</th>
                                        <th>Department</th>
                                        <!-- <th>Position</th> -->
                                        <th>P</th>
                                        <th>A</th>
                                        <th>L</th>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <button class="btn btn-sm btn-outline-success" id="exportresabsreport"><i class="fal fa-file-spreadsheet fa-lg fa-fw"></i> Export to Excel</button>
                            </div>
                        </div>
                    </div>

                    <!-- Staff Shifts Page -->
                    <div class="tab-pane fade" id="staffshifts" role="tabpanel" aria-labelledby="pop1-tab">
                        <div class="card containergroup mt-3">
                            <div class="card-header">
                                <h3>Filter Options</h3>
                            </div>
                            <div class="card-body">
                                <div id="staffshiftnotifications"></div>
                                <div class="row">
                                    <div class="col form-group">
                                        <label for="filtershiftunit">Unit</label>
                                        <select name="filtershiftunit" id="filtershiftunit" class="form-control form-control-sm">
                                            <option value="0">&lt;All&gt;</option>
                                        </select>
                                    </div>
                                    
                                    <div class="col form-group">
                                        <label for="filtershiftdepartment">Department</label>
                                        <select name="filtershiftdepartment" id="filtershiftdepartment" class="form-control form-control-sm">
                                            <option value="0">&lt;All&gt;</option>
                                        </select>
                                    </div>

                                    <div class="col form-group">
                                        <label for="filtershiftsection">Section</label>
                                        <div class="input-group">
                                            <select name="filtershiftsection" id="filtershiftsection" class="form-control form-control-sm">
                                                <option value="0">&lt;All&gt;</option>
                                            </select>
                                            <div class="input-group-append">
                                                <button class="btn btn-success btn-sm ml-2 btn-sm" id="filterstaffshift"><i class="fal fa-sync fa-lg fa-fw"></i></button>
                                            </div>
                                        </div>
                                        
                                    </div>

                                    <!-- <div class="col form-group">
                                        <label for="filtershiftname">Shift</label>
                                        <div class="input-group">
                                            <select name="filtershiftname" id="filtershiftname" class="form-control form-control-sm">
                                                <option value="">&lt;Choose&gt;</option>
                                            </select>
                                            <div class="input-group-append">
                                             
                                                <button class="btn btn-success btn-sm ml-2 btn-sm" id="filterstaffshift"><i class="fal fa-sync fa-lg fa-fw"></i></button>
                                            </div>
                                        </div> 
                                        
                                    </div> -->

                                    <!-- <div class="col form-group">
                                        <label for="filtershiftstartdate">Start Date</label>
                                        <div class="input-group">
                                            <input type="text" name="filtershiftstartdate" id="filtershiftstartdate" class="form-control form-control-sm">
                                            <div class="input-group-append">
                                                <button class="btn btn-sm btn-outline-secondary"><i class="fal fa-calendar-alt fa-lg fa-fw"></i></button>
                                            </div>
                                        </div>
                                    </div> -->
                                    
                                    <!-- <div class="col form-group">
                                        <label for="filtershiftenddate">End Date</label>
                                        <div class="input-group">
                                            <input type="text" name="filtershiftenddate" id="filtershiftenddate" class="form-control form-control-sm">
                                            <div class="input-group-append">
                                                <button class="btn btn-sm btn-outline-secondary btn-sm"><i class="fal fa-calendar-alt fa-lg fa-fw"></i></button>
                                                <button class="btn btn-success btn-sm ml-2 btn-sm" id="filterstaffshift"><i class="fal fa-sync fa-lg fa-fw"></i> Load</button>
                                            </div>
                                        </div> 
                                    </div> -->
                                </div>
                                <table class="table table-sm table-striped table-hover" id="filterstaffshifttable">
                                    <thead>
                                        <th>#</th>
                                        <th>Unit</th>
                                        <th>Department</th>
                                        <th>Section</th>
                                        <th>Shift Name</th> 
                                        <th>Staff No</th>
                                        <th>Names</th>
                                        <th>Position</th>
                                        <!-- <th>&nbsp;</th>
                                        <th>&nbsp;</th> -->
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <button class="btn btn-sm btn-success" id="addnewstaffshift"><i class="fal fa-user-edit fa-fw fa-lg"></i> Modify Staff Shift</button>
                            </div>
                        </div>
                    </div>

                    <!-- Overtime Page -->
                    <div class="tab-pane fade" id="overtime" role="tabpanel" aria-labelledby="pop1-tab">
                        <div class="card containergroup mt-3">
                            <div class="card-header">
                                <h3>Filter Options</h3>
                            </div>
                            <div class="card-body">
                                <input type="hidden" name="requisitionid" id="requisitionidfield" value="0">
                                <div id="overtimerequisitionnotifications"></div>
                                <div class="row">
                                    <div class="col form-group">
                                        <label for="filterovertimeunit">Unit</label>
                                        <select name="filterovertimeunit" id="filterovertimeunit" class="form-control form-control-sm"></select>
                                    </div>
                                    <div class="col form-group">
                                        <label for="filterovertimedepartment">Department</label>
                                        <select name="filterovertimedepartment" id="filterovertimedepartment" class="form-control form-control-sm"></select>
                                    </div>

                                    <div class="col form-group">
                                        <label for="filterovertimeshift">Shift</label>
                                        <select name="filterovertimeshift" id="filterovertimeshift" class="form-control form-control-sm"></select>
                                    </div>

                                    <div class="col col-md-2 form-group">
                                        <label for="filterovertimedaterange">Date Range</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                <input type="checkbox" id="filterovertimedaterange" name="filterovertimedaterange" checked>
                                                </div>
                                            </div>
                                            <input type="text" class="form-control form-control-sm" placeholder="All Dates?">
                                        </div>
                                    </div>
                                    <div class="col form-group">
                                        <label for="filterovertimestartdate">Start Date</label>
                                        <div class="input-group">
                                            <input type="text" name="filterovertimestartdate" id="filterovertimestartdate" class="form-control form-control-sm" disabled>
                                            <div class="input-group-append">
                                                <button class="btn btn-sm btn-outline-secondary" id="selectfilterovertimestartdate" disabled><i class="fal fa-calendar-alt fa-fw fa-lg"></i></button>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="col form-group">
                                        <label for="filterovertimeenddate">End Date</label>
                                        <div class="input-group">
                                            <input type="text" name="filterovertimeenddate" id="filterovertimeenddate" class="form-control form-control-sm" disabled>
                                            <div class="input-group-append">
                                                <button class="btn btn-sm btn-outline-secondary" id="selectfilterovertimestartdate" disabled><i class="fal fa-calendar-alt fa-fw fa-lg"></i></button>
                                                <button class="btn btn-sm btn-success ml-1" id="filterovertime"><i class="fal fa-sync fa-lg fa-fw"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-sm table-hover table-striped" id="fiterovertimerequisitionstable">
                                    <thead>
                                        <th>#</th>
                                        <th>Unit</th>
                                        <th>Department</th>
                                        <th>Request Date</th>
                                        <th>Staff</th>
                                        <th>OT Duration</th>
                                        <th>Shift</th>
                                        <th>Status</th>
                                        <th>Date Added</th>
                                        <th>Added By</th>
                                        <th>&nbsp;</th><!-- Edit -->
                                        <th>&nbsp;</th><!-- Approve -->
                                        <th>&nbsp;</th><!-- Cancel -->
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <button class="btn btn-sm btn-success" id="addnewotrequest"><i class="fal fa-plus fa-lg fa-fw"></i> Add New OT Request</button>
                            </div>
                        </div>
                    </div>

                     <div class="tab-pane fade" id="attendanceactions" role="tabpanel" aria-labelledby="pop1-tab">
                        <div class="card containergroup mt-2">
                            <div class="card-header">
                                <h5>Filter Options</h5>
                            </div>
                            <div class="card-body">
                                <div id="attendanceactionsnotifications"></div>
                                <div class="toggle-switch">
                                    <span>Complete</span>
                                    <input type="checkbox" name="completeexceptionsselection" id="completeexceptionsselection" class="toggler" checked>
                                    <span>Exceptions</span>
                                </div>
                                <div id="attendanceactionnotifications"></div>

                                <div class="row">
                                    <div class="col form-group">
                                        <label for="attendanceactionunit">Unit</label>
                                        <select name="attendanceactionunit" id="attendanceactionunit" class="form-control form-control-sm">
                                            <option value="0">&lt;All&gt;</option>
                                        </select>
                                    </div>
                                    <div class="col form-group">
                                        <label for="attendanceactiondepartment">Department</label>
                                        <select name="attendanceactiondepartment" id="attendanceactiondepartment" class="form-control form-control-sm">
                                            <option value="0">&lt;All&gt;</option>
                                        </select>
                                    </div>
                                    <div class="col form-group">
                                        <label for="attendanceactionsection">Section</label>
                                        <select name="attendanceactionsesction" id="attendanceactionsection" class="form-control form-control-sm">
                                            <option value="0">&lt;All&gt;</option>
                                        </select>
                                    </div>

                                    <div class="col form-group">
                                        <label for="attendanceactionstartdate">Date</label>
                                        <div class="input-group">
                                            <input type="text" name="attendanceactionstartdate" id="attendanceactionstartdate" class="form-control form-control-sm" autocomplete="off">
                                            <div class="input-group-append">
                                                <button class="btn btn-sm btn-success" id="filterattendanceactions"><i class="fal fa-sync-alt fa-lg fa-fw"></i> Load</button>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- <div class="col form-group">
                                        <label for="attendanceactionenddate">End Date</label>
                                        <div class="input-group">
                                            <input type="text" name="attendanceactionenddate" id="attendanceactionenddate" class="form-control form-control-sm" autocomplete="off">
                                            
                                        </div>   
                                    </div> -->
                                </div>

                                
                                <div id="exceptionsfilter" style="display:none">
                                    <div    class="d-flex justify-content-between align-items-center mb-4 mt-2">
                                            <div>
                                                <button id="filterabsent" class="btn btn-sm btn-outline-success mr-2 exceptionsfilterbutton">Absent</button>
                                                <button id="filteronleave" class="btn btn-sm btn-outline-success mr-2 exceptionsfilterbutton">On Leave</button>
                                                <button id="filterinvalidsignin" class="btn btn-sm btn-outline-success mr-2 exceptionsfilterbutton">Invalid Clockin</button>
                                                <button id="filterinvalidsignout" class="btn btn-sm btn-outline-success mr-2 exceptionsfilterbutton">Invalid Clockout</button>
                                                <button id="filterunapprovedot" class="btn btn-sm btn-outline-success mr-2 exceptionsfilterbutton">Unapproved OT</button>
                                                <button id="filterlosthours" class="btn btn-sm btn-outline-success mr-2 exceptionsfilterbutton">Lost Hours</button>
                                                <button id="filterinactive" class="btn btn-sm btn-outline-success exceptionsfilterbutton">Inactive</button>
                                               
                                            </div>

                                            <div class="d-flex justify-content-between align-items-center">
                                                <input type="checkbox" id="attendanceactionviewselectedonly" class="form-check-input">
                                                <label for="attendanceactionviewselectedonly" class="form-check-label mt-1">View Checked Only?</label>  
                                            </div>
                                    </div>
                                </div>
                              
                                <table class="table table-sm table-striped table-hover" id="attendanceactionsemployeestable">
                                    <thead>
                                        <th><input type="checkbox" name="selectallattendanceaction" id="selectallattendanceaction"></th>
                                        <th>#</th>
                                        <th>Date</th>
                                        <th>Unit</th>
                                        <th>Department</th>
                                        <th>Section</th>
                                        <th>Staff No</th>
                                        <th>Names</th>
                                        <th>ID Number</th>
                                        <th>Shift</th>
                                        <th>Signin</th>
                                        <th>Signout</th>
                                        <th>Leave</th>
                                        <th>OT/A</th>
                                        <th>OT/U</th>
                                        <th>Lost hours</th>
                                    </thead>
                                    <tbody></tbody>
                                </table>

                                <!-- <div class="row">                                     -->
                                <div class='d-flex justify-content-between mt-2'>
                                    <div class='d-flex justify-content-between'>
                                        <button class="btn btn-sm btn-outline-success mr-2 actionbutton" id="markpresent"><i class="fal fa-user-check fa-lg fa-fw"></i> Mark Present</button>
                                        <button class="btn btn-sm btn-outline-danger mr-2 actionbutton" id="markabsent"><i class="fal fa-user-times fa-lg fa-fw"></i> Mark Absent</button>
                                        <button class="btn btn-sm btn-outline-secondary mr-2 actionbutton" id="applyleave"><i class="fal fa-bed fa-lg fa-fw"></i> Apply Leave</button>
                                        <button class="btn btn-sm btn-outline-success mr-2 actionbutton" id="markclockin"><i class="fal fa-user-clock fa-lg fa-fw"></i> Mark Clockin</button>
                                        <button class="btn btn-sm btn-outline-danger actionbutton" id="markclockout"><i class="fal fa-sign-out fa-lg fa-fw"></i> Mark Clockout</button>
                                    </div>
                                   
                                    <div class='d-flex justify-content-end'>
                                        <button id="saveattendancedetails" class="btn btn-success btn-sm mr-2"><i class="fal fa-save fa-lg fa-fw"></i> Save Changes</button>
                                        <button id="closeattendanceregister" class="btn btn-danger btn-sm"><i class="fal fa-clipboard-list-check fa-lg fa-fw"></i> Close Register</button>
                                    </div>
                                   
                                </div>

                                    
                                <!-- </div> -->
                                
                            </div>
                        </div>
                    </div>

                   
                    <!--<div class="tab-pane fade" id="shiftregister" role="tabpanel" aria-labelledby="pop1-tab">
                        <h2>Shift Register</h2>
                    </div> -->
                    
                    <!-- Shift Master Page -->
                    <div class="tab-pane fade" id="shiftmaster" role="tabpanel" aria-labelledby="pop1-tab">
                        <div id="shiftnotifications"></div>
                        <table class="table table-sm table-striped table-hover mt-3" id="shiftmastertable">
                            <thead>
                                <th>#</th>
                                <th>Shift Name</th>
                                <th  class='text-center'>Shift Type</th>
                                <th  class='text-center'>Monday</th>
                                <th  class='text-center'>Tuesday</th>
                                <th  class='text-center'>Wednesday</th>
                                <th  class='text-center'>Thursday</th>
                                <th  class='text-center'>Friday</th>
                                <th  class='text-center'>Saturday</th>
                                <th  class='text-center'>Sunday</th>
                                <th >&nbsp;</th>
                                <th>&nbsp;</th>
                            </thead>
                            <tbody></tbody>
                        </table>
                        <button id="addnewshift" class="btn btn-success btn-sm"><i class="fal fa-plus fa-fw fa-lg"></i> Add New Shift</button>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <!-- End of Template -->

    <!-- Modal for Importing attendance data -->
    <div class="modal" tabindex="-1" role="dialog" id="attendancedatamodal">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Import Attendance Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="importattendancenotifications"></div>
                <div class="form-group">
                    <label for="chooseimportattendancedata">Select import source ...</label>
                    <input type="file" name="chooseimportattendancedata" id="chooseimportattendancedata" class="form-control form-control-sm" accept=".xls,.xlsx" >
                </div>
                
                <div class="row">
                    <!-- <div class="col form-group">
                        <label for="attendanceimportshift">Shift</label>
                        <select name="attendanceimportshift" id="attendanceimportshift" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                        </select>
                    </div> -->

                    <div class="col form-group">
                        <label for="attendanceimportdate">Date</label>
                        <div class="input-group">
                            <input type="text" name="attendanceimportdate" id="attendanceimportdate" class="form-control form-control-sm"  autocomplete="false">
                            <div class="input-group-append">
                                <button class="btn btn-sm btn-outline-secondary" id="selectattendanceimportdate"><i class="fal fa-calendar-alt fa-lg fa-fw"></i></button>
                            </div>
                        </div>
                    </div>

                    <div class="col form-group">
                        <label for="importattendancestaffcol">Staff No. Collumn</label>
                        <select name="importattendancestaffcollumn" id="importattendancestaffcollumn" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                        </select>
                    </div>

                    <div class="col form-group">
                        <label for="importattendanceclokintime">Clockin Collumn</label>
                        <select name="importattendanceclokintime" id="importattendanceclokintime" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>    
                        </select>
                    </div>
                    <div class="col form-group">
                        <label for="importattendanceclokouttime">Clockout Collumn</label>
                        <select name="importattendanceclokouttime" id="importattendanceclokouttime" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                        </select>
                    </div>
                </div>

                <div class="scrollable">
                     <table class="table table-sm table-striped table-hover" id="importattendancetable">
                        <thead></thead>
                        <tbody></tbody>
                    </table>
                </div>

                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="attendanceoverwriteexisting">
                    <label class="form-check-label" for="attendanceoverwriteexisting">Overwrite existing data?</label>
                </div>

            </div>
            <div class="modal-footer">
                <button class="btn btn-outline-danger btn-sm" id='removeinvaliddata' data-id=''><i class="fal fa-user-alt-slash fa-lg fa-fw"></i>Remove Invalid Data</button>
                <button type="button" class="btn btn-sm btn-outline-success" id="validatedata"><i class="fal fa-shield-check fa-lg fa-fw"></i> Validate Data</button>
                <button type="button" class="btn btn-success btn-sm" id="saveimportattendancedata"><i class="fal fa-save fa-lg fa-fw"></i> Save and Finish</button>
                <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i> Close</button>
            </div>
            </div>
        </div>
    </div>

    <!-- Modal for Managing shift details -->
    <div class="modal" tabindex="-1" role="dialog" id="shiftdetailsmodal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Shift Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="shiftdetailsnotifications" class='pt-3'></div>
                <input type="hidden" name="shiftid" id="shiftid" value="0">
                <div class="row">
                    <div class="col form-group">
                        <label for="shiftname">Shift Name</label>
                        <input type="text" name="shiftname" id="shiftname" class="form-control form-control-sm">
                    </div>
                    <div class="col">
                        <div class="row">
                             <div class="col form-group">
                                <label for="shifttype">Shift Type</label>
                                <select name="shifttype" id="shifttype" class="form-control form-control-sm">
                                    <option value="">&lt;Choose&gt;</option>
                                    <option value="day">Day</option>
                                    <option value="night">Night</option>
                                </select>
                            </div>
                            <div class="col form-group">
                                <label for="defaultshift">Default Shift</label>
                                <select name="defaultshift" id="defaultshift" class="form-control form-control-sm">
                                    <option value="0">No</option>
                                    <option value="1">Yes</option>
                                </select>
                            </div>
                        </div>
                    </div>
                   
                </div>
                <table class="table table-sm table-striped table-hover" id="shiftdetailstable">
                    <thead>
                        <th>#</th>
                        <th>Day</th>
                        <th>Status</th>
                        <th>Starts</th>
                        <th>Ends</th>
                        <th style="width:100px">Break</th>
                    </thead>
                    <tbody>
                        <tr data-shiftdetailsid="0">
                            <td>1</td>
                            <td>Monday</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr data-shiftdetailsid="0">
                            <td>2</td>
                            <td>Tuesday</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr data-shiftdetailsid="0">
                            <td>3</td>
                            <td>Wednesday</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr data-shiftdetailsid="0">
                            <td>4</td>
                            <td>Thursday</td>  
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr data-shiftdetailsid="0">
                            <td>5</td>
                            <td>Friday</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr data-shiftdetailsid="0">
                            <td>6</td>
                            <td>Saturday</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr data-shiftdetailsid="0">
                            <td>7</td>
                            <td>Sunday</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-sm" id="saveshiftmaster"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i>Close</button>
            </div>
            </div>
        </div>
    </div>

    <!-- Overtime application details modal -->
    <div class="modal" tabindex="-1" role="dialog" id="otapplicationdetailsmodal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Overtime Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="otdetailsnotifications"></div>
                    <div class="row">
                        <div class="col form-group">
                            <label for="otunit">Unit</label>
                            <select name="otunit" id="otunit" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="otdepartment">Department</label>
                            <div class="input-group">
                                 <select name="otdepartment" id="otdepartment" class="form-control form-control-sm">
                                    <option value="">&lt;Choose&gt;</option>
                                </select>
                                <div class="input-group-append">
                                    <button class="btn btn-sm btn-outline-success" id="getotemployees"><i class="fal fa-sync fa-lg fa-fw"></i></button>
                                </div>
                            </div>
                           
                        </div>
                    </div> 

                    <div class="row">
                        <div class="col form-group">
                            <label for="otshift">Shift</label>
                            <select name="otshift" id="otshift" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                        
                        <div class="col form-group">
                            <label for="otduration">Duration <small>Hrs</small></label>
                            <input type="number" name="otduration" id="otduration" class="form-control form-control-sm">
                        </div>
                    </div>
                    <!-- <div class="col"> -->
                    <div class="row">
                        <div class="col form-group">
                            <label for="otrequeststartdate">Request Start Date</label>
                            <div class="input-group">
                                <input type="text" name="otrequeststartdate" id="otrequeststartdate" class="form-control form-control-sm">
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary btn-sm"><i class="fal fa-calendar-alt fa-fw fa-lg"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="col form-group">
                            <label for="otrequestenddate">Request End Date</label>
                            <div class="input-group">
                                <input type="text" name="otrequestenddate" id="otrequestenddate" class="form-control form-control-sm">
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary btn-sm"><i class="fal fa-calendar-alt fa-fw fa-lg"></i></button>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <!-- </div> -->

                    <div class="form-group">
                            <label for="otnarration">Narration</label>
                            <textarea name="otnarration" id="otnarration" class="form-control form-control-sm"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="otstaff">Select Staff</label>
                        <div class="scrollable scrollable-small">
                            <table class="table table-sm table-striped table-hover" id="otemployeeslist">
                                <thead>
                                    <th><input type="checkbox" name="selectallotemployees" id="selectallotemployees"></th>
                                    <th>#</th>
                                    <th>Staff No</th>
                                    <th>Names</th>
                                    <th>Position</th>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div> 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="saveotrequestbutton"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i> Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for staff shift details -->
    <div class="modal" tabindex="-1" role="dialog" id="staffshiftdetailsmodal">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Staff Shift Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="staffshiftdetailsnotifications"></div>
                    <div class="row">
                        <div class="col form-group">
                            <label for="staffshiftdetailsunit">Unit</label>
                            <select name="staffshiftdetailsunit" id="staffshiftdetailsunit" class="form-control form-control-sm"></select>
                        </div>

                        <div class="col form-group">
                            <label for="staffshiftdetailsdepartment">Department</label>
                            <select name="staffshiftdetailsdepartment" id="staffshiftdetailsdepartment" class="form-control form-control-sm"></select>
                        </div>

                        <div class="col form-group">
                            <label for="staffshiftdetailssection">Section</label>
                            <select name="staffshiftdetailssection" id="staffshiftdetailssection" class="form-control form-control-sm"></select>
                        </div>

                        <div class="col form-group">
                            <label for="staffdetailsshiftname">New Shift</label>
                            <select name="staffdetailsshiftname" id="staffdetailsshiftname" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>

                    </div>
                    <!-- <div class="row">
                        
                        <div class="col form-group">
                            <label for="staffdetailsstatus">Status</label>
                            <select name="staffdetailsstatus" id="staffdetailsstatus" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                                <option value="working">Working</option>
                                <option value="offduty">Off Duty</option>
                            </select>
                        </div>
                    </div> -->
                    <div class="scrollable scrollable-small">
                        <table class="table table-sm table-striped table-hover" id="staffshiftdetailstable">
                            <thead>
                                <th><input type="checkbox" name="selectallstaffshiftemployees" id="selectallstaffshiftemployees"></th>
                                <th>#</th>
                                <th>Staff Number</th>
                                <th>Names</th>
                                <th>Position</th>
                                <th>Current Shift</th>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savestaffshift"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i> Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modalfor locking import attendance -->
    <div class="modal" tabindex="-1" role="dialog" id='attendanceunitlockmodal'>
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Lock attendance data import</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="lockimportattendancedatanotifications" class="mb-2"></div>
                <table class="table table-sm table-striped table-hover" id="attendanceunittable" data-attendanceid="">
                    <thead>
                        <th><input type="checkbox" name="selectallattendanceunits" id="selectallattendanceunits"></th>
                        <th>#</th>
                        <th>Unit Code</th>
                        <th>Unit Name</th>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-sm" id="lockattendancedataimport"><i class="fal fa-lock-alt fa-fw fa-lg"></i> Lock Data Import</button>
                <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-fw fa-lg"></i>Close Window</button>
            </div>
            </div>
        </div>
    </div>

    <!-- modal for marking present attendance -->
    <div class="modal" tabindex="-1" role="dialog" id="markpresentmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Mark Present Attendance</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="markpresentnotifications"></div>
                <div class="form-group">
                    <label for="markpresentclockin">Clock In</label>
                    <input type="time" name="markpresentclockin" id="markpresentclockin" class="form-control form-control-sm">
                </div>

                <div class="form-group">
                    <label for="markpresentclockout">Clock Out</label>
                    <input type="time" name="markpresentclockout" id="markpresentclockout" class="form-control form-control-sm">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-sm" id="savemarkpresent"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i> Close</button>
            </div>
            </div>
        </div>
    </div>

    <!-- Modal for marking clockin -->
    <div class="modal" tabindex="-1" role="dialog" id="markclockintimemodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Mark Employee Clockin</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="markclockintimenotifications"></div>
                    <div class="form-group">
                        <label for="markclockintime">Clockin Time</label>
                        <input type="time" name="" id="markclockintime" class="form-control form-control-sm">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="saveclockintime">Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for marking clockout -->
    <div class="modal" tabindex="-1" role="dialog" id="markclockouttimemodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Mark Employee Clockout</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="markclockouttimenotifications"></div>
                    <div class="form-group">
                        <label for="markclockouttime">Clockout Time</label>
                        <input type="time" name="markclockouttime" id="markclockouttime" class="form-control form-control-sm">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="saveclockouttime">Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal attendance for leave application  -->

    <div class="modal fade" id="attendanceleaveapplicationmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document" >
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Leave Application Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="attendanceleaveapplicationnotifications"></div>
                    <div class="form-group">
                        <label for="leavedate">Leave Date</label>
                        <input type="text" name="leavedate" id="leavedate" class="form-control form-control-sm" disabled>
                    </div>

                    <div class="form-group">
                        <label for="leavetype">Leave Type</label>
                        <select name="leavetype" id="leavetype" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                        </select>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="halfdayapplication">Half Day Application</label>
                            <select name="halfdayapplication" id="halfdayapplication" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                                <option value="1">Yes</option>
                                <option value="0">No</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="shifthalf">Shift Half</label>
                            <select name="shifthalf" id="shifthalf" class="form-control form-control-sm" disabled>
                                <option value="">&lt;Choose&gt;</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="leaveapplicationnarration">Narration</label>
                        <textarea name="leaveapplicationnarration" id="leaveapplicationnarration" rows="4" class="form-control form-control-sm"></textarea>
                    </div>
                    <!-- <div class="row">
                        <div class="col form-group">
                            <label for="leavestarttime">Start Time</label>
                            <input type="text" name="leavestarttime" id="leavestarttime" class="form-control form-control-sm" disabled>
                        </div>

                        <div class="col form-group">
                            <label for="leaveendtime">End Time</label>
                            <input type="text" name="leaveendtime" id="leaveendtime" class="form-control form-control-sm" disabled>
                        </div>
                    </div> -->
                   
                </div>
                <div class="modal-footer"> 
                    <button type="button" class="btn btn-success btn-sm" id="saveleaveapplication"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>
</body>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.js" integrity="sha256-qSIshlknROr4J8GMHRlW3fGKrPki733tLq+qeMCR05Q=" crossorigin="anonymous"></script> -->
<?php require_once("footer.txt")?>
<script src="../js/attendance.js"></script> 
</html>