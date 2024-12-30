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
                        <a class="nav-item nav-link active" id="pop1-tab" data-toggle="tab" href="#employees" role="tab" aria-controls="pop1" aria-selected="true">Employees</a>
                        <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#processing" role="tab" aria-controls="pop2" aria-selected="false">Processing</a>
                        <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#jobgroups" role="tab" aria-controls="pop2" aria-selected="false">Grades</a>
                        <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#positions" role="tab" aria-controls="pop2" aria-selected="false">Positions</a>
                        <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#salarystructures" role="tab" aria-controls="pop2" aria-selected="false">Scales</a>
                        <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#banks" role="tab" aria-controls="pop2" aria-selected="false">Banks</a>
                        <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#payrollitems" role="tab" aria-controls="pop2" aria-selected="false">Items</a>
                        <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#creditors" role="tab" aria-controls="pop2" aria-selected="false">Creditors</a>
                        <a class="nav-item nav-link" id="leavesettings-tab" data-toggle="tab" href="#leavesettings" role="tab" aria-controls="pop2" aria-selected="false">Leaves</a>
                        <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#categories" role="tab" aria-controls="pop2" aria-selected="false">Categories</a>
                        <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#departments" role="tab" aria-controls="pop2" aria-selected="false">Departments</a>
                        <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#employmentterms" role="tab" aria-controls="pop2" aria-selected="false">Terms</a>
                        <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#reportsmenu" role="tab" aria-controls="pop2" aria-selected="false">Reports</a>
                    </div>
                    <!-- Pages -->
                    <div class="tab-content text-left" id="nav-tabContent">
                        <!-- Employees Page -->
                        <div class="tab-pane fade show active" id="employees" role="tabpanel" aria-labelledby="pop1-tab">
                            
                            <div class="row mt-2">
                                <div class="col col-md-2">
                                    <div id="employeeoperations">
                                        <button class="btn btn-outline-success btn-sm w-100 mb-1" id="addnewemployee"><i class="fal fa-user-plus fa-lg fa-fw"></i> Add New Employee</button>
                                        <button class="btn btn-outline-secondary btn-sm w-100 mb-1" id="filteremployees"><i class="fal fa-search-plus fa-lg fa-fw"></i> Filter Employees</button>
                                        <button class="btn btn-sm btn-outline-danger w-100 mb-1" id="cancelfilteremployees"><i class="fal fa-search-minus fa-lg fa-fw"></i> Cancel Filter</button>
                                        <button class="btn btn-sm btn-danger w-100 mb-1" id="separateemployee"><i class="fal fa-user-minus fa-lg fa-fw"></i> Separate Employee</button>
                                    </div>

                                    <div class="employeeslist" id="employeeslist">
                                        <ul></ul>
                                    </div>
                                    <div id="employeescounter" class="text-center alert alert-primary font-weight-bold"></div>
                                    <select name="filteremployeesstatus" id="filteremployeesstatus" class="form-control form-control-sm">
                                        <option value="all">&lt;All&gt;</option>
                                        <option value="active">Active</option>
                                        <option value="suspended">On Suspension</option>
                                        <option value="withdrawn">Withdrawn</option>
                                    </select>
                                </div>

                                <div class="col">
                                    <div class="alert alert-primary">
                                        <div class="row mb-2">
                                            <div class="col">Staff Number <span id="lblstaffno" class="font-weight-bold"></span></div>
                                            <div class="col">Names <span id="lblnames" class="font-weight-bold"></span></div>
                                            <div class="col">ID Document <span id="lbliddoc" class="font-weight-bold"></span></div>
                                            <div class="col">ID Doc Number <span id="lbliddocref" class="font-weight-bold"></span></div>
                                        </div>

                                        <div class="row mb-2">
                                            <div class="col">Department <span id="lbldepartment" class="font-weight-bold"></span></div>
                                            <div class="col">Designation <span id="lbldesignation" class="font-weight-bold"></span></div>
                                            <div class="col">Employment Terms <span id="lblemploymentterms" class="font-weight-bold"></span></div>
                                            <div class="col">Employment Date <span id="lblemploymentdate" class="font-weight-bold"></span></div>
                                        </div>

                                        <div class="row mb-2">
                                            <div class="col">Status <span id="lblstatus" class="font-weight-bold"></span></div>
                                            <div class="col">Leave Days Allocated <span id="lbleaveallocation" class="font-weight-bold"></span></div>
                                            <div class="col">Leave Days Taken <span id="lblleavetaken" class="font-weight-bold"></span></div>
                                            <div class="col">Leave Days Unutilized <span id="lblleaveunutilized" class="font-weight-bold"></span></div>
                                        </div>
                                    </div>

                                    <!-- Employees Tabbed navigation -->
                                    <div class="nav nav-tabs " id="employee-details-tab" role="tablist">
                                        <a class="nav-item nav-link active" id="biodata-tab" data-toggle="tab" href="#employeebiodata" role="tab" aria-controls="pop1" aria-selected="true">Bio Data</a>
                                        <a class="nav-item nav-link" id="contracts-tab" data-toggle="tab" href="#employeecontracts" role="tab" aria-controls="pop1" aria-selected="true">Contracts</a>
                                        <a class="nav-item nav-link" id="payrollinfo-tab" data-toggle="tab" href="#employeepayrollinfo" role="tab" aria-controls="pop2" aria-selected="false">Payroll Info</a>
                                        <a class="nav-item nav-link" id="dependants-tab" data-toggle="tab" href="#employeedependants" role="tab" aria-controls="pop2" aria-selected="false">Relationships</a>
                                        <a class="nav-item nav-link" id="experience-tab" data-toggle="tab" href="#employeeexperience" role="tab" aria-controls="pop2" aria-selected="false">Experience</a>
                                        <a class="nav-item nav-link" id="academic-tab" data-toggle="tab" href="#employeeacademic" role="tab" aria-controls="pop2" aria-selected="false">Training</a>
                                        <a class="nav-item nav-link" id="leaves-tab" data-toggle="tab" href="#employeeleaves" role="tab" aria-controls="pop2" aria-selected="false">Leaves</a>
                                        <a class="nav-item nav-link" id="documents-tab" data-toggle="tab" href="#employeedocuments" role="tab" aria-controls="pop2" aria-selected="false">Documents</a>
                                        <a class="nav-item nav-link" id="disciplinary-tab" data-toggle="tab" href="#employeedisciplinary" role="tab" aria-controls="pop2" aria-selected="false">Disciplinary</a>
                                    </div>

                                    <!-- Employee Tabs -->
                                    <div class="tab-content text-left" id="nav-biodatatab">
                                        <!-- Bio Data Page -->
                                        <div class="tab-pane fade show active" id="employeebiodata" role="tabpanel" aria-labelledby="pop1-tab">
                                            <div class="pt-3" id="employeenotifications"></div>
                                            <div class="card containergroup">
                                                <div class="card-header">
                                                    <h5>Bio Data</h5>
                                                </div>

                                                <div class="card-body">
                                                    <input type="hidden" name="employeeid" id="employeeid" value="0">
                                                    <div class="row">
                                                        <div class="col form-group">
                                                            <label for="salutation">Salutation</label>
                                                            <select name="salutation" id="salutation" class="form-control form-control-sm"></select>
                                                        </div>
                                                        <div class="col form-group">
                                                            <label for="iddocument">ID Document</label>
                                                            <select name="iddocument" id="iddocument" class="form-control form-control-sm"></select>
                                                        </div>

                                                        <div class="col form-group">
                                                            <label for="idddocnumber"><span class="iddocname">ID Document</span> Number</label>
                                                            <input type="text" name="iddconumber" id="iddocnumber" class="form-control form-control-sm">
                                                        </div>

                                                        <div class="col form-group">
                                                            <label for="iddocexpirydate">Expiry Date</label>
                                                            <input type="text" name="iddocexpirydate" id="iddocexpirydate" class="form-control form-control-sm" disabled>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col form-group">
                                                            <label for="firstname">First Name</label>
                                                            <input type="text" name="firstname" id="firstname" class="form-control form-control-sm">
                                                        </div>
                                                        <div class="col form-group">
                                                            <label for="middlename">Middle Name</label>
                                                            <input type="text" name="middlename" id="middlename" class="form-control form-control-sm">
                                                        </div>
                                                        <div class="col form-group">
                                                            <label for="lastname">Last Name</label>
                                                            <input type="text" name="lastname" id="lastname" class="form-control form-control-sm">
                                                        </div>
                                                        <div class="col form-group">
                                                            <label for="religion">Religion</label>
                                                            <select name="religion" id="religion" class="form-control form-control-sm"></select>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col form-group">
                                                            <label for="gender">Gender</label>
                                                            <select name="gender" id="gender" class="form-control form-control-sm">
                                                                <option value="">&lt;Choose&gt;</option>
                                                                <option value="male">Male</option>
                                                                <option value="female">Female</option>
                                                            </select>
                                                        </div>
                                                        <div class="col form-group">
                                                            <label for="dateofbirth">Date of Birth</label>
                                                            <input type="text" name="dateofbirth" id="dateofbirth" class="date-control form-control form-control-sm">
                                                        </div>

                                                        <div class="col">
                                                            <div class="row">
                                                                <div class="col form-group">
                                                                    <label for="hasdisability">Has Disability</label>
                                                                    <select name="hasdisability" id="hasdisability" class="form-control form-control-sm">
                                                                        <option value="">&lt;Choose&gt;</option>
                                                                        <option value="0">No</option>
                                                                        <option value="1">Yes</option>
                                                                    </select>
                                                                </div>
                                                                <div class="col form-group">
                                                                    <label for="disabilitytype">Type</label>
                                                                    <select name="disabilitytype" id="disabilitytype" class="form-control form-control-sm" disabled>
                                                                        <option value="">&lt;Choose&gt;</option>
                                                                        <option value="temporary">Temporary</option>
                                                                        <option value="permanent">Permanent</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                       
                                                        <div class="col">
                                                            <div class="row">
                                                                <div class="col form-group">
                                                                    <label for="disabilitydescrription">Description</label>
                                                                    <input type="text" name="disabilitydescription" id="disabilitydescription" class="form-control form-control-sm" disabled>
                                                                </div>

                                                                <div class="col form-group">
                                                                    <label for="disabilitycertificateno">Certificate #</label>
                                                                    <input type="text" name="disabilitycertificateno" id="disabilitycertificateno" class="form-control form-control-sm">
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col form-group">
                                                            <label for="staffpinno">PIN Number</label>
                                                            <input type="text" name="staffpinno" id="staffpinno" class="form-control form-control-sm">
                                                        </div>

                                                        <div class="col form-group">
                                                            <label for="staffnhifno">NHIF Number</label>
                                                            <input type="text" name="staffnhifno" id="staffnhifno" class="form-control form-control-sm">
                                                        </div>

                                                        <div class="col form-group">
                                                            <label for="staffnssfno">NSSF Number</label>
                                                            <input type="text" name="staffnssfno" id="staffnssfno" class="form-control form-control-sm">
                                                        </div>

                                                        <div class="col">
                                                            <div class="row">
                                                                <div class="col form-group">
                                                                    <label for="onpayroll">On Payroll</label>
                                                                    <select name="onpayroll" id="onpayroll" class="form-control form-control-sm">
                                                                        <option value="">&lt;Choose&gt;</option>
                                                                        <option value="1">Yes</option>
                                                                        <option value="0">No</option>
                                                                    </select>
                                                                </div>

                                                                <div class="col form-group">
                                                                    <label for="onfixedpaye">Fixed PAYE</label>
                                                                    <select name="onfixedpaye" id="onfixedpaye" class="form-control form-control-sm">
                                                                        <option value="">&lt;Choose&gt;</option>
                                                                        <option value="0">No</option>
                                                                        <option value="1">Yes</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="card containergroup mt-2">
                                                <div class="card-header">
                                                    <h5>Contact Information</h5>
                                                </div>
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col form-group">
                                                            <label for="physicaladdress">Physical Address</label>
                                                            <input type="text" name="physicaladdress" id="physicaladdress" class="form-control form-control-sm">
                                                        </div>
                                                        <div class="col form-group">
                                                            <label for="postaladdress">Postal Address</label>
                                                            <input type="text" name="postaladadress" id="postaladdress" class="form-control form-control-sm">
                                                        </div>
                                                        <div class="col form-group">
                                                            <label for="town">Town</label>
                                                            <input type="text" name="town" id="town" class="form-control form-control-sm">
                                                        </div>
                                                        <div class="form-group col">
                                                            <label for="postalcode">Postal Code</label>
                                                            <input type="text" name="postalcode" id="postalcode" class="form-control form-control-sm">
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col form-group">
                                                            <label for="mobile">Mobile Number</label>
                                                            <input type="text" name="mobilenumber" id="mobilenumber" class="form-control form-control-sm">
                                                        </div>

                                                        <div class="col form-group">
                                                            <label for="alternativemobilenumber">Alternative Mobile Number</label>
                                                            <input type="text" name="alternativemobilenumber" id="alternativemobilenumber" class="form-control form-control-sm">
                                                        </div>

                                                        <div class="col form-group">
                                                            <label for="email">Email Address</label>
                                                            <input type="text" name="emailaddress" id="emailaddress" class="form-control form-control-sm">
                                                        </div>

                                                        <div class="col form-group">
                                                            <label for="alternativeemailaddress">Alternative Email Address</label>
                                                            <input type="text" name="alternativeemailaddress" id="alternativeemailaddress" class="form-control form-control-sm">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="card containergroup mt-2">
                                                <div class="card-header">
                                                    <h5>Employment Info</h5>
                                                </div>
                                                <div class="card-body">
                                                    <div id="filteremployeenotifications"></div>
                                                    <div class="row">
                                                        <div class="col form-group">
                                                            <label for="staffno">Staff Number</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <input type="checkbox" id="generatestaffno" checked>
                                                                    </div>
                                                                </div>
                                                                <input type="text" class="form-control form-control-sm" id="staffno" disabled>
                                                            </div>
                                                        </div>

                                                        <div class="col form-group">
                                                            <label for="employeecategory">Category</label>
                                                            <select name="employeecategory" id="employeecategory" class="form-control form-control-sm"></select>
                                                        </div>

                                                       <div class="col form-group">
                                                            <label for="employmentterm">Employment Term</label>
                                                            <select name="employmentterm" id="employmentterm" class="form-control form-control-sm">
                                                                <option value="">&lt;Choose&gt;</option>
                                                            </select>
                                                        </div> 

                                                        <div class="col form-group">
                                                            <label for="staffdepartment">Department</label>
                                                            <select name="staffdepartment" id="staffdepartment" class="form-control form-control-sm">
                                                                <option value="">&lt;Choose&gt;</option>
                                                            </select>
                                                        </div>  
                                                    </div>

                                                    <div class="row">

                                                        <div class="col">
                                                            <div class="row">
                                                                <div class="col form-group">
                                                                    <label for="employmentdate">Hire Date </label>
                                                                    <input type="text" name="employmentdate" id="employmentdate" class="date-control form-control form-control-sm">
                                                                </div>

                                                                <div class="col form-group">
                                                                    <label for="employmentstatus">Status</label>
                                                                    <select name="employmentstatus" id="employmentstatus" class="form-control form-control-sm">
                                                                        <option value="">&lt;Choose&gt;</option>
                                                                        <option value="active">Active</option>
                                                                        <option value="suspended">Suspension</option>
                                                                        <option value="withdrawn">Withdrwan</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="col form-group">
                                                            <label for="employeeposition">Position</label>
                                                            <select name="employeeposition" id="employeeposition" class="form-control form-control-sm">
                                                                <option value="">&lt;Choose&gt;</option>
                                                            </select>
                                                        </div>
                                                        
                                                        <div class="col form-group">
                                                            <label for="separationdate">Separation Date</label>
                                                            <input type="text" name="separationdate" id="separationdate" class="form-control form-control-sm" disabled>
                                                        </div> 

                                                        <div class="col form-group">
                                                            <label for="separationreason">Separation Reason</label>
                                                            <select name="separationreason" id="separationreason" class="form-control form-control-sm" disabled>
                                                                <option value="">&lt;Choose&gt;</option>
                                                                <option value="retired">Retired</option>
                                                                <option value="resigned">Resigned</option>
                                                                <option value="death">Death</option>
                                                                <option value="dismissed">Summary Dismisal</option>
                                                                <option value="retrenched">Retrenched</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="row">
                                                                <div class="col form-group">
                                                                    <label for="staffjobgroup">Job Group</label>
                                                                    <select name="staffjobgroup" id="staffjobgroup" class="form-control form-control-sm"></select>
                                                                </div>

                                                                <div class="col">
                                                                    <label for="staffnotch">Notch</label>
                                                                    <select name="" id="staffnotch" class="form-control form-control-sm"></select>
                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div class="col from-group">
                                                            <label for="employeebank">Bank</label>
                                                            <select name="employeebank" id="employeebank" class="form-control form-control-sm">
                                                                <option value="">&lt;Choose&gt;</option>
                                                            </select>
                                                        </div>

                                                        <div class="col from-group">
                                                            <label for="employeebankbranch">Branch</label>
                                                            <select name="employeebankbranch" id="employeebankbranch" class="form-control form-control-sm">
                                                                <option value="">&lt;Choose&gt;</option>
                                                            </select>
                                                        </div>

                                                        <div class="col form-group">
                                                            <label for="employeeaccountnumber">Account Number</label>
                                                            <input type="number" name="" id="employeeaccountnumber" class="form-control form-control-sm">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="mt-2">
                                                <button id="saveemployee" class="btn btn-sm btn-success"><i class="fal fa-save fa-lg fa-fw"></i> Save Employee</button>
                                                <button id="clearemployee" class="btn btn-sm btn-outline-secondary"><i class="fal fa-hand-sparkles fa-lg fa-fw"></i> Clear Form</button>
                                            </div>
                                            
                                        </div>

                                        <!-- Contracts Page -->
                                        <div class="tab-pane" id="employeecontracts" role="tabpanel" aria-labelledby="pop1-tab">
                                            <div class="pt-3"></div>
                                            <div id="employeecontractnotifications"></div>
                                            <table class="table table-sm table-striped table-hover" id="contractstable">
                                                <thead>
                                                    <th>#</th>
                                                    <th>Period</th>
                                                    <th>Start Date</th>
                                                    <th>End Date</th>
                                                    <th>Position</th>
                                                    <th>Department</th>
                                                    <th>Date Added</th>
                                                    <th>Added By</th>
                                                    <th>&nbsp;</th>
                                                    <th>&nbsp;</th>
                                                    <th>&nbsp;</th>
                                                </thead>
                                                <tbody></tbody>
                                            </table>
                                            <button class="btn btn-sm btn-success" id="addnewcontract"><i class="fal fa-plus fa-fw fa-lg"></i> Add New Contract</button>
                                        </div>

                                        <!-- Payroll info Page -->
                                        <div class="tab-pane" id="employeepayrollinfo" role="tabpanel" aria-labelledby="pop1-tab">
                                            <div class="pt-3" id="employeepayrollitemsnotifications"></div>
                                            <table class="table table-striped table-sm table-hover" id="employeepayrollitemstable">
                                                <thead>
                                                    <th>#</th>
                                                    <th>Type</th>
                                                    <th>Item Name</th> 
                                                    <th>Amount</th>
                                                    <th>Start Date</th>
                                                    <th class="text-center">Periodic</th>
                                                    <th>End Date</th>
                                                    <th>Attachment</th>
                                                    <th>Date Added</th>
                                                    <th>Added By</th>
                                                    <th>&nbsp;</th>
                                                    <th>&nbsp;</th>
                                                </thead>
                                                <tbody></tbody>
                                            </table>
                                            <!-- <div class="row"> -->
                                                <div class="d-flex">
                                                    <button class="btn btn-sm btn-success" id="addnewemployeepayrollitem"><i class="fal fa-plus fa-fw fa-lg"></i> Attach New Payroll Item</button>
                                                    <div class="dropdown ml-3">
                                                        <button class="btn btn-outline-success dropdown-toggle btn-sm" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            Add Grouped Items
                                                        </button>
                                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                            <a class="dropdown-item" href="#" id="gradeemployeepayrollitems">Grade Attached Items</a>
                                                            <a class="dropdown-item" href="#" id="statutorydeductionsemployeepayrollitems">Statutory Deductions</a>
                                                            <!-- <a class="dropdown-item" href="#">Something else here</a> -->
                                                        </div>
                                                    </div>
                                                </div>
                                            <!-- </div> -->
                                        </div>

                                         <!-- Dependants Page -->
                                         <div class="tab-pane" id="employeedependants" role="tabpanel" aria-labelledby="pop1-tab">
                                            <div class="pt-3"></div>
                                            <div class="toggle-switch">
                                                <span>Dependants</span>
                                                <input type="checkbox" name="dependantbeneficiaryselection" id="dependantbeneficiaryselection" class="toggler" checked>
                                                <span>Beneficiaries</span>
                                            </div>

                                            <div id="dependantdetails">
                                                <div id="dependantnotifications"></div>
                                                <table class="table table-sm table-striped table-hover" id="dependantstable">
                                                    <thead>
                                                        <th>#</th>
                                                        <th>Name</th>
                                                        <th>ID Document</th>
                                                        <th>Reference Number</th>
                                                        <th>Relationship</th>
                                                        <th>Date of Birth</th>
                                                        <th>Gender</th>
                                                        <th>Image</th>
                                                        <th>Date Added</th>
                                                        <th>Added By</th>
                                                        <th>&nbsp;</th>
                                                        <th>&nbsp;</th>
                                                    </thead>
                                                    <tbody></tbody>
                                                </table>
                                                <button class="btn btn-sm btn-success" id="addnewdependant"><i class="fal fa-plus fa-fw fa-lg"></i> Add New Dependant</button>
                                            </div>

                                            <div id="beneficiariesdetails" style="display:none">
                                            <div id="employeebeneficiarynotifications"></div>
                                                <table class="table table-sm table-striped table-hover" id="beneficiariestable">
                                                    <thead>
                                                        <th>#</th>
                                                        <th>Beneficiary Name</th>
                                                        <th>Relationship</th>
                                                        <th>ID Number</th>
                                                        <th>Email</th>
                                                        <th>Mobile</th>
                                                        <th>Percentage</th>
                                                        <th>Date Added</th>
                                                        <th>Added By</th>
                                                        <th>&nbsp;</th>
                                                        <th>&nbsp;</th>
                                                    </thead>
                                                    <tbody></tbody>
                                                </table>
                                                <button class="btn btn-sm btn-success" id="addnewbeneficiary"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Beneficiary</button>
                                            </div>
                                        </div>

                                         <!-- Experience Page -->
                                         <div class="tab-pane" id="employeeexperience" role="tabpanel" aria-labelledby="pop1-tab">
                                            <div class="pt-3"></div>
                                            <div class="toggle-switch">
                                                <span>Within</span>
                                                <input type="checkbox" name="dependantexperienceselection" id="dependantexperienceselection" class="toggler" checked>
                                                <span>Outside</span>
                                            </div>

                                            <div id="internalexperiencedetails">
                                                <div id="internalexperiencenotifications"></div>
                                                <table class="table table-sm table-striped table-hover" id="internalexperiencetable">
                                                    <thead>
                                                        <th>#</th>
                                                        <th>Department</th>
                                                        <th>Position</th>
                                                        <th>Start Date</th>
                                                        <th>End Date</th>
                                                        <th>Date Added</th>
                                                        <th>Added By</th>
                                                        <th>&nbsp;</th>
                                                        <th>&nbsp;</th>
                                                    </thead>
                                                    <tbody></tbody>
                                                </table>
                                                <button class="btn btn-sm btn-success" id="addinternalexperience"><i class="fal fa-plus fa-fw fa-lg"></i> Add New Work Experience</button>
                                            </div>

                                            <div id="externalexperiencedetails" style="display:none">
                                                <div id="externalexperiencenotifications"></div>
                                                <table class="table table-sm table-striped table-hover" id="externalexperiencetable">
                                                    <thead>
                                                        <th>#</th>
                                                        <th>Organization</th>
                                                        <th>Position</th>
                                                        <th>Start Date</th>
                                                        <th>End Date</th>
                                                        <!-- <th>Duties</th>
                                                        <th>Narration</th> -->
                                                        <th>Date Added</th>
                                                        <th>Added By</th>
                                                        <th>&nbsp;</th>
                                                        <th>&nbsp;</th>
                                                    </thead>
                                                    <tbody></tbody>
                                                </table>
                                                <button class="btn btn-sm btn-success" id="addnewexternalexperience"><i class="fal fa-plus fa-lg fa-fw"></i> Add External Work Experience</button>
                                            </div>
                                        </div>

                                        <!-- Training Page -->
                                        <div class="tab-pane" id="employeeacademic" role="tabpanel" aria-labelledby="pop1-tab">
                                            <div class="pt-3"></div>
                                            <div id="coursenotifications"></div>
                                            <table class="table table-sm table-striped table-hover" id="trainingstable">
                                                <thead>
                                                    <th>#</th>
                                                    <th class='text-center'>Cat</th>
                                                    <th>Institution</th>
                                                    <th>Level</th>
                                                    <th>Course Name</th>
                                                    <th>Start Date</th>
                                                    <th>End Date</th>
                                                    <th class='text-center'>Completed</th>
                                                    <th>Score</th>
                                                    <th class='text-center'>Cert</th>
                                                    <th>Expires</th>
                                                    <th>Date Added</th>
                                                    <th>Added By</th>
                                                    <th>&nbsp;</th>
                                                    <th>&nbsp;</th>
                                                </thead>
                                                <tbody></tbody>
                                            </table>
                                            <button class="btn btn-sm btn-success" id="addnewtraining"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Training</button>
                                        </div>

                                        <!-- Leaves Page -->
                                        <div class="tab-pane" id="employeeleaves" role="tabpanel" aria-labelledby="pop1-tab">
                                            <div class="pt-3"></div>
                                            <div id="employeeleavenotifications"></div>
                                            <table class="table table-sm table-striped table-hover" id="staffleaveapplicationstable">
                                                <thead>
                                                    <th>#</th>
                                                    <th>Leave Type</th>
                                                    <th>Application Date</th>
                                                    <th>Starts</th>
                                                    <th>Ends</th>
                                                    <th>Days Taken</th>
                                                    <!-- <th>Narration</th> -->
                                                    <th>Reliever</th> 
                                                    <th>Status</th>
                                                    <th class='text-center'>Document</th>
                                                    <th>&nbsp;</th> <!-- Edit -->
                                                    <th>&nbsp;</th> <!-- Process -->
                                                    <!-- <th>&nbsp;</th> Cancel -->
                                                    <th>&nbsp;</th> <!-- Timeline -->
                                                </thead>
                                                <tbody></tbody>
                                            </table>
                                            <button class="btn btn-sm btn-success" id="addnewleave"><i class="fal fa-plus fa-fw fa-lg"></i> Add New Leave Application</button>
                                        </div>
                                        
                                        <!-- Documents Page -->
                                        <div class="tab-pane" id="employeedocuments" role="tabpanel" aria-labelledby="pop1-tab">
                                            <div class="pt-3"></div>
                                            <div id="staffdocumentsnotifications"></div>
                                            <table class="table table-sm table-striped table-hover" id="staffdocumentstable">
                                                <thead>
                                                    <th>#</th>
                                                    <th>Document</th>
                                                    <th>Narration</th>
                                                    <th>Expiry Date</th>
                                                    <th>Attachment</th>
                                                    <th>Date Added</th>
                                                    <th>Added By</th>
                                                    <th>&nbsp;</th>
                                                    <th>&nbsp;</th>
                                                </thead>
                                                <tbody></tbody>
                                            </table>
                                            <button class="btn btn-sm btn-success" id="addnewdocument"><i class="fal fa-plus fa-fw fa-lg"></i> Add New Document</button>
                                        </div>

                                        <!-- Disciplinary Page -->
                                        <div class="tab-pane" id="employeedisciplinary" role="tabpanel" aria-labelledby="pop1-tab">
                                            <div class="pt-3"></div>
                                            <div id="disciplinarynotifications"></div>
                                            <table class="table table-sm table-striped" id="disciplinecasestable">
                                                <thead>
                                                    <th>#</th>
                                                    <th>Type</th>
                                                    <th>Category</th>
                                                    <th>Action</th>
                                                    <th>Incident Date</th>
                                                    <th>Action Date</th>
                                                    <th>Status</th> 
                                                    <th>Added By</th> 
                                                    <th>Date Added</th>
                                                    <th>&nbsp;</th> <!-- Edit -->
                                                    <th>&nbsp;</th> <!--Process -->
                                                    <th>&nbsp;</th> <!-- Delete -->
                                                </thead>
                                            </table>
                                            <button id="addnewdisciplinarycase" class="btn btn-sm btn-success"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Incident</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Processing Page -->
                        <div class="tab-pane fade" id="processing" role="tabpanel" aria-labelledby="pop2-tab">
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

                        <!-- Job groups table -->
                        <div class="tab-pane fade" id="jobgroups" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <!-- <div id="jobgroupnotifications"></div> -->
                            <div class="toggle-switch">
                                <span>Job Groups</span>
                                <input type="checkbox" name="jobgroupnotchselection" id="jobgroupnotchselection" class="toggler" checked>
                                <span>Notches</span>
                            </div>
                            <div id="jobgroupnotifications"></div>
                            <!-- Jobgroup Table -->
                            <div id="jobgroupdetails">
                                <table class="table table-sm table-striped table-hover" id="jobgroupstable">
                                    <thead>
                                        <th>#</th>
                                        <th>Job Group</th>
                                        <th>Date Added</th>
                                        <th>Added By</th>
                                        <th>&nbsp;</th>
                                        <th>&nbsp;</th>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <button class="btn btn-sm btn-success" id="addjobgroup"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Job Group</button>
                            </div>
                            <!-- Branch Table -->
                            <div id="notchesdetails" style="display:none">
                                <div id="notchnotifications"></div>
                                <table class="table table-sm table-striped table-hover" id="notchestable">
                                    <thead>
                                        <th>#</th>
                                        <th>Notch Description</th>
                                        <th>Date Added</th>
                                        <th>Added By</th>
                                        <th>&nbsp;</th>
                                        <th>&nbsp;</th>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <button id="addnewnotch" class="btn btn-sm btn-success"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Notch</button>
                            </div>
                        </div>

                        <!-- Positions Page -->
                        <div class="tab-pane fade" id="positions" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <div id="positionnotifications"></div>
                            <table class="table table-sm table-striped table-hover" id="positionstable">
                                <thead>
                                    <th>#</th>
                                    <th>Position</th>
                                    <th>Reports To</th>
                                    <th class="text-right">Establishment</th>
                                    <th class="text-right">Strength</th>
                                    <th class="text-center">Starts At</th>
                                    <th class="text-center">Ends At</th>
                                    <th>Date Added</th>
                                    <th>Added By</th>
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <button id="addnewposition" class="btn btn-sm btn-success"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Position</button>
                        </div>

                        <!-- Salary Structures Page -->
                        <div class="tab-pane fade" id="salarystructures" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <div id="salarystructurenotifications"></div>
                            <table class="table table-sm table-striped table-hover" id="salarystructurestable">
                                <thead>
                                    <th>#</th>
                                    <th>Job Group</th>
                                    <th>Notch</th>
                                    <th>Payroll Item</th>
                                    <th>Min Value</th>
                                    <th>Max Value</th>
                                    <th>Annual Increment</th>
                                    <th>Employees</th>
                                    <th>Date Added</th>
                                    <th>Added By</th>
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <button id="addnewsalarystructure" class="btn btn-success btn-sm"><i class="fal fa-plus fa-lg fa-fw"></i> Add Salary Structure</button>
                        </div>

                        <!-- Banks Page -->
                        <div class="tab-pane fade" id="banks" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <div class="toggle-switch">
                                <span>Bank</span>
                                <input type="checkbox" name="bankbranchselection" id="bankbranchselection" class="toggler" checked>
                                <span>Branch</span>
                            </div>
                            <div id="banknotifications"></div>
                            <!-- Bank Table -->
                            <div id="banksdetails">
                                <table class="table table-sm table-striped table-hover" id="bankstable">
                                    <thead>
                                        <th>#</th>
                                        <th>Bank Code</th>
                                        <th>Bank Name</th>
                                        <th>Branches</th>
                                        <th>Date Added</th>
                                        <th>Added By</th>
                                        <th>&nbsp;</th>
                                        <th>&nbsp;</th>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <button class="btn btn-sm btn-success" id="addnewbank"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Bank</button>
                            </div>
                            <!-- Branch Table -->
                            <div id="branchesdetails" style="display:none">
                                <table class="table table-sm table-striped table-hover" id="branchestable">
                                    <thead>
                                        <th>#</th>
                                        <th>Bank</th>
                                        <th>Branch code</th>
                                        <th>Branch Name</th>
                                        <th>Date Added</th>
                                        <th>Added By</th>
                                        <th>&nbsp;</th>
                                        <th>&nbsp;</th>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <button id="addnewbankbranch" class="btn btn-sm btn-success"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Branch</button>
                            </div>
                        </div>

                        <!-- Employee Categories Page -->
                        <div class="tab-pane fade" id="categories" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <div id="jobcategorynotifications"></div>
                            <table class="table table-sm table-striped table-hover" id="jobcategorytable">
                                <thead>
                                    <th>#</th>
                                    <th>Category Name</th>
                                    <th>Numbering Prefix</th>
                                    <th>Current Number</th>
                                    <th>Employees</th>
                                    <th>Date Added</th>
                                    <th>Added By</th>
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <button class="btn btn-sm btn-success" id="addnewemployeecategory"><i class="fal fa-plus fa-fw fa-lg"></i> Add Employee Category</button>
                        </div>

                        <!-- Departments Page -->
                        <div class="tab-pane fade" id="departments" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <div id="departmentnotifications"></div>
                            <table class="table table-sm table-striped table-hover" id="departmentstable">
                                <thead>
                                    <th>#</th>
                                    <th>Department Name</th>
                                    <th>Department Head</th>
                                    <th>Extension</th>
                                    <th>Employees</th>
                                    <th>Date Added</th>
                                    <th>Added By</th>
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <button id="addnewdepartment" class="btn btn-sm btn-success"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Department</button>
                        </div>

                        <!-- Employment Terms Page -->
                        <div class="tab-pane fade" id="employmentterms" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <div id="employmenttermnotifications"></div>
                            <table class="table table-sm table-striped table-hover" id="employmenttermstable">
                                <thead>
                                    <th>#</th>
                                    <th>Employment Term</th>
                                    <th>Employees</th>
                                    <th>Date Added</th>
                                    <th>Added By</th>
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <button class="btn btn-sm btn-success" id="addnewemploymentterm"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Term</button>
                        </div>

                        <!-- Payroll Items Page -->
                        <div class="tab-pane fade" id="payrollitems" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <!-- Toggle for payroll item or group -->
                            <div class="toggle-switch">
                                <span>Item</span>
                                <input type="checkbox" name="payrollitemgrouselection" id="payrollitemgrouselection" class="toggler" checked>
                                <span>Group</span>
                            </div>

                            <div id="payrollitemdetails">
                                <div id="payrollitemsnotifications"></div>
                                <table class="table table-sm table-striped table-hover" id="payrollitemstable">
                                    <thead>
                                        <th>#</th>
                                        <th>Category</th>
                                        <!-- <th>Code</th> -->
                                        <th>Name</th>
                                        <th class="text-center">Bracketed</th>
                                        <th>Creditor Name</th>
                                        <th>Date Added</th>
                                        <th>Added By</th>
                                        <th>&nbsp;</th>
                                        <th>&nbsp;</th>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <button class="btn btn-sm btn-success" id="addnewpayrollitem"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Item</button> 
                            </div>

                            <div id="payrollgroupdetails" style="display:none">
                                <div id="payrollgroupnotifications"></div>
                                <table class="table table-sm table-striped table-hover" id="payrollgroupitemstable">
                                    <thead>
                                        <th>#</th>
                                        <th>Category</th>
                                        <th>Group Name</th>
                                        <th>Items</th>
                                        <th>Date Added</th>
                                        <th>Added By</th>
                                        <th>&nbsp;</th> <!-- Edit -->
                                        <th>&nbsp;</th><!-- Delete -->
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <button class="btn btn-sm btn-success" id="addnewpayrollitemgroup"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Group</button>
                            </div>
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

                        <!-- Leave settings page -->
                        <div class="tab-pane fade" id="leavesettings" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <nav class="nav-justified ">
                                <!-- Navigation -->
                                <div class="nav nav-tabs " id="leavesettings-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="leaveapplications-tab" data-toggle="tab" href="#leaveapplications" role="tab" aria-controls="pop1" aria-selected="true">Applications</a>
                                    <a class="nav-item nav-link " id="leavecalendar-tab" data-toggle="tab" href="#leavedashboard" role="tab" aria-controls="pop1" aria-selected="true">Calendar</a>
                                    <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#leavetypes" role="tab" aria-controls="pop2" aria-selected="false">Leave Types</a>
                                    <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#leaveallocations" role="tab" aria-controls="pop2" aria-selected="false">Allocations</a>
                                    <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#holidays" role="tab" aria-controls="pop2" aria-selected="false">Holidays</a>
                                    <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#workschedules" role="tab" aria-controls="pop2" aria-selected="false">Work Schedules</a>
                                    <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#leaveapprovalflows" role="tab" aria-controls="pop2" aria-selected="false">Approval Flows</a>
                                </div>
                            </nav>

                            <!-- Leave Pages -->
                            <div class="tab-content text-left" id="nav-tabContent">
                                <!-- Applications Page -->
                                <div class="tab-pane fade show active" id="leaveapplications" role="tabpanel" aria-labelledby="pop1-tab">
                                    <div class="pt-3"></div>
                                    <table class="table table-sm table-striped table-hover" id="employeesleavesapplicationstable">
                                        <thead>
                                            <th>#</th>
                                            <th>Staff No</th>
                                            <th>Names</th>
                                            <th>Leave Type</th>
                                            <th>Application Date</th>
                                            <th>Start Date</th>
                                            <th>End Date</th>
                                            <th>Days Taken</th>
                                            <th>Reliever</th>
                                            <th>Status</th>
                                            <th>Attachment</th>
                                            <!-- <th>Date Added</th>
                                            <th>Added By</th> -->
                                            <th>&nbsp;</th> <!-- Edit -->
                                            <th>&nbsp;</th> <!-- Process -->
                                            <th>&nbsp;</th> <!-- Approve -->
                                        </thead>
                                        <tbody></tbody> 
                                    </table>
                                    
                                </div>
                                <!-- Dashboard Page -->
                                <div class="tab-pane fade" id="leavedashboard" role="tabpanel" aria-labelledby="pop1-tab">
                                    <div class="pt-3"></div>
                                    <div class="row">
                                        <div id="leavecalendar" class="col col-md-9"></div>
                                        <div class="col">
                                            <div class="card containergroup">
                                                <div class="card-header">
                                                    <h5>Pending Approval</h5>
                                                </div>
                                                <div class="card-body"></div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>

                                <div class="tab-pane" id="leavetypes" role="tabpanel" aria-labelledby="pop1-tab">
                                    <div class="pt-3"></div>
                                    <div id="leavetypenotifications"></div>
                                    <table class="table table-sm table-striped" id="leavetypestable">
                                        <thead>
                                            <th>#</th>
                                            <th>Leave Type</th>
                                            <th>Annual Allocation</th>
                                            <th>Probation Period</th>
                                            <th>Skips Holidays</th>
                                            <th>Half Day Applicable</th>
                                            <th>Can be Split</th>
                                            <th>&nbsp;</th>
                                            <th>&nbsp;</th>
                                        </thead>
                                        <tbody></tbody>
                                    </table>
                                    <button class="btn btn-sm btn-success" id="addnewleavetype"><i class="fal fa-plus fa-fw fa-lg"></i> Add New Leave Type</button>
                                </div>

                                <div class="tab-pane" id="leaveallocations" role="tabpanel" aria-labelledby="pop1-tab">
                                    <div class="pt-3"></div>
                                    <table class="table table-sm table-striped">
                                        <thead>
                                            <th>#</th>
                                            <th>Leave Type</th>
                                            <th>Staff No</th>
                                            <th>Names</th>
                                            <th>Year</th>
                                            <th>Allocated</th>
                                            <th>Utilized</th>
                                            <th>Balance</th>
                                            <th>&nbsp;</th>
                                            <th>&nbsp;</th>
                                        </thead>
                                    </table>
                                    <button class="btn btn-sm btn-success" id="addnewleaveallocation"><i class="fal fa-plus fa-fw fa-lg"></i> Add New Leave Allocation</button>
                                </div>

                                <div class="tab-pane" id="holidays" role="tabpanel" aria-labelledby="pop1-tab">
                                    <div class="pt-3"></div>
                                    <div class="toggle-switch">
                                        <span>Current</span>
                                        <input type="checkbox" name="publicholidaystatusselection" id="publicholidaystatusselection" class="toggler" checked>
                                        <span>Past</span>
                                    </div>
                                    <div id="holidaysnotifications"></div>
                                    <table class="table table-sm table-striped" id="publicholidaystable">
                                        <thead>
                                            <th>#</th>
                                            <th>Holiday Name</th>
                                            <th>Date</th>
                                            <th class="text-center">Repeats Annually</th>
                                            <th class="text-center">Skip on Weekend</th>
                                            <th>Date Added</th>
                                            <th>Added By</th>
                                            <th>&nbsp;</th>
                                            <th>&nbsp;</th>
                                        </thead>
                                        <tbody></tbody>
                                    </table>
                                    <button class="btn btn-sm btn-success" id="addnewholiday"><i class="fal fa-plus fa-fw fa-lg"></i> Add New Holiday</button>
                                </div>

                                <div class="tab-pane" id="leaveapprovalflows" role="tabpanel" aria-labelledby="pop1-tab">
                                    <div class="pt-3"></div>
                                    <div id="leaveapprovalnotifications"></div>
                                    <table class="table table-sm table-striped" id="leaveapprovalflowstable">
                                        <thead>
                                            <th>#</th>
                                            <th>Flow Name</th>
                                            <th>Approval Levels</th>
                                            <th>Date Added</th>
                                            <th>Added By</th>
                                            <th>&nbsp;</th>
                                            <th>&nbsp;</th>
                                            <tbody></tbody>
                                        </thead>
                                    </table>
                                    <button class="btn btn-sm btn-success" id="addnewleaveapprovalflow"><i class="fal fa-plus fa-fw fa-lg"></i> Add New Approval Flow</button>
                                </div>

                                <div class="tab-pane" id="workschedules" role="tabpanel" aria-labelledby="pop1-tab">
                                    <div class="pt-3"></div>
                                    <table class="table table-sm table-striped">
                                        <thead>
                                            <th>#</th>
                                            <th>Schedule Name</th>
                                            <th>Work Cycle</th>
                                            <th>Date Added</th>
                                            <th>Added By</th>
                                            <th>&nbsp;</th>
                                            <th>&nbsp;</th>
                                        </thead>
                                    </table>
                                    <button class="btn btn-sm btn-success" id="addnewworkschedule"><i class="fal fa-plus fa-fw fa-lg"></i> Add New Approval Flow</button>
                                </div>

                            </div>
                        </div>

                        <!-- Employment Terms Page -->
                        <div class="tab-pane fade" id="creditors" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <div id="creditornotifications"></div>
                            <table class="table table-sm table-striped table-hover" id="creditorstable">
                                <thead>
                                    <th>#</th>
                                    <th>Reference #</th>
                                    <th>Creditor Name</th>
                                    <th>Address</th>
                                    <th>Telephone</th>
                                    <th>Email</th>
                                    <th>Deducted</th>
                                    <th>Remitted</th>
                                    <th>Balance</th>
                                    <th>Date Added</th>
                                    <th>Added By</th>
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <button class="btn btn-sm btn-success" id="addnewcreditor"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Creditor</button>
                        </div>

                    </div>
                </nav>
            </div>
           
        </main>

    </div>
    <!-- End of Template -->
    
    <!-- Modal for payroll items -->
    <div class="modal" tabindex="-1" role="dialog" id="payrollitemdetailsmodal">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Payroll Item Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="payrollitemdetailsnotifications"></div>
                    <input type="hidden" name="payrollitemid" id="payrollitemid" value="0">
                    <div class="row">
                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="payrollitemstatutory">Statutory Item</label>
                                    <select name="payrollitemstatutory" id="payrollitemstatutory" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>

                                <div class="col form-group">
                                    <label for="payrollitemcategory">Category</label>
                                    <select name="payrollitemcategory" id="payrollitemcategory" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="payment">Payment</option>
                                        <option value="benefit">Benefit</option>
                                        <option value="deduction">Deduction</option>
                                        <option value="relief">Relief</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="payrollitemname">Item Name</label>
                                    <input type="text" name="payrollitemname" id="payrollitemname" class="form-control form-control-sm">
                                </div>

                                <div class="col form-group">
                                    <label for="payrollitemshortname">Short Name</label>
                                    <input type="text" name="payrollitemshortname" id="payrollitemshortname" class="form-control form-control-sm">
                                </div>
                            </div>
                        </div>
                        
                    </div>

                    <div class="row">
                        <div class="col">
                            <div class="row">
                                <div class="col">
                                    <div class="row">
                                         <div class="col form-group">
                                            <label for="payrolldetailsshow">Show on payroll</label>
                                            <select name="payrolldetailsshow" id="payrolldetailsshow" class="form-control form-control-sm">
                                                <option value="">&lt;Choose&gt;</option>
                                                <option value="1">Yes</option>
                                                <option value="0">No</option>
                                            </select>
                                        </div>
                                        
                                        <div class="col form-group">
                                            <label for="payrollitemapplyrelief">Apply Relief</label>
                                            <select name="payrollitemapplyrelief" id="payrollitemapplyrelief" class="form-control form-control-sm">
                                                <option value="0">No</option>
                                                <option value="1">Yes</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col form-group">
                                    <label for="payrollitemreliefitem">Relief Item</label>
                                    <select name="payrollitemreliefitem" id="payrollitemreliefitem" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                             <div class="row">
                                <div class="col form-group">
                                    <label for="payrollitemdefaultamount">Default Amount</label>
                                    <input type="number" name="payrollitemdefaultamount" id="payrollitemdefaultamount" class="form-control form-control-sm">
                                </div>

                                <div class="col">
                                    <div class="row">
                                        <div class="col form-group">
                                            <label for="payrollitememployermatchescontribution">Match Employer</label>
                                            <select name="payrollitememployermatchescontribution" id="payrollitememployermatchescontribution" class="form-control form-control-sm">
                                                <option value="">&lt;Choose&gt;</option>
                                                <option value="1">Yes</option>
                                                <option value="0">No</option>
                                            </select>
                                        </div>

                                        <div class="col form-group">
                                            <label for="payrollitememployermatchfactor">Match Factor</label>
                                            <input type="number" name="payrollitememployermatchfactor" id="payrollitememployermatchfactor" class="form-control form-control-sm">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
    
                    </div>

                    <div class="row">
                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="payrollitemdisplay">Display</label>
                                    <select name="payrollitemdisplay" id="payrollitemdisplay" class="form-control form-control-sm">
                                        <option value="none">&lt;None&gt;</option>
                                        <option value="reducing">Reducing</option>
                                        <option value="accumulating">Accumulating</option>
                                    </select>
                                </div>

                                <div class="col form-group">
                                    <label for="payrollitemgroup">Item Grouping</label>
                                    <select name="payrollitemgroup" id="payrollitemgroup" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                    </select>
                                </div>
                               
                            </div>
                        </div>
                        
                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="payrollitemsystemlabel">System Label</label>
                                    <select name="payrollitemsystemlabel" id="payrollitemsystemlabel" class="form-control form-control-sm">
                                        <option value="">&lt;None&gt;</option>
                                        <option value="ARREARS">ARREARS</option>
                                        <option value="BASIC">BASIC SALARY</option>
                                        <option value="COMMUTER">COMMUTER ALLOWANCE</option>
                                        <option value="HOUSE">HOUSE ALLOWANCE</option> 
                                        <option value="HOUSINGBENEFIT">HOUSING BENEFIT</option>
                                        <option value="INSURANCERELIEF">INSURANCE RELIEF</option>
                                        <option value="MORTGAGEINTEREST">MORTGAGE INTEREST</option> 
                                        <option value="NSSF">NSSF</option>
                                        <option value="OTHERALLOWANCE">OTHER ALLOWANCE</option>
                                        <option value="OTHERBENEFIT">OTHER BENEFIT</option>
                                        <option value="PAYE">PAYE</option>
                                        <option value="PENSION">PENSION</option> 
                                        <option value="PERSONALRELIE">PERSONAL RELIEF</option>
                                    </select>
                                </div>
                                <div class="col form-group">
                                    <label for="payrollitemcreditor">Paid To</label>
                                    <select name="payrollitemcreditor" id="payrollitemcreditor" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="payrollitemtaxable">Taxable</label>
                                    <select name="payrollitemtaxable" id="payrollitemtaxable" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>

                                <div class="col form-group">
                                    <label for="payrollitemisaloan">Is A Loan</label>
                                    <select name="payrollitemisaloan" id="payrollitemisaloan" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="row" id="loandetails1">
                                <div class="col form-group">
                                    <label for="payrollitemrepaymenttype">Repayment Type</label>
                                    <select name="payrollitemrepaymenttype" id="payrollitemrepaymenttype" class="form-control form-control-sm" disabled>
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="straightline">Straight Line</option>
                                        <option value="reducingbalance">Reducing Balance</option>
                                        <option value="amortized">Amortized</option>
                                    </select>
                                </div>

                                <div class="col">
                                    <div class="row">
                                        <div class="col form-group">
                                            <label for="payrolliteminterestrate">Interest Rate</label>
                                            <input type="number" name="payrolliteminterestrate" id="payrolliteminterestrate" class="form-control form-control-sm" disabled>
                                        </div>
                                        <div class="col form-group">
                                            <label for="payrolliteminterestchargeonce">Charge Once</label>
                                            <select name="payrolliteminterestchargeonce" id="payrolliteminterestchargeonce" class="form-control form-control-sm" disabled>
                                                <option value="">&lt;Choose&gt;</option>
                                                <option value="1">Yes</option>
                                                <option value="0">No</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="payrollitemisallowablededuction">Allowable Deduction</label>
                                    <select name="payrollitemisallowablededuction" id="payrollitemisallowablededuction" class="form-control form-control-sm">
                                        <option value="0">No</option>
                                        <option value="1">Yes</option>
                                    </select>
                                </div>
                                <div class="col form-group">
                                    <label for="payrollitemallowabledeductionpercentage">Percentage</label>
                                    <select name="payrollitemallowabledeductionpercentage" id="payrollitemallowabledeductionpercentage" class="form-control form-control-sm" disabled>
                                        <option value="0">No</option>
                                        <option value="1">Yes</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="row">
                                <div class="col">
                                    <div class="row">
                                        <div class="col form-group">
                                            <label for="payrollitemallowabledeductionminamount">Lower Limit</label>
                                            <input type="number" name="payrollitemallowabledeductionminamount" id="payrollitemallowabledeductionminamount" class="form-control form-control-sm" disabled>
                                        </div>
                                        <div class="col form-group">
                                            <label for="payrollitemallowabledeductionmaxamount">Upper Limit</label>
                                            <input type="number" name="payrollitemallowabledeductionmaxamount" id="payrollitemallowabledeductionmaxamount" class="form-control form-control-sm" disabled>
                                        </div>
                                    </div>
                                </div>
                                <div class="col form-group">
                                    <label for="payrollitemallowabledeductionrate">Value</label>
                                    <input type="number" name="payrollitemallowabledeductionrate" id="payrollitemallowabledeductionrate" class="form-control form-control-sm" disabled>
                                </div>
                            </div> 
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="payrollitembracketed">Bracketed</label>
                                    <select name="payrollitembracketed" id="payrollitembracketed" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>

                                <div class="form-group col">
                                    <label for="payrollitempercentage">Percentage</label>
                                    <select name="payrollitempercentage" id="payrollitempercentage" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="form-group col" >
                            <label for="payrollitembracketeditem">Bracketed Item</label>
                            <select name="payrollitembracketeditem" id="payrollitembracketeditem" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                                <option value="gross">&lt;Gross Salary&gt;</option>
                            </select>
                        </div>
                    </div>

                    <div id="bracketeddetails">
                        <div class="row" >
                            <div class="col">
                                <div class="row"> 
                                    <div class="col form-group">
                                        <label for="payrollitembracketlowerlimit">Lower Limit</label>
                                        <input type="number" name="payrollitembracketlowerlimit" id="payrollitembracketlowerlimit" class="form-control form-control-sm">
                                    </div>

                                    <div class="col form-group">
                                        <label for="payrollitembracketupperlimit">Upper Limit</label>
                                        <input type="number" name="payrollitembracketupperlimit" id="payrollitembracketupperlimit" class="form-control form-control-sm">
                                    </div>
                                   
                                </div>
                            </div>
                        

                            <div class="col form-group">
                                <div class="row">
                                    <div class="col form-group">
                                        <label for="payrollitembracketmin">Lower Bracket</label>
                                        <input type="number" name="payrollitembracketmin" id="payrollitembracketmin" class="form-control form-control-sm">
                                    </div>

                                    <div class="col form-group">
                                        <label for="payrollitembracketmax">Upper Bracket</label>
                                        <input type="number" name="payrollitembracketmax" id="payrollitembracketmax" class="form-control form-control-sm">
                                    </div>

                                    <div class="col form-group">
                                        <label for="payrollitembracketvalue">Value</label>
                                        <div class="input-group">
                                            <input type="number" class="form-control form-control-sm" id="payrollitembracketvalue">
                                            <div class="input-group-append">
                                                <button class="btn btn-sm btn-secondary" id="addpayrollitembracket"><i class="fal fa-plus fa-lg fa-fw"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    
                        <table class="table table-sm table-striped" id="bracketedvaluestable">
                            <thead>
                                <th>#</th>
                                <th>Min Value</th>
                                <th>Max Value</th>
                                <!-- <th>Percentage</th> -->
                                <th>Value</th>
                                <th>&nbsp;</th>
                                <th>&nbsp;</th>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                    

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savepayrollitem"><i class="fal fa-save fa-lg fa-fw"></i> Save Payroll Item</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i> Close Window</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for payroll item group -->
    <div class="modal" tabindex="-1" role="dialog" id="payrollitemgroupmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Group Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="payrollgroupitemdetailsnotifications"></div>
                    <input type="hidden" name="payrollitemgroupid" id="payrollitemgroupid" value="0">
                    <div class="form-group">
                        <label for="payrollitemgrouptype">Type of Items to hold</label>
                        <select name="payrollitemgrouptype" id="payrollitemgrouptype" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                            <option value="payment">Payment</option>
                            <option value="deduction">Deduction</option>
                            <option value="benefit">Benefit</option>
                            <option value="relief">Relief</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="payrollitemngroupname">Group Name</label>
                        <input type="text" name="payrollitemgroupname" id="payrollitemgroupname" class="form-control form-control-sm">
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savepayrollitemgroupname"><i class="fal fa-save fa-lg fa-fw"></i> Save Group</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i> Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Bank Details -->
    <div class="modal" tabindex="-1" role="dialog" id="bankdetailsmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Bank Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="bankdetailsnotifications"></div>
                    <input type="hidden" name="bankid" id="bankid" value="0">

                    <div class="form-group">
                        <label for="bankcode">Bank Code</label>
                        <input type="text" name="bankcode" id="bankcode" class="form-control form-control-sm">
                    </div>
                    <div class="form-group">
                        <label for="bankname">Bank Name</label>
                        <input type="text" name="bankname" id="bankname" class="form-control form-control-sm">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary btn-sm" id="clearbankfields"><i class="fal fa-hand-sparkles fa-lg fa-fw"></i> Clear Fields</button>
                    <button type="button" class="btn btn-success btn-sm" id="savebank"><i class="fal fa-save fa-lg fa-fw"></i> Save Bank</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Branch Details -->
    <div class="modal" tabindex="-1" role="dialog" id="bankbranchdetailsmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Branch Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="branchnotificationdetails"></div>
                    <input type="hidden" name="branchid" id="branchid" class="form-control form-control-sm" value="0">
                    <div class="form-group">
                        <label for="bankbranch">Bank</label>
                        <select name="bankbranch" id="bankbranch" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="branchcode">Branch Code</label>
                        <input type="text" name="branchcode" id="branchcode" class="form-control form-control-sm">
                    </div>

                    <div class="form-group">
                        <label for="branchname">Branch Name</label>
                        <input type="text" name="branchname" id="branchname" class="form-control form-control-sm">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savebankbranch"><i class="fal fa-save fa-lg fa-fw"></i> Save Branch</button>
                    <button type="button" class="btn btn-outline-secondary btn-sm" id="clearbankbranch"><i class="fal fa-sparkles fa-lg fa-fw"></i> Clear</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"> Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

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
                    <div class="form-group">
                        <label for="payrolltaxlabel">Tax Label</label>
                        <select name="payrolltaxlabel" id="payrolltaxlabel" class="form-control form-control-sm"></select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="processpayroll"><i class="fal fa-hourglass fa-fw fa-lg"></i> Process Payroll</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-fw fa-lg"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for job group details  -->
    <div class="modal" tabindex="-1" id="jobdetailsmodal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Job Group Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="jobgroupdetailsnotifications"></div>
                    <input type="hidden" name="jobgroupid" id="jobgroupid" value="0">
                    
                    <div class="row">
                        <div class="col form-group">
                            <label for="jobgroupadditionmethod">Addition Method</label>
                            <select name="jobgroupadditionmethod" id="jobgroupadditionmethod" class="form-control form-control-sm">
                                <option value="single">Single</option>
                                <option value="multiple">Multiple</option>
                            </select>
                        </div>

                         <div class="col form-group" id="jobgroupsingleaddition">
                            <label for="jobgroupname">Job Group Name</label>
                            <input type="text" name="jobgroupname" id="jobgroupname" class="form-control form-control-sm">
                        </div>

                        <div class="col" id="jobroupprefixsuffix" style="display:none">
                            <div class="row">
                                <div class="col">
                                    <label for="jobgroupprefix">Prefix</label>
                                    <input type="text" name="jobgroupprefix" id="jobgroupprefix" class="form-control form-control-sm">
                                </div>
                                <div class="col">
                                    <label for="jobgroupsuffix">Suffix</label>
                                    <input type="text" name="jobgroupsuffix" id="jobgroupsuffix" class="form-control form-control-sm">
                                </div>
                            </div>
                        </div>

                    </div>

                    <div id="jobgroupmultipleaddition" style="display:none">
                        <div class="row">
                            <div class="col form-group">
                                <label for="jobgroupnumberingstyle">Numbering Style</label>
                                <select name="jobgroupnumberingstyle" id="jobgroupnumberingstyle" class="form-control form-control-sm">
                                    <option value="">&lt;Choose&gt;</option>
                                    <option value="numeric">Numeric</option>
                                    <option value="alphabetic">Alpahabetic</option>
                                    <option value="roman">Roman</option>
                                </select>
                            </div>
                            <div class="col form-group">
                                <label for="jobgroupstartat">Start At</label>
                                <input type="text" name="jobgroupstartat" id="jobgroupstartat" class="form-control form-control-sm">
                            </div>

                            <div class="col form-group">
                                <label for="jobgroupunitstoadd">Units to Add</label>
                                <input type="number" name="jobgroupunitstoadd" id="jobgroupunitstoadd" class="form-control form-control-sm">
                            </div>

                            <div class="col form-group">
                                <label for="jobgrouppadzeros">Pad Zeros</label>
                                <div class="input-group">
                                    <select name="jobgrouppadzeros" id="jobgrouppadzeros" class="form-control form-control-sm">
                                        <option value="0">No</option>
                                        <option value="1">Yes</option>
                                    </select>
                                    <div class="input-group-append">
                                        <button class="btn btn-sm btn-secondary" id="generatejobgroups">
                                            <i class="fal fa-sync fa-lg fa-fw"></i>
                                        </button>
                                    </div>
                                </div>
                                
                            </div>
                        </div>

                        <div class="scrollableprivilege">
                            <table class="table table-sm table-striped table-hover" id="generatedjobgroupstable">
                                <thead>
                                    <th>#</th>
                                    <th>Job Group</th>
                                    <th>&nbsp;</th> <!-- Delete -->
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                        
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savejobgroup"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for notch details -->
    <div class="modal" tabindex="-1" id="notchdetailsmodal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Notch Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="notchdetailsnotifications"></div>
                    <input type="hidden" name="notchid" id="notchid" value="0">
                    <div class="row">
                        <div class="col form-group">
                            <label for="notchadditionmethod">Addition Method</label>
                            <select name="notchadditionmethod" id="notchadditionmethod" class="form-control form-control-sm">
                                <option value="single">Single</option>
                                <option value="multiple">Multiple</option>
                            </select>
                        </div>

                         <div class="col form-group" id="notchsingleaddition">
                            <label for="notchname">Notch Name</label>
                            <input type="text" name="notchname" id="notchname" class="form-control form-control-sm">
                        </div>

                        <div class="col" id="notchprefixsuffix" style="display:none">
                            <div class="row">
                                <div class="col">
                                    <label for="notchprefix">Prefix</label>
                                    <input type="text" name="notchprefix" id="notchprefix" class="form-control form-control-sm">
                                </div>
                                <div class="col">
                                    <label for="notchsuffix">Suffix</label>
                                    <input type="text" name="notchsuffix" id="notchsuffix" class="form-control form-control-sm">
                                </div>
                            </div>
                        </div>

                    </div>

                    <div id="notchmultipleaddition" style="display:none">
                        <div class="row">
                            <div class="col form-group">
                                <label for="notchnumberingstyle">Numbering Style</label>
                                <select name="notchnumberingstyle" id="notchnumberingstyle" class="form-control form-control-sm">
                                    <option value="">&lt;Choose&gt;</option>
                                    <option value="numeric">Numeric</option>
                                    <option value="alphabetic">Alpahabetic</option>
                                    <option value="roman">Roman</option>
                                </select>
                            </div>
                            <div class="col form-group">
                                <label for="notchstartat">Start At</label>
                                <input type="text" name="notchstartat" id="notchstartat" class="form-control form-control-sm">
                            </div>

                            <div class="col form-group">
                                <label for="notchunitstoadd">Units to Add</label>
                                <input type="number" name="notchunitstoadd" id="notchunitstoadd" class="form-control form-control-sm">
                            </div>

                            <div class="col form-group">
                                <label for="notchpadzeros">Pad Zeros</label>
                                <div class="input-group">
                                    <select name="notchpadzeros" id="notchpadzeros" class="form-control form-control-sm">
                                        <option value="0">No</option>
                                        <option value="1">Yes</option>
                                    </select>
                                    <div class="input-group-append">
                                        <button class="btn btn-sm btn-secondary" id="generatenotches">
                                            <i class="fal fa-sync fa-lg fa-fw"></i>
                                        </button>
                                    </div>
                                </div>
                                
                            </div>
                        </div>

                        <div class="scrollableprivilege">
                            <table class="table table-sm table-striped table-hover" id="generatednotchestable">
                                <thead>
                                    <th>#</th>
                                    <th>Notch Name</th>
                                    <th>&nbsp;</th> <!-- Delete -->
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savenotch"><i class="fal fa-save fa-fw fa-lg"></i> Save changes</button> 
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-fw fa-lg"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for position details -->
    <div class="modal" tabindex="-1" id="positiondetailsmodal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Position Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="positiondetailsnotifications"></div>
                    <input type="hidden" name="positionid" id="positionid" value="0">
                    
                    <div class="row">
                        <div class="form-group col col-md-8">
                            <label for="positionname">Position Name</label>
                            <input type="text" name="positionname" id="positionname" class="form-control form-control-sm">
                        </div>
                        <div class="form-group col">
                            <label for="establishment">Establishment</label>
                            <input type="number" name="establishment" id="establishment" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="reportsto">Reports To</label>
                        <select name="reportsto" id="reportsto" class="form-control form-control-sm">
                            <option value="0">&lt;Top&gt;</option>
                        </select>
                    </div>

                    <label for="">Starts At:</label>
                    <div class="row">
                        <div class="col form-group">
                            <label for="startsatjobgroup">Job Group</label>
                            <select name="startsatjobgroup" id="startsatjobgroup" class="form-control form-control-sm"></select>
                        </div>
                        <div class="col form-group">
                            <label for="startsatnotch">Notch</label>
                            <select name="startsatnotch" id="startsatnotch" class="form-control form-control-sm"></select>
                        </div>
                    </div>

                    <label for="">Ends At:</label>
                    <div class="row">
                        <div class="col form-group">
                            <label for="endsatjobgroup">Job Group</label>
                            <select name="endsatjobgroup" id="endsatjobgroup" class="form-control form-control-sm"></select>
                        </div>

                        <div class="col form-group">
                            <label for="endsatnotch">Notch</label>
                            <select name="endsatnotch" id="endsatnotch" class="form-control form-control-sm"></select>
                        </div>
                    </div>
                </div>

                <div class="modal-footer"> 
                    <button type="button" class="btn btn-success btn-sm" id="saveposition"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                   
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for  Salary Structure Details -->
    <div class="modal" tabindex="-1" id="salarystructuredetailsmodal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Salary Structure Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="salarystructureid" id="salarystructureid" value="0">
                    <div id="salarystructuredetailsnotifications"></div>
                    <div class="row">

                        <div class="col form-group">
                            <label for="salarystructurejobgroup">Job Group</label>
                            <select name="salarystructurejobgroup" id="salarystructurejobgroup" class="form-control form-control-sm"></select>
                        </div>

                        <div class="col form-group">
                            <label for="salarystructurenotch">Notch</label>
                            <select name="salarystructurenotch" id="salarystructurenotch" class="form-control form-control-sm"></select>
                        </div>
                    </div>
                   

                    <div class="row">
                        <div class="col form-group">
                            <label for="salarystructurepayrollitem">Payroll Item</label>
                            <select name="salarystructurepayrollitem" id="salarystructurepayrollitem" class="form-control form-control-sm "></select>
                        </div>

                        <div class="col form-group">
                            <label for="salarystructureannualincrement">Annual Increment</label>
                            <input type="number" name="salarystructureannualincrement" id="salarystructureannualincrement" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="salarystructureminvalue">Minimum Value</label>
                            <input type="number" name="salarystructureminvalue" id="salarystructureminvalue" class="form-control form-control-sm">
                        </div>
                        <div class="col form-group">
                            <label for="salarystructuremaxvalue">Maximum Value</label>
                            <input type="number" name="salarystructuremaxvalue" id="salarystructuremaxvalue" class="form-control form-control-sm">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savesalarystructure"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" i data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Employees Category Details -->
    <div class="modal" tabindex="-1" id="categorydetailsmodal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Category Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="jobcategoryid" id="jobcategoryid" value="0">
                    <div id="jobcategorydetailsnotifications"></div>
                    <div class="form-group">
                        <label for="categoryname">Category Name</label>
                        <input type="text" name="jobcategoryname" id="jobcategoryname" class="form-control form-control-sm">
                    </div>

                    <div class="form-group">
                        <label for="categoryprefix">Numbering Prefix</label>
                        <input type="text" name="jobcategoryprefix" id="jobcategoryprefix" class="form-control form-control-sm">
                    </div>

                    <div class="form-group">
                        <label for="categorycurrentnumber">Current Serial Number</label>
                        <input type="number" name="jobcategorycurrentnumber" id="jobcategorycurrentnumber" class="form-control form-control-sm">
                    </div>
            
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savejobcategorybutton"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Departments -->
    <div class="modal" tabindex="-1" id="departmentdetailsmodal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Department Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="departmentdetailsnotifications"></div>
                    <input type="hidden" name="departmentid" id="departmentid" value="0">
                    <div class="form-group">
                        <label for="departmentname">Department Name</label>
                        <input type="text" name="departmentname" id="departmentname" class="form-control form-control-sm">
                    </div>

                    <div class="form-group">
                        <label for="departmenthod">Department Head</label>
                        <select name="departmenthead" id="departmenthead" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                            <option value="0">&lt;None&gt;</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="departmentextension">Extension</label>
                        <input type="number" name="departmentextension" id="departmentextension" class="form-control form-control-sm">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savedepartmentbutton"><i class="fal fa-save fa-lg fa-fw"></i> Save Department</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for employment term details -->
    <div class="modal" tabindex="-1" id="employmenttermdetailsmodal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Term Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="employmenttermdetailsnotifications"></div>
                    <input type="hidden" name="termid" id="termid" value="0">
                    <div class="form-group">
                        <label for="termname">Term Name</label>
                        <input type="text" name="termname" id="termname" class="form-control form-control-sm">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="saveemploymentterm"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Employee Payroll Item Details -->
    <div class="modal" tabindex="-1" id="employeepayrollitemmodal">
        <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Employee Payroll Item Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="employeepayrollitemdetailsnotifications"></div>
                <input type="hidden" name="employeepayrollitemid" id="employeepayrollitemid" value="0">
                <div class="row">
                    <div class="col form-group">
                        <label for="employeepayrollitemtype">Type</label>
                        <select name="employeepayrollitemtype" id="employeepayrollitemtype" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                            <option value="payment">Payment</option>
                            <option value="benefit">Benefit</option>
                            <option value="deduction">Deduction</option>
                        </select>
                    </div>

                    <div class="col form-group">
                        <label for="employeepayrollitemname">Item Name</label>
                        <select name="employeepayrollitemname" id="employeepayrollitemname" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col form-group">
                        <label for="monthlyamount">Monthly Amount</label>
                        <input type="number" name="monthlyamount" id="monthlyamount" class="form-control form-control-sm">
                    </div>
                    <div class="col form-group">
                        <label for="targetamount">Target Amount</label>
                        <input type="number" name="targetamount" id="targetamount" class="form-control form-control-sm">
                    </div>
                </div>
                <div class="row"> 
                    <div class="col form-group">
                        <label for="applyrelief">Apply  Relief</label>
                        <select name="applyrelief" id="applyrelief" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                            <option value="0">No</option>
                            <option value="1">Yes</option>
                        </select>
                    </div>
                    <div class="col form-group">
                        <label for="employeepayrollitemperiodic">Periodic</label>
                        <select name="employeepayrollitemperiodic" id="employeepayrollitemperiodic" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                            <option value="0">No</option>
                            <option value="1">Yes</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col form-group">
                        <label for="payrollitemstartdate">Start Date</label>
                        <input type="text" name="payrollitemstartdate" id="payrollitemstartdate" class="form-control form-control-sm date-control">
                    </div>
                    <div class="col form-group">
                        <label for="employeepayrollitemduration">Duration(m)</label>
                        <input type="number" name="employeepayrollitemduration" id="employeepayrollitemduration" class="form-control form-control-sm" disabled>
                    </div>
                </div>

                <div class="form-group">
                    <label for="employeepayrollitemattachment">Attachment</label>
                    <input type="file" name="employeepayrollitemattachment" id="employeepayrollitemattachment" class="form-control form-control-sm">
                </div>

            </div>
            <div class="modal-footer">
                
                <button type="button" class="btn btn-success btn-sm" id="saveemployeepayrollitem"><i class="fal fa-save fa-lg fa-fw"></i> Save Employee Payroll Item</button>
                <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
            </div>
            </div>
        </div>
    </div>

    <!-- Modal for dependant details -->
    <div class="modal" tabindex="-1" id="dependantdetailsmodal">
        <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Dependant Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="empoyeedependantdetailsnotifications"></div>
                <input type="hidden" name="employeedependantid" id="employeedependantid" value="0">
                <div class="form-group">
                    <label for="dependadntname">Name</label>
                    <input type="text" name="employeedependantname" id="employeedependantname" class="form-control form-control-sm">
                </div>

                <div class="row">
                    <div class="col form-group">
                        <label for="employeedependadntgender">Gender</label>
                        <select name="employeedependadntgender" id="employeedependantgender" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                    </div>

                    <div class="col form-group">
                        <label for="employeedependantrelationship">Relationship</label>
                        <select name="employeedependantrelationship" id="employeedependantrelationship" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col form-group">
                        <label for="employeedependantiddoc">Identification Document</label>
                        <select name="employeedependntdoc" id="employeedependantdoc" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                        </select>
                    </div>

                    <div class="col form-group">
                        <label for="employeedependantdocno">ID Document  Number</label>
                        <input type="text" name="employeedependantdocno" id="employeedependantdocno" class="form-control form-control-sm">
                    </div>
                </div>

                <div class="row">
                    <div class="col form-group">
                        <label for="employeedependantdob">Date of Birth</label>
                        <input type="text" name="employeedependantdob" id="employeedependantdob" class="form-control form-control-sm date-control">
                    </div>


                    <div class="col form-group">
                        <label for="employeedependadntpassportphoto">Passport Photo</label>
                        <input type="file" name="employeedependantpassportphoto" id="employeedependantpassportphoto" class="form-control form-control-sm">
                    </div>
                </div>
               

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-sm" id="saveemployeedependant"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
            </div>
            </div>
        </div>
    </div>

    <!-- Modal for beneficiary details -->
    <div class="modal" tabindex="-1" id="beneficiarydetailsmodal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Beneficiary Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="employeeebeneficiarydetailsnotifications"></div>
                <input type="hidden" name="baneficiaryid" id="beneficiaryid" value="0">
                <div class="row">
                    <div class="col form-group">
                        <label for="beneficiaryname">Full Name</label>
                        <input type="text" name="beneficiaryname" id="beneficiaryname" class="form-control form-control-sm">
                    </div>

                    <div class="col form-group">
                        <label for="beneficiaryrelationship">Relationship</label>
                        <select name="beneficiaryrelationship" id="beneficiaryrelationship" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col form-group">
                        <label for="beneficiaryidno">ID Number</label>
                        <input type="text" name="" id="beneficiaryidno" class="form-control form-control-sm">
                    </div>

                    <div class="col">
                        <div class="row">
                            <div class="col form-group">
                                <label for="beneficiarypercentage">Percentage</label>
                                <input type="number" name="beneficiarypercentage" id="beneficiarypercentage" class="form-control form-control-sm">
                            </div> 
                            <div class="col form-group">
                                <label for="beneficiatypercentageavailable">Available (%)</label>
                                <input type="number" name="beneficiarypercentageavailable" id="beneficiarypercentageavailable" class="form-control form-control-sm font-weight-bold" disabled>
                            </div>
                        </div>
                    </div>
                    
                </div>
              
                <div class="row">
                    <div class="col form-group">
                        <label for="beneficiarymobile">Mobile Number</label>
                        <input type="text" name="beneficiarymobile" id="beneficiarymobile" class="form-control form-control-sm">
                    </div>

                    <div class="col form-group">
                        <label for="beneficiaryemail">Email Address</label>
                        <input type="text" id="beneficiaryemail" class="form-control form-control-sm">
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-sm" id="savebeneficiary"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i> </button>
            </div>
            </div>
        </div>
    </div>

    <!-- Modal for internal work experience details  -->
    <div class="modal" tabindex="-1" id="internalworkexperiencemodal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Internal Work Experience Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="internalexperiencedetailsnotifications"></div>
                <input type="hidden" name="internalexperienceid" id="internalexperienceid" value="0">
                <div class="row">
                    <div class="col form-group">
                        <label for="internalexperiencedepartment">Department</label>
                        <select name="internalexperiencedepartment" id="internalexperiencedepartment" class="form-control form-control-sm"></select>
                    </div>
                    <div class="col form-group">
                        <label for="internalexperienceposition">Position</label>
                        <select name="internalexperienceposition" id="internalexperienceposition" class="form-control form-control-sm"></select>
                    </div>
                </div>
                <div class="row">
                    <div class="col form-group">
                        <label for="internalexperiencestartdate">Start Date</label>
                        <input type="text" name="internalexperiencestartdate" id="internalexperiencestartdate" class="form-control form-control-sm">
                    </div>

                    <div class="col form-group">
                        <label for="internalexperienceenddate">End Date</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <input type="checkbox" id="internalexperiencecurrentlyworkhere" checked>
                                    <!-- <small class="mr-2">Currently works here</small> -->
                                </div>
                            </div>
                            <input type="text" class="form-control form-control-sm date-control" id="internalexperienceenddate" disabled placeholder="Currently works here">
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="internalexperiencedutiesandresponsibilities">Duties and Responsibilities</label>
                    <textarea name="internalexperiencedutiesandresponsibilities" id="internalexperiencedutiesandresponsibilities" class="form-control form-control-sm"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-sm" id="saveinternalexperiencebutton"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
            </div>
            </div>
        </div>
    </div>

    <!-- Modal for external work experience details -->
    <div class="modal" tabindex="-1" id="externalworkexperiencemodal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">External Work Experience Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="externalexperiencedetailsnotifications"></div>
                    <input type="hidden" name="externalexperienceid" id="externalexperienceid" value="0">
                    <div class="row">
                        <div class="col form-group">
                            <label for="externalexperienceorganization">Organization</label>
                            <input type="text" name="externalexperienceorganization" id="externalexperienceorganization" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="externalexperienceposition">Position</label>
                            <input type="text" name="externalexperienceposition" id="externalexperienceposition" class="form-control form-control-sm">
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col form-group">
                            <label for="externalexperiencetartdate">Start Date</label>
                            <input type="text" name="externalexperiencetartdate" id="externalexperiencetartdate" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="externalexperienceenddate">End Date</label>
                            <input type="text" name="externalexperienceenddate" id="externalexperienceenddate" class="form-control form-control-sm">
                        </div>
                    </div>

                     <!-- <div class="form-group">
                        <label for="externalexperiencenarration">Narration</label>
                        <textarea name="externalexperiencenarration" id="externalexperiencenarration" class="form-control form-control-sm"></textarea>
                    </div> -->

                    <div class="form-group">
                        <label for="externalexperienceduties">Duties and Responsibilities</label>
                        <textarea name="externalexperienceduties" id="externalexperienceduties" class="form-control form-control-sm"></textarea>
                    </div>

                   
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="saveexternalworkexperience"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button> 
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for training details -->
    <div class="modal" tabindex="-1" id="trainingdetailsmodal">
        <div class="modal-dialog modal-lg" >
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Training Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="certificateid" id="certificateid" value="0">
                    <div id="coursedetailsnotifications"></div>
                    <div class="row">
                        <div class="col form-group">
                            <label for="trainingcategory">Category</label>
                            <select name="trainingcategory" id="trainingcategory" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                                <option value="academic">Academic</option>
                                <option value="professional">Professional</option>
                            </select>
                        </div>
                        <div class="col form-group">
                            <label for="traininglevel">Course Level</label>
                            <select name="trininglevel" id="traininglevel" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col form-group">
                            <label for="trainingschool">School / College</label>
                            <input type="text" name="trainingschool" id="trainingschool" class="form-control form-control-sm">
                        </div>

                        
                    </div>

                    <div class="row"> 
                        <div class="col form-group">
                            <label for="coursename">Course Name</label>
                            <input type="text" name="coursename" id="coursename" class="form-control form-control-sm">
                        </div>
                        <div class="col form-group">
                            <label for="coursemajor">Major</label>
                            <input type="text" name="coursemajor" id="coursemajor" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="coursestartdate">Start Date</label>
                            <input type="text" name="coursestartdate" id="coursestartdate" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="trainingcurrentlyattending">Currently Attending</label>
                                    <select name="trainingcurrentlyattending" id="trainingcurrentlyattending" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>
                                <div class="col form-group">
                                    <label for="courseenddate">End Date</label>
                                    <input type="text" class="form-control form-control-sm" id="courseenddate">
                                </div>
                            </div>

                        </div>          
                    </div>

                    <div class="row">
                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="certificatenumber">Certificate Number</label>
                                    <input type="text" name="certificatenumber" id="certificatenumber" class="form-control form-control-sm" disabled>
                                </div>
                                <div class="col form-group">
                                    <label for="gradeattained">Grade Attained</label>
                                    <input type="text" name="gradeattained" id="gradeattained" class="form-control form-control-sm" disabled>
                                </div>
                            </div>
                        </div>
                        <div class="col form-group">
                            <label for="certificateattahment">Certificate Attachment</label>
                            <input type="file" name="certificateattachment" id="certificateattachment" class="form-control form-control-sm" disabled>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="certificateexpire">Certificate Expires</label>
                            <select name="certificateexpires" id="certificateexpires" class="form-control form-control-sm" disabled>
                                <option value="">&lt;Choose&gt;</option>
                                <option value="0">No</option>
                                <option value="1">Yes</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="certificateexpirydate">Expiry Date</label>
                            <input type="text" name="certificateexpirydate" id="certificateexpirydate" class="form-control form-control-sm" disabled>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savestafftraining"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for leave application details -->
    <div class="modal" tabindex="-1" id="leavedetailsmodal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Leave Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="staffleaveapplicationid" id="staffleaveapplicationid" value="0">
                    <div id="staffleavedetailsnotifications"></div>
                    <div class="row">

                        <div class="col form-group">
                            <label for="staffleavetype">Leave Type</label>
                            <select name="staffleavetype" id="staffleavetype" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>

                        <div class="col">
                            <div class="row">
                                <div class="col form-group text-success text-center">
                                    <label for="staffleaveallocation">Allocated</label>
                                    <span class="alert alert-success smaller-alert" id="staffleaveallocation">0</span>
                                    <!-- <input type="number" name="staffleaveallocation" id="staffleaveallocation" class="form-control form-control-sm" disabled> -->
                                </div>

                                <div class="col form-group text-danger text-center">
                                    <label for="staffleavedaysutilized">Utilized</label>
                                    <span class="alert alert-danger smaller-alert " id="staffleavedaysutilized">0</span>
                                </div>

                                <div class="col form-group text-secondary text-center ">
                                    <label for="staffleavedaystaken">Taken</label>
                                    <span class="alert alert-secondary smaller-alert" id="staffleavedaystaken">0</span>
                                    <!-- <input type="number" name="staffleacedaystook" id="staffleavedaystook" class="form-control form-control-sm"> -->
                                </div>
                                <div class="col form-group text-primary text-center">
                                    <label for="staffleavebalance">Balance</label>
                                    <span class="alert alert-primary smaller-alert" id="staffleavebalance">0</span>
                                    <!-- <input type="number" name="staffleavebalance" id="staffleavebalance" class="form-control form-control-sm" disabled> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">

                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="staffleavestartdate">Start Date</label>
                                    <input type="text" name="staffleavestartdate" id="staffleavestartdate" class="form-control form-control-sm date-control">
                                </div>
                                <div class="col form-group">
                                    <label for="staffleaveenddate">End Date</label>
                                    <input type="text" name="staffleaveenddate" id="staffleaveenddate" class="form-control form-control-sm">
                                </div>
                            </div>
                        </div>

                        <div class="col form-group">
                            <label for="staffleaveattachment">Attachment <small>(Only Images and PDF Files)</small></label>
                            <input type="file" name="staffleaveattachment" id="staffleaveattachment" class="form-control form-control-sm"  accept=".pdf, image/*">
                        </div>

                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="staffleavereliever">Reliever</label>
                            <select name="staffleavereliever" id="staffleavereliever" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                        
                        <div class="col form-group">
                            <label for="staffleavesupervisor">Supervisor</label>
                            <select name="staffleavesupervisor" id="staffleavesupervisor" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="staffleavenarration">Narration</label>
                        <textarea name="staffleavenarration" id="staffleavenarration" class="form-control form-control-sm"></textarea>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savestaffleaveapplication"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for document detail -->
    <div class="modal" tabindex="-1" id="documentdetaislmodal">
        <div class="modal-dialog">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Document Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="staffdocumentid" id="staffdocumentid" value="0">
                    <div id="staffdocumentdetailsnotifications"></div>
                    <div class="form-group">
                        <label for="staffdocument">Document</label>
                        <select name="staffdocument" id="staffdocument" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                        </select>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="staffdocumentexpires">Expires</label>
                            <select name="staffdocumentexpires" id="staffdocumentexpires" class="form-control form-control-sm" disabled>
                                <option value="">&lt;Choose&gt;</option>
                                <option value="0">No</option>
                                <option value="1">Yes</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="staffdocumentexpirydate">Expiry Date</label>
                            <input type="text" name="staffdocumentexpirydate" id="staffdocumentexpirydate" class="form-control form-control-sm" disabled>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="staffdocumentattachment">Attachment</label>
                        <input type="file" name="staffdocumentattachment" id="staffdocumentattachment" class="form-control form-control-sm" accept=".pdf, image/*">
                    </div>

                    <div class="form-group">
                        <label for="staffdocumentnarration">Narration</label>
                        <textarea name="staffdocumentnarration" id="staffdocumentnarration" class="form-control form-control-sm"></textarea>
                    </div>
                   
                </div>
                <div class="modal-footer">
                    
                    <button type="button" class="btn btn-success btn-sm" id="saveemployeedcoument"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for leave type details -->
    <div class="modal" tabindex="-1" role="dialog" id="leavetypedetailsmodal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Leave Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="levetypeid" id="leavetypeid" value="0">
                    <div id="leavetypedetailsnotifications"></div>
                    <div class="row">
                        <div class="col form-group">
                            <label for="levetypename">Leave Type</label>
                            <input type="text" name="leavetypename" id="leavetypename" class="form-control form-control-sm">
                        </div>

                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="leavetypeprobationperiod">Probation Period</label>
                                    <input type="number" name="leavetypeprobationperiod" id="leavetypeprobationperiod" class="form-control form-control-sm">
                                </div>

                                <div class="col form-group">
                                    <label for="leavetypeannualallocation">Annual Allocation</label>
                                    <input type="number" name="leavetypeannualallocation" id="leavetypeannualallocation" class="form-control form-control-sm">
                                </div>
                            </div>
                           
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="leavetypecanbesplit">Can be Split</label>
                                    <select name="leavetypecabnesplit" id="leavetypecanbesplit" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>

                                <div class="col form-group">
                                    <label for="leavetypehalfdayapplication">Half-day Application</label>
                                    <select name="leavetypehalfdayapplication" id="leavetypehalfdayapplication" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="0">No</option>
                                        <option value="1">Yes</option>
                                    </select>
                                </div>
                            </div> 
                        </div>
    
                        <div class="col form-group">
                            <label for="leavetypeexcudespublicholidays">Exclude Public Holidays</label>
                            <select name="leavetypeexcudespublicholidays" id="leavetypeexcudespublicholidays" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                                <option value="0">No</option>
                                <option value="1">Yes</option>
                            </select>
                        </div>                    
                    </div>

                    <div class="row">
                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="leavetypeapplywithoutallocation">Apply without Allocation</label>
                                    <select name="leavetypeapplywithoutallocation" id="leavetypeapplywithoutallocation" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="0">No</option>
                                        <option value="1">Yes</option>
                                    </select>
                                </div>

                                <div class="col form-group">
                                    <label for="leavetyperequireattachment">Require Attachment</label>
                                    <select name="leavetyperequireattachment" id="leavetyperequireattachment" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="0">No</option>
                                        <option value="1">Yes</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col form-group">
                            <label for="leavtypeapprovalflow">Approval Flow</label>
                            <select name="leavetypeapprovalflow" id="leavetypeapprovalflow" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                        
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="leavetypeallowancepayable">Allowance Payable</label>
                            <select name="leavetypeallowancepayable" id="leavetypeallowancepayable" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                                <option value="0">No</option>
                                <option value="1">Yes</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="leavetypepayrollitem">Payroll Item</label>
                            <select name="leavetypepayrollitem" id="leavetypepayrollitem" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="leavetypeallocation">Allocation</label>
                            <input type="number" name="leavetypeallocation" id="leavetypeallocation" class="form-control form-control-sm">
                        </div>

                        <div class="col">
                            <label for="leavetypesalarypercentpayable">Salary Payable(%)</label>
                            <div class="input-group">
                                <input type="number" name="leavetypesalarypercentpayable" id="leavetypesalarypercentpayable" class="form-control form-control-sm">
                                <div class="input-group-append">
                                    <button class="btn btn-sm btn-secondary" id="addleavetypesalarypercentage"><i class="fal fa-plus fa-lg fa-fw"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <table class="table table-sm table-striped table-hover" id="leavetypeallocationtable">
                        <thead>
                            <th>#</th>
                            <th>Allocation (D)</th>
                            <th>Percentage Payable</th>
                            <th>&nbsp;</th>
                            <th>&nbsp;</th>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm " id="saveleavetype"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
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

    <!-- Modal for Approval Flow Details -->
    <div class="modal" tabindex="-1" role="dialog" id="approvalflowdetailsmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Approval Flow Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <input type="hidden" name="leaveapprovalflowid" id="leaveapprovalflowid" value="0">
                    <div id="leaveflowdetailsnotifications"></div>
                    <div class="form-group">
                        <label for="approvalflowname">Flow Name</label>
                        <input type="text" name="approvalflowname" id="approvalflowname" class="form-control form-control-sm">
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="approvalflowlevel">Approval Level</label>
                            <select name="approvalflowlevel" id="approvalflowlevel" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                                <option value="supervisor">Supervisor</option>
                                <option value="hrmanager">HR Manager</option>
                                <option value="topmanagement">Top Management</option>
                            </select>
                        </div>
                        <div class="col form-group">
                            <label for="approvalflowhierarchy">Approval Hierarchy</label>
                            <select name="approvalflowhierarchy" id="approvalflowhierarchy" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </div>
                    </div>
                   
                    <div class="row">
                        <div class="col form-group">
                            <label for="approvalflownextescalation">Escalate After (M)</label>
                            <input type="number" name="approvalflownextescalation" id="approvalflownextescalation" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="approvalflowcolourcode">Colour Code</label>
                            <div class="input-group">
                                <input type="color" name="approvalflowcolourcode" id="approvalflowcolourcode" class="form-control form-control-sm">
                                <div class="input-group-append">
                                    
                                    <button class="btn btn-sm btn-secondary" id="addflowhierachy"><i class="fal fa-plus fa-lg fa-fw"></i></button>
                                </div>
                            </div> 
                        </div>
                    </div>
                    
                    <table class="table table-sm table-striped table-hover" id="leaveapprovalflowhierarchytable">
                        <thead>
                            <th>#</th>
                            <th>Level</th>
                            <th>Hierarchy</th>
                            <th>Escalation</th>
                            <th>Colour</th>
                            <th>&nbsp;</th>
                            <th>&nbsp;</th>
                        </thead>
                        <tbody>

                      
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="saveleaveapprovalflow"><i class="fal fa-save fa-lg fa-fw"></i> Save Approval Flow</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for payroll creditor details  -->
    <div class="modal" tabindex="-1" role="dialog" id="payrollcreditordetailsmodal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Payroll Creditor Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="payrollcreditordetailsnotification"></div>
                    <input type="hidden" name="payrollcreditorid" id="payrollcreditorid" value="0">

                    <div class="row">
                        <div class="col form-group">
                            <label for="payrollcreditorrefno">Reference Number</label>
                            <input type="text" name="payrollcreditorrefno" id="payrollcreditorrefno" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="payrollcreditorname">Creditor Name</label>
                            <input type="text" name="payrollcreditorname" id="payrollcreditorname" class="form-control form-control-sm">
                        </div>
                    </div>
                   
                    <div class="form-group">
                        <label for="payrollcreditorphysicaladdress">Physical Address</label>
                        <textarea name="payrollcreditorphysicaladdress" id="payrollcreditorphysicaladdress" class="form-control form-control-sm"></textarea>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="payrollcreditorpostaladdress">Postal Address</label>
                            <input type="text" name="payrollcreditorpostaladdress" id="payrollcreditorpostaladdress" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="payrollcreditortown">Town</label>
                            <input type="text" name="payrollcreditortown" id="payrollcreditortown" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="payrollcreditortelephone">Telephone</label>
                            <input type="text" name="payrollcreditortelephone" id="payrollcreditortelephone" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="payrollcreditoremailaddress">Email Address</label>
                            <input type="email" name="payrollcreditoremail" id="payrollcreditoremail" class="form-control form-control-sm">
                        </div>
                    </div> 
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savepayrollcreditor"><i class="fal fa-save fa-lg fa-fw"></i> Save Creditor</button>
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

    <!-- modal for filtering employees -->
    <div class="modal" tabindex="-1" role="dialog" id="searchemployeemodal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Filter Employees</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="row">
                        <div class="col form-group">
                            <label for="filterstaffno">Staff Number</label>
                            <input type="text" name="filterstaffno" id="filterstaffno" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="filtername">Staff Name</label>
                            <input type="text" name="filtername" id="filtername" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="filterregdocno">Registration Doc Number</label>
                            <input type="text" name="filterregdocno" id="filterregdocno" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="filterpinno">PIN Number</label>
                            <input type="text" name="filterpinno" id="filterpinno" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="filternssfno">NSSF Number</label>
                            <input type="text" name="filternssfno" id="filternssfno" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="filternhifno">NHIF Number</label>
                            <input type="text" name="filternhifno" id="filternhifno" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="filteremploymentdate">Employment Date</label>
                            <select name="filteremploymentdate" id="filteremploymentdate" class="form-control form-control-sm">
                                <option value="all">&lt;All&gt;</option>
                                <option value=">=">&gt;=</option>
                                <option value="<=">&lt;=</option>
                                <option value="between">&lt;Between&gt;</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="filterstartemploymentdate">Start Date</label>
                            <input type="filteremploymentstartdate" name="" id="filteremploymentstartdate" class="form-control form-control-sm" disabled>
                        </div>

                        <div class="col form-group">
                            <label for="filterendemploymentdate">End Date</label>
                            <input type="filteremploymentenddate" name="" id="filteremploymentenddate" class="form-control form-control-sm" disabled>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="filterstatus">Status</label>
                            <select name="filterstatus" id="filterstatus" class="form-control form-control-sm">
                                <option value="all">&lt;All&gt;</option>
                                <option value="active">Active</option>
                                <option value="suspended">On Suspension</option>
                                <option value="withdrawn">Withdrawn</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="filtercategory">Category</label>
                            <select name="filtercategory" id="filtercategory" class="form-control form-control-sm">
                                <option value="all">&lt;All&gt;</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="filteremploymentterm">Employment Term</label>
                            <select name="filteremploymentterm" id="filteremploymentterm" class="form-control form-control-sm">
                                <option value="all">&lt;All&gt;</option>
                            </select>
                        </div>
                    </div>

                    <div class="row"> 

                        <div class="col form-group">
                            <label for="filterjobposition">Position</label>
                            <select name="filterjobposition" id="filterjobposition" class="form-control form-control-sm">
                                <option value="all">&lt;All&gt;</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="filterjobgroup">Job Group</label>
                            <select name="filterjobgroup" id="filterjobgroup" class="form-control form-control-sm">
                                <option value="all">&lt;All&gt;</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="filternotch">Notch</label>
                            <select name="filternotch" id="filternotch" class="form-control form-control-sm">
                                <option value="all">&lt;All&gt;</option>
                            </select>
                        </div>

                       
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="filtersalutation">Salutation</label>
                            <select name="filtersalutation" id="filtersalutation" class="form-control form-control-sm">
                                <option value="all">&lt;All&gt;</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="filterreligion">Religion</label>
                            <select name="filterreligion" id="filterreligion" class="form-control form-control-sm">
                                <option value="all">&lt;All&gt;</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="filtergender">Gender</label>
                            <select name="filtergender" id="filtergender" class="form-control form-control-sm">
                                <option value="all">&lt;All&gt;</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                                <option value="other">Other</option>
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="filterregistrationdocument">Registration Document</label>
                            <select name="filterregistrationdocument" id="filterregistrationdocument" class="form-control form-control-sm">
                                <option value="all">&lt;All&gt;</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="filteronpayroll">On Payroll</label>
                            <select name="filteronpayroll" id="filteronpayroll" class="form-control form-control-sm">
                                <option value="all">&lt;All&gt;</option>
                                <option value="1">Yes</option>
                                <option value="0">No</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="filterdisability">Has Disability</label>
                            <select name="filterdisability" id="filterdisability" class="form-control form-control-sm">
                                <option value="all">&lt;All&gt;</option>
                                <option value="1">Yes</option>
                                <option value="0">No</option>
                            </select>
                        </div>
                    </div>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="beginfilteremployees"><i class="fal fa-search fa-lg fa-fw"></i> Begin Search</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i> Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for employee statutory deductions payroll items -->
    <div class="modal" tabindex="-1" role="dialog" id="employeepayrollitemstatutorydeductionsmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Select Statutory Items</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="employeestatutorypayrollitemdetailsnotifications"></div>
                <table class="table table-sm table-striped table-hover" id="employeepayrollitemsstatutorydeductionstable">
                    <thead>
                        <th><input type="checkbox"  id="selectallemployeepayrollitemsstatutodydeductions"></th>
                        <th>#</th>
                        <th>Item</th>
                        <th class="text-right">Amount</th>
                        <th class="text-center">&nbsp;</th>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-sm" id="saveemployeestatutorydeductions"><i class="fal fa-save fa-fw fa-lg"></i> Save Selected Items</button>
                <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close Window <i class="fal fa-times fa-fw fa-lg"></i></button>
            </div>
            </div>
        </div>
    </div>

    <!-- modal for employee salary grade payroll items -->
    <div class="modal" tabindex="-1" role="dialog" id="employeepayrollitemgradesmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Select Staff Grade Items</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="employeegradepayrollitemdetailsnotifications"></div>
                <table class="table table-sm table-striped table-hover" id="employeegradepayrollitemstable">
                    <thead>
                        <th><input type="checkbox"  id="selectallemployeegradepayrollitems"></th>
                        <th>#</th>
                        <th>Item</th>
                        <th class="text-right">Amount</th>
                        <th class="text-center">&nbsp;</th>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-sm" id="saveemployeegradeitems"><i class="fal fa-save fa-fw fa-lg"></i> Save Selected Items</button>
                <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close Window <i class="fal fa-times fa-fw fa-lg"></i></button>
            </div>
            </div>
        </div>
    </div>

    <!-- Modal for leave approval -->
    <div class="modal" tabindex="-1" role="dialog" id="leaveapprovalmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Leave Approval </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <div id="leaveprocessingnotifications"></div>
                    <p>Approval Level</p>
                    <div id="leaveprocessingstatuses" class="mb-3"></div>
                    <div class="form-group">
                        <label for="leaveapprovalstatus">Approval Status</label>
                        <select name="leaveapprovalstatus" id="leaveapprovalstatus" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                            <option value="approved">Approved</option>
                            <option value="cancelled">Cancelled</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="leaveapprovalnarration">Narration</label>
                        <textarea name="leaveapprovalnarration" id="leaveapprovalnarration" class="form-control form-control-sm"></textarea>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="saveleaveprocessing"><i class="fal fa-save fa-lg fa-fw"></i> Save Status Change</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i> Close Window</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Leave timeline modal -->
    <div class="modal" tabindex="-1" role="dialog" id="leavetimelinemodal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Leave Timeline </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- <div id="leavetimeline"> -->
                    <div id="timeline-speaker">
                        <h4>Leave Processing Events</h4>
                        <ul class="progress-indicator stacked" id="leavetimelineactivities">
                            <!-- <li class="current-time completed">
                                <span class="time">01-Jan-2024</span>
                                <span class="bubble"></span>
                                <span class="stacked-text">
                                    Application
                                    <span class="subdued">Annual Leave</span>
                                    <span class="subdued">Start Date:01-Jan-2024</span>
                                    <span class="subdued">End Date:03-Jan-2024</span>
                                    <span class="subdued">Duration: 3 Days</span>
                                </span>
                            </li>
                            <li class="danger">
                                <span class="time">02-Jan-2024</span>
                                <span class="bubble"></span>
                                <span class="stacked-text">
                                    Supervisor Approval
                                    <span class="subdued">Robert Redford</span>
                                    <span class="subdued">Please ensure your roles are taken over by Monica</span>
                                </span>
                            </li>
                            <li>
                                <span class="time">03-Jan-2024</span>
                                <span class="bubble"></span>
                                <span class="stacked-text">
                                    Human Resource Manager Approval
                                    <span class="subdued">Grace Marden</span>
                                    <span class="subdued">All the best</span>
                                </span>
                            </li>
                            <li>
                                <span class="time">04-Jan-2024</span>
                                <span class="bubble"></span>
                                <span class="stacked-text">
                                    Senior Management Approval
                                    <span class="subdued">Harun Osoro</span>
                                    <span class="subdued" >Enjoy the holidays</span>
                                </span>
                            </li> -->
                        </ul>
                    </div>
                    <!-- </div> -->
                </div>
                <div class="modal-footer">
                    <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
                    <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i> Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Disciplinary Case Modal -->
    <div class="modal" tabindex="-1" role="dialog" id="disciplinarydetailsmodal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Disciplinary Case Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="disciplinarydetailsnotifications"></div>
                <input type="hidden" name="incidentid" id="incidentid" value="0">
                <div class="row">
                    <div class="col form-group">
                        <label for="diciplinarytype">Type</label>
                        <select name="disciplinarytype" id="disciplinarytype" class="form-control form-control-sm"></select>
                    </div>

                    <div class="col form-group">
                        <label for="disciplinarycategory">Category</label>
                        <select name="disciplinarycategory" id="disciplinarycategory" class="form-control form-control-sm"></select>
                    </div>
                </div>

                <div class="row">
                    <div class="col form-group">
                        <label for="disciplinaryincidentdate">Incident Date</label>
                        <input type="text" name="disciplinaryincidentdate" id="disciplinaryincidentdate" class="form-control form-control-sm">
                    </div>
                    <div class="col form-group">
                        <label for="disciplinaryaction">Action Required</label>
                        <select name="disciplinaryaction" id="disciplinaryaction" class="form-control form-control-sm"></select>
                    </div>
                </div>

                <div class="row">
                    <div class="col form-group">
                        <label for="disciplinaryactiondate">Action Date</label>
                        <input type="text" name="disciplinaryactiondate" id="disciplinaryactiondate" class="form-control form-control-sm">
                    </div>

                    <div class="col form-group">
                        <label for="discilinaryattachment">Attachment</label>
                        <input type="file" name="disciplinaryattachment" id="disciplinaryattachment" class="form-control form-control-sm">
                    </div>
                </div>

                <div class="row">
                    <div class="col form-group">
                        <!-- <label for="disciplinarynarration">Narration</label> -->
                        <textarea name="disciplinarynarration" id="disciplinarynarration" class="form-control form-control-sm"></textarea>
                    </div>
                </div>

            </div>
            
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-sm btn-success" id="savediscplinarycase">Save changes</button>
                <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close</button>
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
</body>
<?php require_once("footer.txt")?>
<script src="../plugins/fullcalendar-6.1.14/index.global.js"></script>
<script src="../js/payroll.js"></script> 
</html>