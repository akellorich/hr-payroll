<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet"> 
    <link href="../css/all.css" rel="stylesheet" type="text/css" />
    <link href="../css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
    <link href="../css/alert.css" rel="stylesheet" id="alert-css">
    <link href="../css/custom.css" rel="stylesheet" id="custom-css">
    <link href="../css/master.css" rel="stylesheet" id="master-css">
    <!-- <link href="../css/dashboard.css" rel="stylesheet" id="master-css"> -->
	<link rel="shortcut icon" href="../images/logo.jpg" />
	<link rel="icon" href="../images/logo.jpg" />

    <title>Sacco-Plus Admin Dashboard</title>
</head>
<body>
    <input type="checkbox" name="nav-toggle" id="nav-toggle" checked>
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

        <main id="dashboard">
            <div class='container-fluid loginform col-md-4 card'>
                <div class="card-header">
                    <h5>Change Your Password</h5>
                </div>
                <div class="card-body">
                    <input type="hidden" name="id" id="id">
                    <!-- <p class='lead text-center mt-3 mb-2 font-weight-bold'></p> -->
                        
                    <div id="errors"></div>
                    <div class="form-group">
                        <label for="oldpassword">Current Password:</label>
                        <input type="password" id="oldpassword" name="oldpassword" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="newpassword">New Password:</label>
                        <input type="password" id="newpassword" name="newpassword"  class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="confirmnewpassword">Confirm New Password:</label>
                        <input type="password" id="confirmnewpassword" name="confirmnewpassword"  class="form-control">
                    </div>
                    <input type="button" id="changepassword" name="changepassword" Value="Change Password" class="btn btn-success">
                </div>
            </div>
        </main>
    </div>
    <!-- End of Template -->
</body>
<script src="../js/jquery-2.2.4.js"></script>
<script src="../js/alert.js"></script>
<script src="../js/jquery.number.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/bootbox.min.js"></script>
<script src="../js/functions.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.js" integrity="sha256-qSIshlknROr4J8GMHRlW3fGKrPki733tLq+qeMCR05Q=" crossorigin="anonymous"></script> -->
<!-- <script src="../js/dashboard.js"></script> -->
<script type="text/javascript" src="../js/changepassword.js"></script>
<!-- <script src="../js/smsmailer.js"></script> -->
</html>