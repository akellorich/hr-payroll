$(document).ready(function(){
    const usernamefield=$("#inputEmail"),
        passwordfield=$('#inputPassword'),
        loginbutton=$("#loginbutton"),
        errordiv=$("#errordiv"),
        forgotpasswordbutton=$("#forgotpasswordbutton"),
        recoverpasswordiv=$("#recoverpassworddiv"),
        logindiv=$("#logindiv"),
        resetpasswordbutton=$("#recoverpasswordbutton"),
        backtologinformbutton=$("#backtologinlink"),
        recoveremailaddressfield=$("#recoverpasswordemail"),
        recoverpassworderrordiv=$("#recoverpassworderrors"),
        registerbutton=$("#register"),
        emailpattern=/^([\w\.]{2,})@([\w\.]{2,})\.([a-z]{2,})([\.a-z]{2,})?$/

    logindiv.show()
    recoverpasswordiv.hide()

    forgotpasswordbutton.on("click",()=>{
        logindiv.hide()
        recoverpasswordiv.show()
    })

    backtologinformbutton.on("click",()=>{
        logindiv.show()
        recoverpasswordiv.hide() 
    })

    resetpasswordbutton.on("click",()=>{
        const username=recoveremailaddressfield.val().trim()
        if(username!==""){
            recoverpassworderrordiv.html(showAlert("processing","Processing. Please wait ...",1))
            $.post(
                "controllers/useroperations.php",
                {
                    recoveruserpassword:true,
                    username
                },
                (data)=>{
                    data=data.trim()
                    if(data=="success"){
                        recoverpassworderrordiv.html(showAlert("success","Password reset successful. Check your email for further instructions.",1))
                    } else if(data=="not exists"){
                        recoverpassworderrordiv.html(showAlert("info","Invalid username. Please try again",1))
                    }else{
                        recoverpassworderrordiv.html(showAlert("danger",`Sorry an error occured ${data}`,1))
                    }
                }
            )
        }else{
            recoverpassworderrordiv.html(showAlert("info","Please enter your username"))
        }
    })

    loginbutton.on("click",function(){
        var username=usernamefield.val(),
            password=passwordfield.val(),
            errors=""
        if(username==""){
            errors="Please provide username"
        }else if(password==""){
            errors="Please provide password"
        }
        
        if(errors==""){
           
            $.post(
                "controllers/useroperations.php",
                {
                    loginuser:true,
                    username:username,
                    password:password,
                    // company:company
                },
                function(data){
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if (data.status=="success"){
                            window.location.href="views/dashboard.php"
                        }else if (data.status=="change password"){
                            window.location.href="views/changepassword.php"
                        }else if(data.status=="inactive"){
                            errors=" Account disabled."
                        }else if(data.status=="invalid"){
                            errors="Invalid credentials."
                        }
                    }else{
                         errors=`Sorry an error occured ${data}`
                    }

                    if(errors!=""){
                        errordiv.html(showAlert("info",errors))
                    }
                }
            )
        }else{
            errordiv.html(showAlert("info",errors))
        }
    })

    usernamefield.on("input",function(){
        errordiv.html("")
    })

    passwordfield.on("input",function(){
        errordiv.html("")
    })

    registerbutton.on("click",function(e){
        e.preventDefault()
        window.location.href="registration.php"
    })

    recoveremailaddressfield.on("keyup",function(){
        recoverpassworderrordiv.html("")
    })
})