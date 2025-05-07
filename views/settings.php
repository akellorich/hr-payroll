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
                Settings
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

        <main id="settingsdetails">
            <div class="card containergroup">
                <div class="card-body">
                    <nav class="nav-justified ">
                            <div class="nav nav-tabs " id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="institution-tab" data-toggle="tab" href="#institution" role="tab" aria-controls="pop2" aria-selected="false">Institution</a>
                            <a class="nav-item nav-link" id="jobgroups-tab" data-toggle="tab" href="#jobgroups" role="tab" aria-controls="pop2" aria-selected="false">Grades</a>
                            <a class="nav-item nav-link" id="positions-tab" data-toggle="tab" href="#positions" role="tab" aria-controls="pop2" aria-selected="false">Positions</a>
                            <a class="nav-item nav-link" id="salarystructure-tab" data-toggle="tab" href="#salarystructures" role="tab" aria-controls="pop2" aria-selected="false">Scales</a>
                            <a class="nav-item nav-link" id="banks-tab" data-toggle="tab" href="#banks" role="tab" aria-controls="pop2" aria-selected="false">Banks</a>
                            <a class="nav-item nav-link" id="payrollitems-tab" data-toggle="tab" href="#payrollitems" role="tab" aria-controls="pop2" aria-selected="false">Items</a>
                            <a class="nav-item nav-link" id="creditors-tab" data-toggle="tab" href="#creditors" role="tab" aria-controls="pop2" aria-selected="false">Creditors</a>
                            <a class="nav-item nav-link" id="leavesettings-tab" data-toggle="tab" href="#leavesettings" role="tab" aria-controls="pop2" aria-selected="false">Leaves</a>
                            <a class="nav-item nav-link" id="categories-tab" data-toggle="tab" href="#categories" role="tab" aria-controls="pop2" aria-selected="false">Categories</a>
                            <a class="nav-item nav-link" id="units-tab" data-toggle="tab" href="#unitsmenu" role="tab" aria-controls="pop2" aria-selected="false">Units</a>
                            <a class="nav-item nav-link" id="departments-tab" data-toggle="tab" href="#departments" role="tab" aria-controls="pop2" aria-selected="false">Departments</a>
                            <a class="nav-item nav-link" id="employmentterms-tab" data-toggle="tab" href="#employmentterms" role="tab" aria-controls="pop2" aria-selected="false">Terms</a>
                            <!-- <a class="nav-item nav-link active" id="pop1-tab" data-toggle="tab" href="#tenants" role="tab" aria-controls="tenants" aria-selected="true">Tenants</a> -->
                            <a class="nav-item nav-link" id="inventoryitems-tab" data-toggle="tab" href="#uploadabledocuments" role="tab" aria-controls="pop2" aria-selected="false">Documents</a>
                            <a class="nav-item nav-link" id="inventorycategory-tab" data-toggle="tab" href="#emailsettings" role="tab" aria-controls="pop2" aria-selected="false">Email</a>
                            <a class="nav-item nav-link" id="inventorytype-tab" data-toggle="tab" href="#smssettings" role="tab" aria-controls="pop2" aria-selected="false">SMS</a>
                            <a class="nav-item nav-link" id="inventorytype-tab" data-toggle="tab" href="#whatsappsettings" role="tab" aria-controls="pop2" aria-selected="false">WhatsApp</a>

                        </div>
                    </nav>

                    <!-- Add the Tabs -->
                    <div class="tab-content text-left" id="nav-tabContent">
                        <!-- Institution Page -->
                        <div class="tab-pane fade show active" id="institution" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="institutionname">Institution Name</label>
                                        <input type="text" name="iunstitutionname" id="institutionname" class="form-control form-control-sm">
                                    </div>

                                    <div class="form-group">
                                        <label for="physicaladdress">Physical Address</label>
                                        <input type="text" name="physicaladdress" id="physicaladdress" class="form-control form-control-sm">
                                    </div>

                                    <div class="form-group">
                                        <label for="postaladdress">Postal Address</label>
                                        <input type="text" name="postaladdress" id="postaladdress" class="form-control form-control-sm">
                                    </div>

                                    <div class="form-group">
                                        <label for="town">Town</label>
                                        <input type="text" name="town" id="town" class="form-control form-control-sm">
                                    </div>

                                    <div class="form-group">
                                        <label for="postalcode">Postal Code</label>
                                        <input type="text" name="postalcode" id="postalcode" class="form-control form-control-sm">
                                    </div>

                                    <div class="form-group">
                                        <label for="telephone">Telephone</label>
                                        <input type="text" name="telephone" id="telephone" class="form-control form-control-sm">
                                    </div>

                                    <div class="form-group">
                                        <label for="email">Email Address</label>
                                        <input type="text" name="email" id="email" class="form-control form-control-sm">
                                    </div>

                                    <div class="form-group">
                                        <label for="website">Website</label>
                                        <input type="text" name="website" id="website" class="form-control form-control-sm">
                                    </div>
                                </div>

                                <div class="col">
                                    <img src="../images/noimage.jpg" alt="Logo" class="companyimagepreview">
                                    <input type="file" name="companylogo" id="companylogo" class="form-control form-control-sm">
                                </div>

                            </div>
                            <button class="btn btn-sm btn-success" id="saveinstitutiondetails"><i class="fal fa-save fa-lg fa-fw"></i> Save Institution Details</button>
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
                            <div class="toggle-switch">
                                <span>Departments</span>
                                <input type="checkbox" name="departmentsectionselection" id="departmentsectionselection" class="toggler" checked>
                                <span>Sections</span>
                            </div>

                            <div id="departmentnotifications"></div>

                            <div id="departmentdetails">
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

                            <div id="sectiondetails" style="display:none">
                                <table class="table table-sm table-striped table-hover" id="sectionstable">
                                    <thead>
                                        <th>#</th>
                                        <th>Department</th>
                                        <th>Section Code</th>
                                        <th>Section Name</th>
                                        <th>Employees</th>
                                        <th>Date Added</th>
                                        <th>Added By</th>
                                        <th>&nbsp;</th>
                                        <th>&nbsp;</th>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <button id="addnewsection" class="btn btn-sm btn-success"><i class="fal fa-fw fa-lg fa-plus"></i> Add New Section</button>
                            </div>
                            
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

                        <!-- Units Page -->
                        <div class="tab-pane fade" id="unitsmenu" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <div id="unitnotifications"></div>
                            <table class="table table-sm table-striped table-hover" id="unitstable">
                                <thead>
                                    <th>#</th>
                                    <th>Unit Code</th>
                                    <th>Unit Name</th>
                                    <th>Employees</th>
                                    <th>Date Added</th>
                                    <th>Added By</th>
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <button class="btn btn-sm btn-success" id="addnewunit"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Unit</button>
                        </div>

                        <!-- Uplodable documents Tab -->
                        <div class="tab-pane fade" id="uploadabledocuments" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <table class="table table-sm table-striped table-hover">
                                <thead>
                                    <th>#</th>
                                    <th>Document Name</th>
                                    <th>Applies To</th>
                                    <th>Directory</th>
                                    <th>Date Added</th>
                                    <th>Added By</th>
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <button class="btn btn-sm btn-success" id="addnewuploadabledocument"><i class="fal fa-plus fa-fw fa-lg"></i> Add Uploadable Document</button>
                        </div>

                        <!-- SMS settings Tab -->
                        <div class="tab-pane" id="smssettings" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <div id="smsnotifications"></div>
                            <div class="row mt-2">
                                <div class="col smsconfig">   
                                    <!-- <h4>SMS Configuration Settings</h4> -->
                                    <div id="configurationerrordiv"></div>
                                    <div class="form-group">
                                        <label for="clientid">Client Id</label>
                                        <input type="text" name="clientdid" id="clientid" class="form-control form-control-sm">
                                    </div>
                                    <div class="form-group">
                                        <label for="senderid">Sender Id:</label>
                                        <input type="text" name="senderid" id="senderid" class="form-control form-control-sm">
                                    </div>
                                    <div class="form-group">
                                        <label for="apikey">API Key:</label>
                                        <input type="text" name="apikey" id="apikey" class="form-control form-control-sm">
                                    </div>
                                    <div class="form-group">
                                        <label for="url">URL:</label>
                                        <input type="text" name="url" id="url" class="form-control form-control-sm">
                                    </div>
                                    <button class="btn btn-success btn-sm" id="savesmsconfiguration"><i class="fal fa-save fa-lg fa-fw"></i> Save Configuration</button>
                                </div>

                                <div class="col testsendmessage">
                                    <!-- <h4>Test SMS API</h4> -->
                                    <div id="testsmssenderrors"></div>
                                    <div class="form-group">
                                        <label for="sendto">Mobile Number</label>
                                        <input type="text" name="sendto" id="sendto" class="form-control form-control-sm">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="message">Message</label>
                                        <textarea name="message" id="message" cols="30" rows="8" class="form-control form-control-sm"></textarea>
                                    </div>
                                    
                                    <button class="btn btn-success btn-sm" id="sendsms">Send Text Message <i class="fal fa-paper-plane fa-lg fa-fw"></i></button>
                                </div>
                            </div>
                        </div>

                        <!-- Email Settings Tab -->
                        <div class="tab-pane" id="emailsettings" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="row mt-3">
                                <div class="col">
                                    <div id="ememailconfigurationnotifications"></div>
                                    <div class="form-group">
                                        <label for="ememailemailaddress">Email Address</label>
                                        <input type="email" name="ememailemailaddress" id="ememailemailaddress" class="form-control form-control-sm">
                                    </div>

                                    <div class="form-group">
                                        <label for="ememailemailpassword">Password</label>
                                        <input type="password" name="ememailemailpassword" id="ememailemailpassword" class="form-control form-control-sm">
                                    </div>

                                    <div class="row">
                                        <div class="col col-md-9 form-group">
                                            <label for="ememailemailsendername">Sender Name</label>
                                            <input type="text" name="ememailemailsendername" id="ememailemailsendername" class="form-control form-control-sm">
                                        </div>

                                        <div class="col form-group">
                                            <label for="defaultsendingmethod">Sending Method</label>
                                            <select name="defaultsendingmethod" id="defaultsendingmethod" class="form-control form-control-sm">
                                                <!-- <option value="">&lt;Choose&gt;</option> -->
                                                <option value="direct">Direct</option>
                                                <option value="queue">Queue</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col col-md-9 ">
                                            <label for="ememailsmtpserver">SMTP Server</label>
                                            <input type="text" name="" id="ememailsmtpserver" class="form-control form-control-sm">
                                        </div>

                                        <div class="form-group col">
                                            <label for="ememailsmtpport">Port</label>
                                            <input type="number" name="ememailsmtpport" id="ememailsmtpport" class="form-control form-control-sm">
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col col-md-9 form-group">
                                            <label for="ememailsecurityprotocol">Security Protocol</label>
                                            <select name="ememailsecurityprotocol" id="ememailsecurityprotocol" class="form-control form-control-sm">
                                                <option value="">&lt;Choose&gt;</option>
                                                <option value="1">SSL</option>
                                                <option value="0">TLS</option>
                                            </select>
                                        </div>

                                        <div class="col form-group">
                                            <label for="ememailglobalsetting">Global Setting</label>
                                            <select name="ememailglobalsetting" id="ememailglobalsetting" class="form-control form-control-sm">
                                                <option value="0">No</option>
                                                <option value="1">Yes</option> 
                                            </select>
                                        </div>
                                    </div>
                                    <button class="btn btn-sm btn-success" id="saveememailconfiguration"><i class="fal fa-save fa-lg fa-fw"></i> Save Email Configuration</button>
                                </div>

                                <div class="col">
                                    <div id="testemailnotifications"></div>
                                    
                                    <div class="row">
                                        <div class="col col-md-8 form-group">
                                            <label for="ememailtestrecipient">Recipient</label>
                                            <input type="email" name="ememailtestrecipient" id="ememailtestrecipient" class="form-control form-control-sm">
                                        </div>
                                        
                                        <div class="col form-group">
                                            <label for="ememailsendingmode">Sending Mode</label>
                                            <select name="ememailsendingmode" id="ememailsendingmode" class="form-control form-control-sm">
                                                <option value="queue">Queue</option>
                                                <option value="direct">Direct</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col col-md-8 form-group">                                                
                                            <label for="ememailtestsubject">Subject</label>
                                            <input type="text" name="ememailtestsubject" id="ememailtestsubject" class="form-control form-control-sm">
                                        </div> 
                                        
                                        <div class="col form-group">
                                            <label for="ememailattachment">Attachment</label>
                                            <input type="file" name="ememailattachment" id="ememailattachment" class="form-control form-control-sm" multiple>
                                        </div>
                                    </div>
                                    
                                    <textarea name="ememailtestbody" id="ememailtestbody" class="form-control form-control-sm"></textarea>
                                    <button id="ememailsendtest" class="btn btn-sm btn-outline-success mt-3"><i class="fal fa-paper-plane fa-lg fa-fw"></i> Send Test Email</button>
                                </div>
                            </div>
                        </div>

                        <!-- WhatsApp Settings Tab -->
                        <div class="tab-pane" id="whatsappsettings" role="tabpanel" aria-labelledby="pop2-tab">
                            <div class="pt-3"></div>
                            <div id="whatsappnotifications"></div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="phonenumberid">Phone Number ID</label>
                                        <input type="text" name="phonenumberid" id="phonenumberid" class="form-control form-control-sm">
                                    </div>
                                   
                                    <div class="form-group">
                                        <label for="baseurl">Base URL</label>
                                        <input type="text" name="baseurl" id="baseurl" class="form-control form-control-sm">
                                    </div>

                                    <div class="form-group">
                                        <label for="accesstoken">Access Token</label>
                                        <textarea name="accesstoken" id="accesstoken" rows="5" class="form-control form-control-sm"></textarea>
                                    </div>

                                    <button class="btn btn-sm btn-success" id="savewhatappconfiguration"><i class="fal fa-save fa-lg fa-fw"></i> Save Configuration</button>
                                </div>

                                <div class="col">
                                    <div class="row">
                                        <div class="col form-group">
                                            <label for="whatsapprecipient">Recipient Phone Number:</label>
                                            <input type="text" name="whatsapprecipient" id="whatsapprecipient" class="form-control form-control-sm">
                                        </div>
                                       
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="messagetype">Message Template</label>
                                        <div class="input-group">
                                            <select name="messagetype" id="messagetype" class="form-control form-control-sm">
                                                <option value="hello_world">Hello World Test</option>
                                                <option value="onboarding">On-boarding</option>
                                            </select>
                                            <div class="input-group-append">
                                                <button class="btn btn-sm btn-success" id="sendwhatsappmessage"><i class="fal fa-paper-plane fa-fw fa-lg"></i></button>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="form-group">
                                            <label for="templateparams">Template Variables</label>
                                            <input type="text" name="templateparams" id="templateparams" class="form-control form-control-sm">
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
                                    <!-- <a class="nav-item nav-link" id="leaveapplications-tab" data-toggle="tab" href="#leaveapplications" role="tab" aria-controls="pop1" aria-selected="true">Applications</a>
                                    <a class="nav-item nav-link " id="leavecalendar-tab" data-toggle="tab" href="#leavedashboard" role="tab" aria-controls="pop1" aria-selected="true">Calendar</a> -->
                                    <a class="nav-item nav-link active" id="pop2-tab" data-toggle="tab" href="#leavetypes" role="tab" aria-controls="pop2" aria-selected="false">Leave Types</a>
                                    <!-- <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#leaveallocations" role="tab" aria-controls="pop2" aria-selected="false">Allocations</a> -->
                                    <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#holidays" role="tab" aria-controls="pop2" aria-selected="false">Holidays</a>
                                    <!-- <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#workschedules" role="tab" aria-controls="pop2" aria-selected="false">Work Schedules</a> -->
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
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </main>
    </div>
    <!-- End of Template -->

    <!-- Modal for uploadable document -->
    <div class="modal" tabindex="-1" role="dialog" id="uplodabledocumentsmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Document Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="uploadabledocumentsnotifications"></div>
                    <input type="hidden" name="documentid" id="documentid" value="0">
                    <div class="form-group">
                        <label for="documentname">Document Name</label>
                        <input type="text" name="documentname" id="documentname" class="form-control form-control-sm">
                    </div>
                    <div class="form-group">
                        <label for="documentappliesto">Applies to ...</label>
                        <select name="documentappliesto" id="documentappliesto" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                            <option value="tenants">Tenants</option>
                            <option value="employees">Employees</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="documentdirectoryname">Directory Name</label>
                        <input type="text" name="directoryname" id="directoryname" class="form-control form-control-sm">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary btn-sm" id="clearuploadabledocument"><i class="fal fa-hand-sparkles fa-lg fa-fw"></i> Clear Fields</button>
                    <button type="button" class="btn btn-success btn-sm" id="saveuploadabledocument"><i class="fal fa-save fa-lg fa-fw"></i> Save Document</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i> Close Window</button>
                </div>
            </div>
        </div>
    </div>

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

    <!-- Unit Details Modal -->
    <div class="modal" tabindex="-1" role="dialog" id="unitdetailsmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Unit Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="unitid" id="unitid" value='0'>
                    <div id="unitdetailsnotifications"></div>
                    <div class="form-group">
                        <label for="unitcode">Unit Code</label>
                        <input type="text" name="unitcode" id="unitcode" class="form-control form-control-sm">
                    </div>
                    <div class="form-group">
                        <label for="unitname">Unit Name</label>
                        <input type="text" name="unitname" id="unitname" class="form-control form-control-sm">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="saveunit"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-lg fa-fw"></i> Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Section Details Modal -->
    <div class="modal" tabindex="-1" role="dialog" id="sectiondetailsmodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Section Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="sectiondetailsnotifications"></div>
                    <input type="hidden" name="sectionid" id="sectionid" value="0">
                    <div class="form-group">
                        <label for="sectiondepartment">Department</label>
                        <select name="sectiondepartment" id="sectiondepartment" class="form-control form-control-sm">
                            <option value="">&lt;Choose&gt;</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="sectioncode">Section Code</label>
                        <input type="text" name="sectioncode" id="sectioncode" class="form-control form-control-sm">
                    </div>
                    <div class="form-group">
                        <label for="sectionname">Section Name</label>
                        <input type="text" name="sectionname" id="sectionname" class="form-control form-control-sm">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savesection"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-fw fa-lg"></i> Close</button>
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


</body>
<?php require_once("footer.txt")?>
<script src="../js/settings.js"></script> 
</html>