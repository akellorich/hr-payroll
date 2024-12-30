<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
	<meta name="mobile-web-app-capable" content="yes">
    <link href="css/all.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
    <link href="css/alert.css" rel="stylesheet" type="text/css" id="alert-css">
    <link href="css/login.css" rel="stylesheet" type="text/css" id="login-css">
    <link rel="manifest" href="manifest.json">
    <title>Login</title>
</head>
<body>


    <!--
    you can substitue the span of reauth email for a input with the email and
    include the remember me checkbox
    -->
    <div class="container" id="logindiv">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <div id="errordiv" class="errordiv"></div>
            <form class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
                <div class="input-prepend">
                    <i class="fa fa-user fa-lg fa-fw"  aria-hidden="true"></i>
                    <input type="text" id="inputEmail" class="form-control" placeholder="Username" required autofocus>
                </div>
                
                <div class="input-prepend">
                    <i class="fa fa-user fa-lg fa-fw"  aria-hidden="true"></i>
                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                </div>
                
                <!-- <select name="company" id="company" class="form-control"></select>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div> -->
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="button" id="loginbutton">Sign in</button>
            </form><!-- /form -->
            <a href="#" class="forgot-password" id="forgotpasswordbutton">
                Forgot the password?
            </a>
        </div><!-- /card-container -->
    </div>

    <div class="container" id="recoverpassworddiv">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <!-- <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p> -->
            <div id="recoverpassworderrors" class="recoverpassworderrors"></div>
            <form class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
                <div class="input-prepend">
                    <i class="fa fa-user fa-lg fa-fw"  aria-hidden="true"></i>
                    <input type="text" id="recoverpasswordemail" class="form-control" placeholder="Username" required autofocus>
                </div>
                <!-- <select name="recoverpasswordcompany" id="recoverpasswordcompany" class="form-control"></select> -->
                <button class="btn btn-lg btn-danger btn-block btn-signin mt-3" type="button" id="recoverpasswordbutton">Recover Password</button>
            </form><!-- /form -->
            <a href="#" class="forgot-password" id="backtologinlink">
                Back to Login?
            </a>
        </div><!-- /card-container -->
    </div>
</body>
<script src="js/popper.js"></script>
<script src="js/jquery-3.6.1.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/alert.js"></script>
<script src="js/functions.js"></script>
<script src="js/login.js"></script>
<!-- <script src="generate-sw.js"></script> -->
</html>
