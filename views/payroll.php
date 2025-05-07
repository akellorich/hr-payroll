<!DOCTYPE html>
<html lang="en">
<head>
   
    <?php  require_once("header.txt")?>
    <!-- Custom CSS for progress-wizard -->
    <link rel="stylesheet" href="../plugins/progress-wizard-custom.css">
    <style>
        #leavecalendar {
            max-width: 100%;
            margin: 0 auto;
            height:calc(100vh - 225px);
        }
    </style>
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
                Payroll
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
            <div class="card card-body">
                <nav class="nav-justified ">
                    <!-- Navigation -->
                    <div class="nav nav-tabs " id="employees-tab" role="tablist">
                        <!-- <a class="nav-item nav-link active" id="employees-tab" data-toggle="tab" href="#employees" role="tab" aria-controls="pop1" aria-selected="true">Employees</a> -->
                        <a class="nav-item nav-link" id="processing-tab" data-toggle="tab" href="#processing" role="tab" aria-controls="pop2" aria-selected="false">Processing</a>
                        <!-- <a class="nav-item nav-link" id="jobgroups-tab" data-toggle="tab" href="#jobgroups" role="tab" aria-controls="pop2" aria-selected="false">Grades</a>
                        <a class="nav-item nav-link" id="positions-tab" data-toggle="tab" href="#positions" role="tab" aria-controls="pop2" aria-selected="false">Positions</a>
                        <a class="nav-item nav-link" id="salarystructure-tab" data-toggle="tab" href="#salarystructures" role="tab" aria-controls="pop2" aria-selected="false">Scales</a>
                        <a class="nav-item nav-link" id="banks-tab" data-toggle="tab" href="#banks" role="tab" aria-controls="pop2" aria-selected="false">Banks</a>
                        <a class="nav-item nav-link" id="payrollitems-tab" data-toggle="tab" href="#payrollitems" role="tab" aria-controls="pop2" aria-selected="false">Items</a>
                        <a class="nav-item nav-link" id="creditors-tab" data-toggle="tab" href="#creditors" role="tab" aria-controls="pop2" aria-selected="false">Creditors</a> -->
                        <!-- <a class="nav-item nav-link" id="leavesettings-tab" data-toggle="tab" href="#leavesettings" role="tab" aria-controls="pop2" aria-selected="false">Leaves</a> -->
                        <!-- <a class="nav-item nav-link" id="categories-tab" data-toggle="tab" href="#categories" role="tab" aria-controls="pop2" aria-selected="false">Categories</a>
                        <a class="nav-item nav-link" id="units-tab" data-toggle="tab" href="#unitsmenu" role="tab" aria-controls="pop2" aria-selected="false">Units</a>
                        <a class="nav-item nav-link" id="departments-tab" data-toggle="tab" href="#departments" role="tab" aria-controls="pop2" aria-selected="false">Departments</a>
                        <a class="nav-item nav-link" id="emplymentterms-tab" data-toggle="tab" href="#employmentterms" role="tab" aria-controls="pop2" aria-selected="false">Terms</a> -->
                        <a class="nav-item nav-link" id="reportsmenu-tab" data-toggle="tab" href="#reportsmenu" role="tab" aria-controls="pop2" aria-selected="false">Reports</a>
                    </div>
                    <!-- Pages -->
                    <div class="tab-content text-left" id="nav-tabContent">
                        <!-- Processing Page -->
                        <div id="payrollnotifications"></div>
                        <div class="tab-pane fade show active" id="processing" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3" id="payrollprocessingnotifications"></div>
                            <table class="table table-striped table-hover table-sm" id="processedpayrollstable">
                                <thead>
                                    <th>#</th>
                                    <th>Date Processed</th>
                                    <th>Month</th>
                                    <th>Year</th>
                                    <th>Employees</th>
                                    <th>Gross Salary</th>
                                    <th>Deductions</th>
                                    <th>Net Salary</th>
                                    <th>Processed By</th>
                                    <th>Status</th>
                                    <th>&nbsp;</th> <!-- View Payroll register -->
                                    <th>&nbsp;</th> <!-- Close Payroll Period -->
                                </thead>
                                <tbody></tbody>
                            </table>
                            <button class="btn btn-sm btn-success" id="newpayrollprocessing"><i class="fal fa-sparkles fa-lg fa-fw"></i> New Payroll Processing</button>
                            <button class="btn btn-outline-success btn-sm ml-4" id="importemployeepayrollitems"><i class="fal fa-file-import fa-lg fa-fw"></i> Import Employee Payroll Items</button>
                        </div>

                        <!-- Reports Page -->
                        <div class="tab-pane fade" id="reportsmenu" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <div class="card containergroup">
                                <div class="card-header">
                                    <h5>Fiter Options</h5>
                                </div>
                                <div class="card-body">
                                    <div id="filterreportnotifications"></div>

                                    <div class="row">
                                        <div class="col col-md-3">
                                            <label for="reportname">Report Name</label>
                                            <select name="reportname" id="reportname" class="form-control form-control-sm">
                                                <!-- <option value="">&lt;Choose&gt;</option> -->
                                                <option value="payrollregister">Payroll Register</option>
                                                <option value="staffpayslips">Staff Payslips</option>
                                                <option value="statutoryremittances">Statutory Remittances</option>
                                                <option value="bankremittances">Bank Remittance Advices</option>
                                                <option value="thirdpatyremittances">Third Party Remittances</option>
                                                <option value="payrollchanges">Payroll Changes</option>
                                                <option value="paymentsummary">Earnings Summary</option>
                                                <option value="deductionsummary">Deductions Summary</option>
                                                <option value="p9deductioncard">P9 Deduction Cards</option>
                                                <option value="p10deductionsummary">P10 Deduction Summary</option>
                                            </select>
                                        </div>
                                        <div class="col">
                                            <div class="row">
                                                <div class="col" id="filterpayrollregister">
                                                    <label for="payrollregisterreporttype">Report Type</label>
                                                    <select name="payrollregisterreporttype" id="payrollregisterreporttype" class="form-control form-control-sm">
                                                        <option value="summarized">Summarized</option>
                                                        <option value="detailed">Detailed</option>
                                                    </select>
                                                </div>

                                                <div class="col" id="filterstatutoryremittances" style="display:none">
                                                    <label for="statutoryremittanceadvises">Statutory Remmittance</label>
                                                    <select name="statutoryremittanceadvises" id="statutoryremittanceadvises" class="form-control form-control-sm"></select>
                                                </div>

                                                <div class="col" id="filterreportbanks" style="display:none">
                                                    <label for="filterpayrollbanks">Banks</label>
                                                    <select name="filterpayrollbanks" id="filterpayrollbanks" class="form-control form-control-sm"></select>
                                                </div>

                                                <div class="col" id="filterthirdparties" style="display:none">
                                                    <label for="filterpayrollthirdparties">Third Party</label>
                                                    <select name="filterpayrollthirdpaties" id="filterpayrollthirdpaties" class="form-control form-control-sm"></select>
                                                </div>

                                                <div class="col">
                                                    <div class="row">
                                                        <div class="col filterreportperiod form-group">
                                                                <label for="filterreportmonth">Month</label>
                                                                <select name="filterreportmonth" id="filterreportmonth" class="form-control form-control-sm"></select>
                                                        </div>

                                                        <div class="col form-group">
                                                            <label for="filterreportyear">Year</label>
                                                            <div class="input-group">
                                                                <select name="filterreportyear" id="filterreportyear" class="form-control form-control-sm"></select>
                                                                <div class="input-append">
                                                                    <button class="btn btn-sm btn-success" id="filterreport"><i class="fal fa-search fa-lg fa-fw"></i></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col col-md-2">
                                            <div class="form-group">
                                                <label for="">&nbsp;</label>
                                                <div class="dropdown">
                                                    <button class="btn btn-outline-primary btn-sm dropdown-toggle" type="button" id="reportoutput" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        Select Report Output
                                                    </button>
                                                    <div class="dropdown-menu" aria-labelledby="reportoutput">
                                                        <a class="dropdown-item" href="#" id="exportreport"><i class="fad fa-cloud-download fa-lg fa-fw text-primary"></i> Export</a>
                                                        <a class="dropdown-item" href="#" id="printreport"><i class="fad fa-print fa-lg fa-fw text-primary"></i> Print</a>
                                                        <a class="dropdown-item" href="#" id="emailreport"><i class="fad fa-envelope-open-text fa-lg fa-fw text-primary"></i> Email</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <table class="table table-sm table-striped table-hover" id="payrollreport"></table>

                                    <div class="table-container">

                                        <div id="payrollchangesreport" style="display:none">
                                            <nav class="nav-justified ">
                                                <div class="nav nav-tabs " id="payrollchangesnav-tab" role="tablist">
                                                    <a class="nav-item nav-link active" id="payrollchanges-tab" data-toggle="tab" href="#payrollchangesdetails" role="tab" aria-controls="pop1" aria-selected="true">Changes</a>
                                                    <a class="nav-item nav-link" id="entrants-tab" data-toggle="tab" href="#entrantdetails" role="tab" aria-controls="pop2" aria-selected="false">Entrants</a>
                                                    <a class="nav-item nav-link" id="exits-tab" data-toggle="tab" href="#existsdetails" role="tab" aria-controls="pop2" aria-selected="false">Exits</a>
                                                </div>

                                                <div class="tab-content text-left" id="nav-tabContent">

                                                    <div class="tab-pane fade show active" id="payrollchangesdetails" role="tabpanel" aria-labelledby="pop1-tab">
                                                        <div class="pt-3"></div>
                                                        
                                                    </div>

                                                    <div class="tab-pane fade" id="entrantdetails" role="tabpanel" aria-labelledby="pop2-tab">
                                                        <div class="pt-3"></div>
                                                        <h1>Entrants</h1>
                                                    </div>

                                                    <div class="tab-pane fade" id="existsdetails" role="tabpanel" aria-labelledby="pop2-tab">
                                                        <div class="pt-3"></div>
                                                        <h1>Exits</h1>
                                                    </div>

                                                </div>
                                            </nav>
                                        </div>

                                        <div id="p10format" style="display:none">
                                            <!-- nav for p10 csv format -->
                                            <div class="nav nav-tabs " id="payrollchangesnav-tab" role="tablist">
                                                <a class="nav-item nav-link active" id="normalemployees-tab" data-toggle="tab" href="#normalemployees" role="tab" aria-controls="pop1" aria-selected="true">Normal</a>
                                                <a class="nav-item nav-link" id="disabilityemployees-tab" data-toggle="tab" href="#disabilityemployees" role="tab" aria-controls="pop2" aria-selected="false">Disability</a>
                                                <a class="nav-item nav-link" id="arrearsemployees-tab" data-toggle="tab" href="#arrearsemployees" role="tab" aria-controls="pop2" aria-selected="false">Arrears</a>
                                            </div>

                                            <!-- Tab panels -->
                                            <div class="tab-content text-left" id="nav-tabContent">

                                                <div class="tab-pane fade show active" id="normalemployees" role="tabpanel" aria-labelledby="pop1-tab">
                                                    <div class="pt-3 "></div>
                                                    <table class="table table-striped table-sm table-hover table-responsive" id="normalemployeestable">
                                                        <thead>
                                                            <th>PIN Number</th>
                                                            <th>Names</th>
                                                            <th>Resident</th>
                                                            <th>Primary/Secondary</th>
                                                            <th>Basic</th>
                                                            <th>House</th>
                                                            <th>Commuter</th>
                                                            <th>Zero</th>
                                                            <th>Zero</th>
                                                            <th>Zero</th>
                                                            <th>Arrears</th>
                                                            <th>Other Allowances</th>
                                                            <th>Blank</th>
                                                            <th>Zero</th>
                                                            <th>Zero</th>
                                                            <th>Blank</th>
                                                            <th>Zero</th>
                                                            <th>Benefit Not Given</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>NSSF</th>
                                                            <th>Blank</th>
                                                            <th>Zero</th>
                                                            <th>Zero</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Relief</th>
                                                            <th>Zero</th>
                                                            <th>Blank</th>
                                                            <th>PAYE</th>
                                                        </thead>
                                                        <tbody></tbody>
                                                    </table>
                                                </div>

                                                <div class="tab-pane fade" id="disabilityemployees" role="tabpanel" aria-labelledby="pop2-tab">
                                                    <div class="pt-3"></div>
                                                    <table class="table table-striped table-sm table-hover table-responsive" id="disabledemployeestable">
                                                        <thead>
                                                            <th>PIN Number</th>
                                                            <th>Names</th>
                                                            <th>Resident</th>
                                                            <th>Primary/Secondary</th> 
                                                            <th>Certificate Number</th>
                                                            <th>Basic</th>
                                                            <th>House</th>
                                                            <th>Commuter</th>
                                                            <th>Zero</th>
                                                            <th>Zero</th>
                                                            <th>Zero</th>
                                                            <th>Arrears</th>
                                                            <th>Other Allowances</th>
                                                            <th>Blank</th>
                                                            <th>Zero</th>
                                                            <th>Zero</th>
                                                            <th>Blank</th>
                                                            <th>Zero</th>
                                                            <th>Benefit Not Given</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>NSSF</th>
                                                            <th>Blank</th>
                                                            <th>Zero</th>
                                                            <th>Zero</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Relief</th>
                                                            <th>Zero</th>
                                                            <th>Blank</th>
                                                            <th>PAYE</th>
                                                        </thead>
                                                        <tbody></tbody>
                                                    </table>
                                                </div>

                                                <div class="tab-pane fade" id="arrearsemployees" role="tabpanel" aria-labelledby="pop2-tab">
                                                    <div class="pt-3"></div>
                                                    <table class="table table-striped table-sm table-hover table-responsive" id="arrearsemployeestable">
                                                        <thead>
                                                            <th>PIN Number</th>
                                                            <th>Names</th>
                                                             <th>Month</th>
                                                            <th>Year</th>
                                                            <th>Resident</th>
                                                            <th>Primary/Secondary</th> 
                                                            <th>Certificate Number</th>
                                                            <th>Basic</th>
                                                            <th>House</th>
                                                            <th>Commuter</th>
                                                            <th>Zero</th>
                                                            <th>Zero</th>
                                                            <th>Zero</th>
                                                            <th>Arrears</th>
                                                            <th>Other Allowances</th>
                                                            <th>Blank</th>
                                                            <th>Zero</th>
                                                            <th>Zero</th>
                                                            <th>Blank</th>
                                                            <th>Zero</th>
                                                            <th>Benefit Not Given</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>NSSF</th>
                                                            <th>Blank</th>
                                                            <th>Zero</th>
                                                            <th>Zero</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Blank</th>
                                                            <th>Relief</th>
                                                            <th>Zero</th>
                                                            <th>Blank</th>
                                                            <th>PAYE</th>
                                                        </thead>
                                                        <tbody></tbody>
                                                    </table>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                   
                                </div>
                            </div>  
                        </div>

                    </div>
                </nav>
            </div>
           
        </main>

    </div>
    <!-- End of Template -->
    
    <!-- Modal for new payroll processing -->
    <div class="modal" tabindex="-1" id="payrollprocessingmodal">
        <div class="modal-dialog" >
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Payroll Processing</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="payrollprocessingdetailsnotifications"></div>
                    <div class="row">
                        <div class="col form-group">
                            <label for="payrollmonth">Month</label>
                            <select name="payrollmonth" id="payrollmonth" class="form-control form-control-sm"></select>
                        </div>
                        <div class="col form-group">
                            <label for="payrollyear">Year</label>
                            <select name="payrollyear" id="payrollyear" class="form-control form-control-sm"></select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col form-group">
                            <label for="payrollstartdate">Start Date</label>
                            <input type="text" name="payrollstarttime" id="payrollstartdate" class="form-control form-control-sm">
                        </div>
                        <div class="col form-group">
                            <label for="payrollenddate">End Date</label>
                            <input type="text" name="payrollenddate" id="payrollenddate" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="computefactor">Computer On</label>
                            <select name="computefactor" id="computefactor" class="form-control form-control-sm">
                                <option value="days">Days</option>
                                <option value="hours">Hours</option>
                            </select>
                        </div>
                        <div class="col form-group">
                            <label for="payrolltaxlabel">Tax Label</label>
                            <select name="payrolltaxlabel" id="payrolltaxlabel" class="form-control form-control-sm"></select>
                        </div>
                    </div>
                   
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="processpayroll"><i class="fal fa-hourglass fa-fw fa-lg"></i> Process Payroll</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-fw fa-lg"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Holiday details  -->
    <div class="modal" tabindex="-1" role="dialog" id="holidaydetails">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Holiday Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="holidaydetailsnotifications"></div>
                    <input type="hidden" name="holidayid" id="holidayid" value="0">
                    <div class="form-group">
                        <label for="holidayname">Holiday Name</label>
                        <input type="text" name="holidayname" id="holidayname" class="form-control form-control-sm">
                    </div>

                    <div class="form-group">
                        <label for="holidaydate">Date</label>
                        <input type="text" name="holidaydate" id="holidaydate" class="form-control form-control-sm date-control">
                    </div>

                    <div class="form-group">
                        <label for="holidayrepeatsannually">Repeats Annually</label>
                        <select name="holidayrepeatsannually" id="holidayrepeatsannually" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                            <option value="1">Yes</option>
                            <option value="0">No</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="holidayskipweekends">Skip Weekends</label>
                        <select name="holidayskipweekends" id="holidayskipweekends" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                            <option value="1">Yes</option>
                            <option value="0">No</option>
                        </select>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savepublicholiday"><i class="fal fa-save fa-fw fa-lg"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-secondary btn-sm" id="clearpublicholiday"><i class="fal fa-sparkles fa-fw fa-lg"></i> Clear Form</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-fw fa-lg"></i></button>
                </div>
            </div>
        </div>
    </div>


    <!-- Contract Details Modal -->
    <div class="modal" tabindex="-1" role="dialog" id="contractdetailsmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Contract Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="contractdepartment">Department</label>
                    <select name="contractdepartment" id="contractdepartment" class="form-control form-control-sm">
                        <option value="">&lt;Choose&gt;</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="contractposition">Position</label>
                    <selct id="contractposition" class="form-control form-control-sm">
                        <option value="">&lt;Choose&gt;</option>
                    </selct>
                </div>

                <div class="row">
                    <div class="col form-group">
                        <label for="contractgrade">Grade</label>
                        <select id="contractgrade" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                        </select>
                    </div>

                    <div class="col form-group">
                        <label for="contractnotch">Notch</label>
                        <select name="contractnotch" id="contractnotch" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                        </select>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="contractduration">Duration (m)</label>
                    <input type="number" name="contractduration" id="contractduration" class="form-control form-control-sm">
                </div>

                <div class="row">
                    <div class="col form-group">
                        <label for="contractstartdate">Start Date</label>
                        <input type="text" name="contractstartdate" id="contractstartdate" class="form-control form-control-sm">
                    </div>
                    <div class="col form-group">
                        <label for="contractenddate">End Date</label>
                        <input type="text" name="contractenddate" id="contractenddate" class="form-control form-control-sm" disabled>
                    </div>
                </div>
            </div>
            
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-sm"><i class="fal fa-save fa-lg fa-fw"></i> Save Changes</button>
                <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i> Close</button>
            </div>
            </div>
        </div>
    </div>

    <!-- Modal for Import employee payroll items  -->
    <div class="modal" tabindex="-1" role="dialog" id="importemployeepayrollitemsmodal">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Import Employee Payroll Items</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="importemppayitemsnotifications"></div>
                    <div class="row">
                        <div class="col form-group col-md-6">
                            <label for="importpayrollitemsfile">Select File <small>(*.csv, *.xls or *.xlsx)</small></label>
                            <input type="file" name="importpayrollitemsfile" id="importpayrollitemsfile" class="form-control form-control-sm" accept=".csv, .xls, .xlsx">
                        </div>

                        <div class="col form-group">
                            <label for="importpayrollitemstaffnumbercol">Staff Number Collumn</label>
                            <select name="importpayrollitemstaffnumbercol" id="importpayrollitemstaffnumbercol" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="importpayrollitemamountcol">Amount Collumn</label>
                            <select name="importpayrollitemamountcol" id="importpayrollitemamountcol" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="importpayrollitemcategory">Payroll Item Category</label>
                            <select name="importpayrollitemcategory" id="importpayrollitemcategory" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                                <option value="payment">Payment</option>
                                <option value="deduction">Deduction</option>
                                <option value="benefit">Benefit</option>
                                <option value="relief">Relief</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="importpayrollitem">Payroll Item</label>
                            <select name="importpayrollitem" id="importpayrollitem" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>

                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="importpayrollitemperiodic">For a period</label>
                                    <select name="importpayrollitemperiodic" id="importpayrollitemperiodic" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="1">Yes</option>
                                        <option value="0" selected>No</option>
                                    </select>
                                </div>

                                <div class="col form-group">
                                    <label for="importpayrollitemduration">Duration(M)</label>
                                    <input type="number" name="importpayrollitemduration" id="importpayrollitemduration" class="form-control form-control-sm">
                                </div>
                            </div>
                        </div>

                        <div class="col form-group">
                            <label for="importpayrollitemstartdate">Start Date</label>
                            <input type="text" name="importpayrollitemstartdate" id="importpayrollitemstartdate" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="scrollableimport">
                        <table class="table table-sm table-striped table-hover table-scrollable" id="importemployeepayrollitemstable"></table>
                    </div>

                    <div class="form-check mt-2">
                        <input type="checkbox" class="form-check-input" id="employeeimportoverwritepayrollitem">
                        <label class="form-check-label" for="employeeimportoverwritepayrollitem">Overwrite if item already exists</label>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="saveimportemployeepayrollitems"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>
    
</body>
<?php require_once("footer.txt")?>
<script src="../plugins/fullcalendar-6.1.14/index.global.js"></script>
<script src="../js/payroll.js"></script> 
</html>