<!DOCTYPE html>
<html lang="en">
<head>
   
    <?php  require_once("header.txt")?>
    <title>HR-Payroll - Recruitment</title>
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
                Recruitment
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

        <main id="recruitmentdetails">
            <div class="card card-body">
                <nav class="nav-justified ">
                    <!-- Navigation -->
                    <div class="nav nav-tabs " id="employees-tab" role="tablist">
                        <a class="nav-item nav-link active" id="requisitions-tab" data-toggle="tab" href="#requisitions" role="tab" aria-controls="pop1" aria-selected="true">Requisitions</a>
                        <a class="nav-item nav-link" id="applications-tab" data-toggle="tab" href="#applications" role="tab" aria-controls="pop1" aria-selected="true">Applications</a>
                        <a class="nav-item nav-link" id="selection-tab" data-toggle="tab" href="#selection" role="tab" aria-controls="pop2" aria-selected="false">Selection</a>
                        <a class="nav-item nav-link" id="interviews-tab" data-toggle="tab" href="#interviews" role="tab" aria-controls="pop2" aria-selected="false">Interviews</a>
                        <a class="nav-item nav-link" id="onboarding-tab" data-toggle="tab" href="#onboarding" role="tab" aria-controls="pop2" aria-selected="false">Onboarding</a>
                        <!-- <a class="nav-item nav-link" id="shiftregister-tab" data-toggle="tab" href="#shiftregister" role="tab" aria-controls="pop2" aria-selected="false">Shift Register</a> -->
                    </div>
                </nav>

                <div class="tab-content text-left" id="nav-tabContent">
                    <!-- Requisitions Page -->
                    <div class="tab-pane fade show active" id="requisitions" role="tabpanel" aria-labelledby="pop1-tab">
                       <div class="card containergroup mt-3">
                            <div class="card-header">
                                <h3>Filter Options</h3>
                            </div>
                            <div class="card-body">
                                <div id="requisitionnotifications"></div>
                                <div class="row">
                                    <div class="col form-group">
                                        <label for="filterrequisitiondepartment">Department</label>
                                        <select name="filterrequisitiondepartment" id="filterrequisitiondepartment" class="form-control form-control-sm"></select>
                                    </div>
                                    <div class="col form-group">
                                        <label for="filterdaterange">Date Range</label>
                                        <select name="filterdaterange" id="filterdaterange" class="form-control form-control-sm">
                                            <option value="">&lt;Choose&gt;</option>
                                            <option value="today">Today</option>
                                            <option value="week">1 Week Ago</option>
                                            <option value="month">1 Month Ago</option>
                                            <option value="year">1 Year Ago</option>
                                        </select>
                                    </div>

                                    <div class="col form-group">
                                        <label for="filterrequisitionstartdate">Start Date</label>
                                        <div class="input-group">
                                            <input type="text" name="filterrequisitionstartdate" id="filterrequisitionstartdate" class="form-control form-control-sm">
                                            <div class="input-group-append">
                                                <button class="btn btn-sm btn-outline-secondary" id="selectfilterrequisitionstartdate"><i class="fa fa-calendar-alt fa-fw fa-lg"></i></button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col form-group">
                                        <label for="filterrequisitionenddate">End Date</label>
                                        <div class="input-group">
                                            <input type="text" name="filterrequisitionenddate" id="filterrequisitionenddate" class="form-control form-control-sm">
                                            <div class="input-group-append">
                                                <button class="btn btn-sm btn-outline-secondary" id="selectfilterrequisitionenddate"><i class="fa fa-calendar-alt fa-fw fa-lg"></i></button>
                                                <button class="btn btn-sm btn-success ml-3" id="filterrequisition"><i class="fal fa-sync fa-lg fa-fw"></i> Load</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-sm table-striped table-hover">
                                    <thead>
                                        <th>#</th> 
                                        <th>Requisition #</th>
                                        <th>Department</th>
                                        <th>Position</th>
                                        <th>Quantity</th>
                                        <th>Required Date</th>
                                        <th>Employment Type</th>
                                        <th>Contract Duration</th>
                                        <th>Status</th>
                                        <th>Date Added</th>
                                        <th>Added By</th>
                                        <th>&nbsp;</th>
                                        <th>&nbsp;</th>
                                        <th>&nbsp;</th><!-- Publish -->
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <button class="btn btn-sm btn-success" id="addnewrequest"><i class="fal fa-plus fa-fw fa-lg"></i> Make New Request</button>
                            </div>
                       </div>
                    </div>

                    <!-- Applications Page -->
                    <div class="tab-pane fade" id="applications" role="tabpanel" aria-labelledby="pop1-tab">
                       <div class="card containergroup mt-3">
                        <div class="card-header">
                            <h3>Filter Options</h3>
                        </div>
                        <div class="card-body">
                            <table class="table table-sm table-striped table-hover">
                                <thead>
                                    <th>#</th>
                                    <th>Application #</th>
                                    <th>Requisition #</th>
                                    <th>Department</th>
                                    <th>Position</th>
                                    <th>Full Name</th>
                                    <th>ID Number</th>
                                    <th>Gender</th>
                                    <th>DoB</th>
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <button class="btn btn-sm btn-success" id="addnewapplication"><i class="fal fa-plus fa-lg fa-fw"></i> Add New Application</button>
                        </div>
                       </div>
                    </div>

                    <!-- Selection Page -->
                    <div class="tab-pane fade" id="selection" role="tabpanel" aria-labelledby="pop1-tab">
                       <div class="card containergroup mt-3">
                            <div class="card-header">
                                <h3>Filter Options</h3>
                            </div>
                            <div class="card-body">
                                <table class="table table-sm table-striped table-hover">
                                    <thead>
                                        <th>#</th>
                                        <th>Requisition #</th>
                                        <th>Applicant No</th>
                                        <th>Applicant Name</th>
                                        <th>ID Number</th>
                                        <th>Department</th>
                                        <th>Position</th>
                                        <th>Start Date</th>
                                        <th>Status</th>
                                        <th>Application Date</th>
                                        <th>Approval Date</th>
                                        <th>Approved By</th>
                                        <th>&nbsp;</th><!-- Approve -->
                                        <th>&nbsp;</th><!-- Edit -->
                                        <th>&nbsp;</th><!-- Delete -->
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <button class="btn btn-sm btn-success" id="changeapplicantstatus"><i class="fal fa-clipboard-check fa-fw fa-lg"></i> Change Status</button>
                            </div>
                       </div>
                    </div>

                    <!-- Interviews Page -->
                    <div class="tab-pane fade" id="interviews" role="tabpanel" aria-labelledby="pop1-tab"> 
                        <nav class="nav-justified ">
                            <!-- Navigation -->
                            <div class="nav nav-tabs " id="employees-tab" role="tablist">
                                <a class="nav-item nav-link active" id="panels-tab" data-toggle="tab" href="#panels" role="tab" aria-controls="pop1" aria-selected="true">Panels</a>
                                <a class="nav-item nav-link" id="schedule-tab" data-toggle="tab" href="#schedule" role="tab" aria-controls="pop1" aria-selected="true">Schedule</a>
                                <a class="nav-item nav-link" id="grading-tab" data-toggle="tab" href="#grading" role="tab" aria-controls="pop2" aria-selected="false">Scoring</a>
                                <!-- <a class="nav-item nav-link" id="shiftregister-tab" data-toggle="tab" href="#shiftregister" role="tab" aria-controls="pop2" aria-selected="false">Shift Register</a> -->
                            </div>
                        </nav>

                        <div class="tab-content text-left mt-3" id="nav-tabContent">
                            <!-- Panels Page -->
                            <div class="tab-pane fade show active" id="panels" role="tabpanel" aria-labelledby="pop1-tab">
                                <div class="card containergroup mt-3">
                                    <div class="card-header">
                                        <h3>Filter Options</h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-sm table-striped table-table-hover">
                                            <thead>
                                                <th>#</th>
                                                <th>Panel Name</th>
                                                <th>Requisition #</th>
                                                <th>Department</th>
                                                <th>Position</th>
                                                <th>Requested</th>
                                                <th>Applicants</th>
                                                <th>Panelists</th>
                                                <th>Date Added</th>
                                                <th>Added By</th>
                                                <th>&nbsp;</th>
                                                <th>&nbsp;</th>
                                            </thead>
                                            <tbody></tbody>
                                        </table>
                                        <button id="addnewinterviewpanel" class="btn btn-sm btn-success"><i class="fal fa-plus fa-fw fa-lg"></i> Add New Panel</button>
                                    </div>
                                </div>
                            </div>

                             <!-- Schedule Page -->
                             <div class="tab-pane fade" id="schedule" role="tabpanel" aria-labelledby="pop1-tab">
                                <div class="card containergroup">
                                    <div class="card-header">
                                        <h3>Filter Options</h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-sm table-striped table-hover">
                                            <thead>
                                                <th>#</th>
                                                <th>Requisiiton #</th>
                                                <th>Position</th>
                                                <th>Applicant Name</th>
                                                <th>ID Number</th>
                                                <th>Schedule</th>
                                                <th>Location</th>
                                                <th>Panel</th>
                                                <th>Date Added</th>
                                                <th>Added By</th>
                                               <th>&nbsp;</th>
                                               <th>&nbsp;</th>
                                            </thead>
                                            <tbody></tbody>
                                        </table>
                                        <button class="btn btn-sm btn-success" id="addnewinterviewschedule"><i class="fal fa-plus fa-lg fa-fw"></i> Create New Interview Schedule</button>
                                    </div>
                                </div>
                            </div>
                            <!-- Scoring Page -->
                            <div class="tab-pane fade" id="grading" role="tabpanel" aria-labelledby="pop1-tab">
                               <div class="card containergroup">
                                    <div class="card-header">
                                        <h3>Filter Options</h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-sm table-striped table-hover">
                                            <thead>
                                                <th>#</th>
                                                <th>Applicant Name</th>
                                                <th>ID Number</th>
                                                <th>Position</th>
                                                <th>Interview Date</th>
                                                <th>Panel</th>
                                                <th>Status</th>
                                                <th>Avg Score</th>
                                                <th>Date Added</th>
                                                <th>Added By</th>
                                                <th>&nbsp;</th>
                                                <th>&nbsp;</th>
                                                <th>&nbsp;</th><!-- Generate Offer Letter -->
                                            </thead>
                                            <tbody></tbody>
                                        </table>
                                        <button class="btn btn-sm btn-success" id="addnewinterviewscore"><i class="fal fa-lg fa-fw fa-plus"></i> Add Candidate Score</button>
                                    </div>
                               </div>
                            </div>
                        </div>
                    </div>

                    <!-- Onboarding page -->
                    <div class="tab-pane fade" id="onboarding" role="tabpanel" aria-labelledby="pop1-tab">
                       <h4>Onboarding</h4>
                    </div>
                </div>
            <div>
        </main>
    </div>
    <!-- End of Template -->

    <!-- Modal for Requisition Details  -->
    <div class="modal" tabindex="-1" role="dialog" id="requisitiondetailsmodal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Requisition Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col col-md-8 form-group">
                            <label for="requisitiondepartment">Department</label>
                            <select name="requisitiondepartment" id="requisitiondepartment" class="form-control form-control-sm"></select>
                        </div>
                        <div class="col form-group">
                            <label for="requisitionquantity">Quantity</label>
                            <input type="number" name="requisitionquantity" id="requisitionquantity" class="form-control form-control-sm">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col col-md-8 form-group">
                            <label for="requisitionposition">Position</label>
                            <select name="requisitionposition" id="requisitionposition" class="form-control form-control-sm"></select>
                        </div>
                        <div class="col form-group">
                            <label for="requisitionrequireddate">Required Date</label>
                            <input type="text" name="requisitionrequireddate" id="requisitionrequireddate" class="form-control form-control-sm">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col col-md-8 form-group">
                            <label for="requisitionemploymenttype">Employment Type</label>
                            <select name="requisitionemploymenttype" id="requisitionemploymenttype" class="form-control form-control-sm"></select>
                        </div>
                        <div class="col form-group">
                            <label for="requisitioncontactduration">Contract Duration(m)</label>
                            <input type="number" name="requisitioncontactduration" id="requisitioncontactduration" class="form-control form-control-sm">
                        </div>
                    </div>
                    <textarea name="requsitionnarration" id="requisitionnarration" class="form-control form-control-sm"></textarea>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm"><i class="fal fa-save fa-fw fa-lg"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal"><i class="fal fa-times fa-fw fa-lg"></i> Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Job Application Details  -->
    <div class="modal" tabindex="-1" role="dialog" id="jobapplicantdetailsmodal">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Job Applicant's Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col form-group">
                            <label for="applicantrequisitionno">Requisition Number</label>
                            <select name="applicantrequisitionno" id="applicantrequisitionno" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                        <div class="col form-group">
                            <label for="applicantdepartment">Department</label>
                            <input type="text" name="applicantdepartment" id="applicantdepartment" class="form-control form-control-sm" disabled>
                        </div>
                        <div class="col form-group">
                            <label for="applicantposition">Position</label>
                            <input type="text" name="applicantposition" id="applicantposition" class="form-control form-control-sm" disabled>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="applicantfirstname">First Name</label>
                            <input type="text" name="applicantfirstname" id="applicantfirstname" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="applicantmiddlename">Middle Name</label>
                            <input type="text" name="applicantmiddlename" id="applicantmiddlename" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="applicantlastname">Last Name</label>
                            <input type="text" name="applicantlastname" id="applicantlastname" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="applicantidno">ID Number</label>
                            <input type="text" name="applicantidno" id="applicantidno" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="applicantgender">Gender</label>
                            <select name="applicantgender" id="applicantgender" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                                <option value="female">Female</option>
                                <option value="male">Male</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="applicantdob">Date of Birth</label>
                            <div class="input-group">
                                <input type="text" name="applicantdob" id="applicantdob" class="form-control form-control-sm">
                                <div class="input-group-append">
                                    <button class="btn btn-sm btn-outline-secondary"><i class="fal fa-calendar-alt fa-lg fa-fw"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="applicantmobileno">Mobile Number</label>
                            <input type="text" name="applicantmobileno" id="applicantmobileno" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="applicantemailaddress">Email Address</label>
                            <input type="text" name="applicantemailaddress" id="applicantemailaddress" class="form-control form-control-sm">
                        </div>

                        <div class="col form-group">
                            <label for="applicantpostaladdress">Postal Address</label>
                            <input type="text" name="applicantpostaladdress" id="applicantpostaladdress" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="applicantcv">Applicant CV</label>
                        <input type="file" name="applicantcv" id="applicantcv" class="form-control form-control-sm">
                    </div>

                    <div class="form-group">
                        <label for="applicantidcopy">ID Copy</label>
                        <input type="file" name="applicantidcopy" id="applicantcv" class="form-control form-control-sm">
                    </div>

                    <div class="form-group">
                        <label for="applicantacademicdocuments">Academic Documents</label>
                        <input type="file" name="applicantacademicdocuments" id="applicantcv" class="form-control form-control-sm">
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="savejobapplicantsdetails"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for applicants selection -->
    <div class="modal" tabindex="-1" role="dialog" id="applicantselectionmodal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Applicant Selection</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col form-group">
                            <label for="selectionrequisitionno">Requisition Number</label>
                            <select name="selectionrequisitionno" id="selectionrequisitionno" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                        <div class="col form-group">
                            <label for="selectionstatus">Status</label>
                            <select name="selectionstatus" id="selectionstatus" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                                <option value="approved">Approved</option>
                                <option value="rejected">Rejected</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="selectionnarration">Narration</label>
                        <textarea name="selectionnarration" id="selctionnarration" class="form-control form-control-sm"></textarea>
                    </div>
                    <div class="scrollable scrollabe-small">
                        <table class="table table-sm table-stroped table-hover">
                            <thead>
                                <th><input type="checkbox" name="selectionallapplicants" id="selectionallapplicants"></th>
                                <th>#</th>
                                <th>Applicant Name</th>
                                <th>ID  Number</th>
                                <th>Status</th>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-sm btn-success" id="saveapplicantselection"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for panel details -->
    <div class="modal" tabindex="-1" role="dialog" id="interviewpaneldetailsmodal">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Panel Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col form-group">
                            <label for="panelrequisitionno">Requisition Number</label>
                            <select name="panelrequisitionno" id="panelrequisitionno" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                        <div class="col form-group">
                            <label for="paneldepartment">Department</label>
                            <input type="text" name="paneldepartment" id="paneldepartment" class="form-control form-control-sm" disabled>
                        </div>
                        <div class="col form-group">
                            <label for="panelposition">Position</label>
                            <input type="text" name="panelposition" id="panelposition" class="form-control form-control-sm" disabled>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="panelname">Panel Name</label>
                            <input type="text" name="panelname" id="panelname" class="form-control form-control-sm">
                        </div> 

                        <div class="col form-group">
                            <label for="panelpanelist">Panelist</label>
                            <select name="panelpanelist" id="panelpanelist" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>

                        <div class="col form-group">
                            <label for="panelistpanelposition">Position / Role</label>
                            <div class="input-group">
                                <input type="text" name="panelistpanelposition" id="panelistpanelposition" class="form-control form-control-sm">
                                <div class="input-group-append">
                                    <button class="btn btn-sm btn-outline-success" id="addpanelpanelist"><i class="fal fa-user-plus fa-lg fa-fw"></i></button>
                                </div>
                            </div>
                        </div> 
                    </div>
                    <div class="scrollable scrollable-small">
                        <table class="table table-sm table-striped table-hover">
                            <thead>
                                <th>#</th>
                                <th>Staff No</th>
                                <th>Names</th>
                                <th>Position</th>
                                <th>&nbsp;</th>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="saveinterviewpaneldetails"><i class="fal fa-save fa-fw fa-lg"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-fw fa-lg"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for interview schedule  -->
    <div class="modal" tabindex="-1" role="dialog" id="applicantscheduledetailsmodal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Applicant Interview Schedule</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col form-group">
                            <label for="schedulerequisitionno">Requisition Number</label>
                            <select name="schedulerequisitionno" id="schedulerequisitionno" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                        <div class="col form-group">
                            <label for="scheduleposition">Position</label>
                            <input type="text" name="scheduleposition" id="schedulposition" class="form-control form-control-sm" disabled>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col form-group">
                            <label for="scheduleapplicant">Applicant</label>
                            <select name="scheduleapplicant" id="scheduleapplicant" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                        <div class="col form-group">
                            <label for="schedulepanel">Panel</label>
                            <select name="schedulepanel" id="schedulepanel" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col form-group">
                            <label for="schedulelocation">Location</label>
                            <input type="text" name="schedulelocation" id="schedulelocation" class="form-control form-control-sm">
                        </div>
                        <div class="col form-group">
                            <label for="scheduletime">Date and Time</label>
                            <input type="text" name="scheduletime" id="scheduletime" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="schedulenarration">Narration</label>
                        <textarea name="schedulenarration" id="schedulenarration" class="form-control form-control-sm"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm" id="schedulenewinterview"><i class="fal fa-save fa-lg fa-fw"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-lg fa-fw"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for candidate score -->
    <div class="modal" tabindex="-1" role="dialog" id="applicantinterviewscoremodal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Candidate Scores</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col form-group">
                            <label for="scorerequisitionno">Requisition No</label>
                            <select name="scorerequisitionno" id="scorerequisitionno" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                        <div class="col form-group">
                            <label for="scoreapplicant">Applicant</label>
                            <select name="scoreapplicant" id="scoreapplicant" class="form-control form-control-sm">
                                <option value="">&lt;Choose&gt;</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="scorenarrative">Narrative</label>
                        <textarea name="scorenarrative" id="scorenarrative" class="form-control form-control-sm"></textarea>
                    </div>
                    <div class="scrollable scrollable-small">
                        <table class="table table-sm table-striped table-hover">
                            <thead>
                                <th>#</th>
                                <th>Staff No</th>
                                <th>Names</th>
                                <th>Position</th>
                                <th>Score</th>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success btn-sm"><i class="fal fa-save fa-fw fa-lg"></i> Save changes</button>
                    <button type="button" class="btn btn-outline-danger btn-sm" data-dismiss="modal">Close <i class="fal fa-times fa-fw fa-lg"></i> </button>
                </div>
            </div>
        </div>
    </div>
</body>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.js" integrity="sha256-qSIshlknROr4J8GMHRlW3fGKrPki733tLq+qeMCR05Q=" crossorigin="anonymous"></script> -->
<?php require_once("footer.txt")?>
<script src="../js/recruitment.js"></script> 
</html>