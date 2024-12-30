<!DOCTYPE html>
<html lang="en">
<head>
   
    <?php  require_once("../views/header.txt")?>
    <title>ESS - Dashboard</title>
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
                Dashboard
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
            <!-- Cards -->
            <div class="cards">
                <!-- Certificates -->
                <div class="card-single">
                    <div>
                        <h1>8</h1>
                        <span>Certificates</span>  
                    </div>
                    <div><span class="fal fa-file-certificate"></span></div>
                </div>
               
                <!-- Dependants -->
                <div class="card-single">
                    <div>
                        <h1 id="dependants">5</h1>
                        <span>  Dependants</span>  
                    </div>
                    <div><span class="fal fa-users"></span></div>
                </div>
                <!-- Beneficiaries -->
                <div class="card-single">
                    <div>
                        <h1 id="beneficiaries">2</h1>
                        <span >Beneficiaries</span>  
                    </div>
                    <div><span class="fal fa-user-friends"></span></div>
                </div>
                <!-- Disciplinary -->
                <div class="card-single">
                    <div>
                        <h1>3</h1>
                        <span>Disciplinary</span>  
                    </div>
                    <div><span class="fal fa-exclamation-triangle"></span></div>
                </div>
                <!-- Retirement -->
                <div class="card-single">
                    <div>
                        <h1>17.5</h1>
                        <span>Retirement</span>  
                    </div>
                    <div><span class="fal fa-user-crown"></span></div>
                </div>
                <!-- Pension -->
                <div class="card-single">
                    <div>
                        <h1>1,450K</h1>
                        <span>Pension</span>  
                    </div>
                    <div><span class="fal fa-coins"></span></div>
                </div>
            </div>

            <div class="trendsummary">
                <canvas id="employeepaymentsummarychart"></canvas>
            </div>
            <!-- Recent Grids -->
            <div class="recent-grid">
                <!-- Payslips -->
                <div class="recentpayslips">
                    <div class="card">
                        <div class="card-header">
                            <h3>Recent Payslips</h3>
                            <button><span class="far fa-ellipsis-v fa-2x"></button>
                        </div>
                        <div class="card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td>Year</td>
                                        <td>Month</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>2024</td>
                                        <td>Sep</td>
                                        <td><i class="fal fa-cloud-download fa-lg fa-fw"></i></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- Leaves -->
                <div class="leaves">
                    <div class="card">
                        <div class="card-header">
                            <h3>Leaves</h3>
                            <button><span class="far fa-ellipsis-v fa-2x"></span></button>
                        </div>
                        <div class="card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td>Type</td>
                                        <td>Accrued</td>
                                        <td>Utilized</td>
                                        <td>Balance</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Annual Leave</td>
                                        <td>21</td>
                                        <td>14</td>
                                        <td>7</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- Recently added deductions -->
                <div class="deductions">
                    <div class="card">
                        <div class="card-header">
                            <h3>Payroll Deductions</h3>
                            <button><span class="far fa-ellipsis-v fa-2x"></button>
                        </div>
                        <div class="card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td>Name</td>
                                        <td>Start Date</td>
                                        <td>Amount</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>KCB Bank Loan</td>
                                        <td>21-Sep-2024</td>
                                        <td>14,285</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- Recently added payments -->
                <div class="payments">
                    <div class="card">
                        <div class="card-header">
                            <h3>Payroll Payments</h3>
                            <button><span class="far fa-ellipsis-v fa-2x"></button>
                        </div>
                        <div class="card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td>Name</td>
                                        <td>Starts</td>
                                        <td>Ends</td>
                                        <td>Amount</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Leave Allowance</td>
                                        <td>01-Sep-24</td>
                                        <td>30-Sep-24</td>
                                        <td>23,200</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- Recently added payments -->
                <div class="ongoingtrainings">
                    <div class="card">
                        <div class="card-header">
                            <h3>Ongoing Trainings</h3>
                            <button><span class="far fa-ellipsis-v fa-2x"></button>
                        </div>
                        <div class="card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td>Level</td>
                                        <td>Course</td>
                                        <td>Completion Date</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Bachelors Degree</td>
                                        <td>Btech. Computer Technology</td>
                                        <td>30-Dec-24</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- Notices -->
                <div class="noticess">
                    <div class="card">
                        <div class="card-header">
                            <h3>Notices</h3>
                            <button><span class="far fa-ellipsis-v fa-2x"></button>
                        </div>
                        <div class="card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td>Type</td>
                                        <td>Date</td>
                                        <td>From</td>
                                        <th>Heading</th>
                                        <th>&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>G</td>
                                        <td>05-Sep-2024</td>
                                        <td>DVC - Academic</td>
                                        <td>Closing Dates</td>
                                        <td><i class="fal fa-cloud-download fa-lg fa-fw"></i></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                 <!-- Birthdays -->
                 <div class="birthdays">
                    <div class="card">
                        <div class="card-header">
                            <h3>Birthdays</h3>
                            <button><span class="far fa-ellipsis-v fa-2x"></button>
                        </div>
                        <div class="card-body">
                            <table width="100%">
                                <thead>
                                    <!-- <tr>
                                        <td>&nbsp</td>
                                        <td>Date</td>
                                        <td>From</td>
                                        <th>Heading</th>
                                        <th>&nbsp;</th>
                                    </tr> -->
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>06-Sep-2024</td>
                                        <td>Marcus Garvey</td>
                                        <td><img src="../images/noimage.jpg" class="birthdayphoto"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- Training Opportunities -->
                <div class="traininfopportunities">
                    <div class="card">
                        <div class="card-header">
                            <h3>Training Opportunities</h3>
                            <button><span class="far fa-ellipsis-v fa-2x"></button>
                        </div>
                        <div class="card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td>Level</td>
                                        <td>Course Name</td>
                                        <td>Starts</td>
                                        <th>Ends</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>CY</td>
                                        <td>Computer Literacy</td>
                                        <td>01-Nov-2024</td>
                                        <td>01-Nov-2024</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- Assignments -->
                <div class="assignments">
                    <div class="card">
                        <div class="card-header">
                            <h3>Assignments</h3>
                            <button><span class="far fa-ellipsis-v fa-2x"></button>
                        </div>
                        <div class="card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td>Date</td>
                                        <td>From</td>
                                        <td>Subject</td>
                                        <td>Due Date</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>10-Sep-24</td>
                                        <td>Director SCIT</td>
                                        <td>Inventory Stocktake</td>
                                        <td>Status</td>
                                        <td><i class="fal fa-cloud-download fa-lg fa-fw"></i></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </main>

    </div>
    <!-- End of Template -->
</body>

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.js" integrity="sha256-qSIshlknROr4J8GMHRlW3fGKrPki733tLq+qeMCR05Q=" crossorigin="anonymous"></script> -->
<?php require_once("../views/footer.txt")?>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="../js/dashboard.ess.js"></script> 
</html>