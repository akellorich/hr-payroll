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
                Employees
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

        <main id="employeedetails">
            <!-- Employees Page -->
            <!-- <div class="tab-pane fade show active" id="employees" role="tabpanel" aria-labelledby="pop1-tab">         -->
            <div class="card containergroup">
                <div class="card-body">
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
                            <nav class="nav-justified">
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
                            </nav>

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
                                                    <label for="staffunit">Unit</label>
                                                    <select name="staffunit" id="staffunit" class="form-control form-control-sm">
                                                        <option value="">&lt;Choose&gt;</option>
                                                    </select>
                                                </div>  
                                                
                                            </div>

                                            <div class="row">
                                                <div class="col form-group">
                                                    <label for="staffdepartment">Department</label>
                                                    <select name="staffdepartment" id="staffdepartment" class="form-control form-control-sm">
                                                        <option value="">&lt;Choose&gt;</option>
                                                    </select>
                                                </div>  
                                                <div class="col form-group">
                                                    <label for="staffsection">Section</label>
                                                    <select name="staffsection" id="staffsection" class="form-control form-control-sm">
                                                        <option value="">&lt;Choose&gt;</option>
                                                    </select>
                                                </div>  

                                                <div class="col form-group">
                                                    <label for="staffshift">Shift</label>
                                                    <select name="staffshift" id="staffshift" class="form-control form-control-sm">
                                                        <option value="">&lt;Choose&gt;</option>
                                                    </select>
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

                                            <div class="row">

                                                <!-- <div class="col">
                                                    <div class="row"> -->
                                                <div class="col form-group">
                                                    <label for="employmentdate">Hire Date </label>
                                                    <input type="text" name="employmentdate" id="employmentdate" class="date-control form-control form-control-sm">
                                                </div>

                                                        
                                                    <!-- </div>
                                                </div> -->
                                                
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
            </div>
            
            <!-- </div> -->
        </main>
    </div>
    <!-- End of Template -->

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
                                    <span class="alert alert-success smaller-alert text-right" id="staffleaveallocation">0</span>
                                    <!-- <input type="number" name="staffleaveallocation" id="staffleaveallocation" class="form-control form-control-sm" disabled> -->
                                </div>

                                <div class="col form-group text-danger text-center">
                                    <label for="staffleavedaysutilized">Utilized</label>
                                    <span class="alert alert-danger smaller-alert text-right" id="staffleavedaysutilized">0</span>
                                </div>

                                <div class="col form-group text-secondary text-center ">
                                    <label for="staffleavedaystaken">Taken</label>
                                    <span class="alert alert-secondary smaller-alert text-right" id="staffleavedaystaken">0</span>
                                    <!-- <input type="number" name="staffleacedaystook" id="staffleavedaystook" class="form-control form-control-sm"> -->
                                </div>
                                <div class="col form-group text-primary text-center">
                                    <label for="staffleavebalance">Balance</label>
                                    <span class="alert alert-primary smaller-alert text-right" id="staffleavebalance">0</span>
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
                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="staffleaveapplicationhalfday">Half Day</label>
                                    <select name="staffleaveapplicationhalfday" id="staffleaveapplicationhalfday" class="form-control form-control-sm">
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>

                                <div class="col form-group">
                                    <label for="staffleaveapplicationshifthalf">Shift Half</label>
                                    <select name="staffleaveapplicationshifthalf" id="staffleaveapplicationshifthalf" class="form-control form-control-sm" disabled>
                                        <option value="">&lt;Choose&gt;</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="row">
                                <div class="col form-group">
                                    <label for="staffleavestarttime">Start Time</label>
                                    <input type="time" name="staffleavestarttime" id="staffleavestarttime" class="form-control form-control-sm" disabled>
                                </div>

                                <div class="col form-group">
                                    <label for="staffleaveendtime">End Time</label>
                                    <input type="time" name="staffleaveendtime" id="staffleaveendtime" class="form-control form-control-sm" disabled>
                                </div>
                            </div>
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

</body>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.js" integrity="sha256-qSIshlknROr4J8GMHRlW3fGKrPki733tLq+qeMCR05Q=" crossorigin="anonymous"></script> -->
<?php require_once("footer.txt")?>
<script src="../js/employees.js"></script> 
</html>