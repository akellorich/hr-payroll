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
                Leaves
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
                        <div class="nav nav-tabs " id="employees-tab" role="tablist">
                            <a class="nav-item nav-link  active" id="leavecalendar-tab" data-toggle="tab" href="#leavedashboard" role="tab" aria-controls="pop1" aria-selected="true">Calendar</a>
                            <a class="nav-item nav-link" id="leaveapplications-tab" data-toggle="tab" href="#leaveapplications" role="tab" aria-controls="pop1" aria-selected="true">Applications</a>
                            <a class="nav-item nav-link" id="pop2-tab" data-toggle="tab" href="#leaveallocations" role="tab" aria-controls="pop2" aria-selected="false">Allocations</a>
                        </div>
                    </nav>

                     <!-- Leave Pages -->
                     <div class="tab-content text-left" id="nav-tabContent">

                        <!-- Applications Page -->
                        <div class="tab-pane fade" id="leaveapplications" role="tabpanel" aria-labelledby="pop1-tab">
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
                        <div class="tab-pane fade show active" id="leavedashboard" role="tabpanel" aria-labelledby="pop1-tab">
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

                        <!-- Leave Allocation -->
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

                    </div>
                </div>
            </div>

        </main>
    </div>
    <!-- End of Template -->
</body>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.js" integrity="sha256-qSIshlknROr4J8GMHRlW3fGKrPki733tLq+qeMCR05Q=" crossorigin="anonymous"></script> -->
<?php require_once("footer.txt")?>
<script src="../js/leave.js"></script> 
</html>