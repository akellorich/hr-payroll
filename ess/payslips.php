<!DOCTYPE html>
<html lang="en">
<head>
   
    <?php  require_once("../views/header.txt")?>
    <title>ESS - Payslips</title>
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
                Payslips
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
        <main>
           <div class="card containergroup">
                <!-- Outer Card -->
                <div class="card-body">
                    <div class="row">
                        <!-- Inner cards - Report Type -->
                        <div class="col col-md-3">
                            <div class="card containergroup m-2">
                                <div class="card-header">
                                    <h5>Report Type</h5>
                                </div>
                                <div class="card-body">
                                    <div class="col form-group">
                                        <label for="payslipquantity">Quantity</label>
                                        <select name="payslipquantity" id="payslipquantity" class="form-control form-control-sm">
                                            <option value="">&lt;Choose&gt;</option>
                                            <option value="single">Single Payslip</option>
                                            <option value="multiple">Multiple Payslips</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        

                        <!-- Start Date Filter -->
                        <div class="col">
                            <div class="card containergroup m-2">
                                <div class="card-header">
                                    <h5>Start Period</h5>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col form-group">
                                            <label for="payslipstartmonth">Month</label>
                                            <select name="payslipstartmonth" id="payslipstartmonth" class="form-control form-control-sm">
                                                <option value="">&lt;Choose&gt;</option>
                                            </select>
                                        </div>

                                        <div class="col form-group">
                                            <label for="payslipstartyear">Year</label>
                                            <select name="payslipstartyear" id="payslipstartyear" class="form-control form-control-sm">
                                                <option value="">&lt;Choose&gt;</option>
                                            </select>
                                        </div>
                                    </div>
                                
                                </div>
                            </div>
                        </div>
                       

                        <!-- End Date Filter -->
                        <div class="col">
                            <div class="card containergroup m-2">
                                <div class="card-header">
                                    <h5>End Period</h5>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col form-group">
                                            <label for="payslipsendmonth">Month</label>
                                            <select name="payslipsendmonth" id="payslipsendmonth" class="form-control form-control-sm">
                                                <option value="">&lt;Choose&gt;</option>
                                            </select>
                                        </div>

                                        <div class="col form-group">
                                            <label for="payslipsendyear">Year</label>
                                            <div class="input-group">
                                                <select name="payslipsendyear" id="payslipsendyear" class="form-control form-control-sm">
                                                    <option value="">&lt;Choose&gt;</option>
                                                </select>  
                                                <div class="input-group-append">
                                                    <button class="btn btn-sm btn-success" id="filterpayslips"><i class="fal fa-search fa-lg fa-fw"></i></button>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col form-group">
                                            <!-- Drop down menu -->
                                            <label for="">&nbsp;</label>
                                            <div class="dropdown ">
                                                <button class="btn btn-outline-primary btn-sm dropdown-toggle" type="button" id="reportoutput" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Select Output
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
                            </div>
                        </div>
                        
                    </div>

                    <!-- table for employee payslips -->
                    <table class="table table-sm table-hover table-striped" id="payslipstable">
                        <thead>
                            <th>#</th>
                            <th>Month</th>
                            <th>Year</th>
                            <th>Total Payments</th>
                            <th>Total Deductions</th>
                            <th>Net Salary</th>
                            <th>Pay Point</th>
                            <th>&nbsp;</th>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
           </div>
        </main>
    </div>
    <!-- End of Template -->
</body>

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.js" integrity="sha256-qSIshlknROr4J8GMHRlW3fGKrPki733tLq+qeMCR05Q=" crossorigin="anonymous"></script> -->
<?php require_once("../views/footer.txt")?>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="../js/payslips.ess.js"></script> 
</html>