
$(document).ready(()=>{
    const titlefield=$("#title"),
        emailfield=$("#email"),
        mobilefield=$("#mobile"),
        signupbutton=$("#signup"),
        signinbutton=$("#signin"),
        usernamefield=$("#username"),
        passwordfield=$("#password"),
        notifications=$("#notifications"),
        inputfields=$("input"),
        selectfield=$("select"),
        mainform=$(".mainform"),
        changepasswordform=$(".changepassword"),
        forgotpasswordform=$("#forgotpasswordform"),
        forgotpasswordlink=$("#forgotpasswordlink"),
        resetpasswordbutton=$("#resetpassword"),
        resetpasswordsigninbutton=$("#restpasswordsignin"),
        resetpasswordusername=$("#forgotpasswordusername"),
        oldpasswordfield=$("#oldpassword"),
        newpasswordfield=$("#newpassword"),
        confirmnewpasswordfield=$("#confirmnewpassword"),
        changepasswordbutton=$("#changepassword"),
        changepasswordsigninbutton=$("#changepasswordsignin"),
        registrationfields=$("#registrationfields"),
        fullnamefield=$("#fullname"),
        useridfield=$("#userid"),
        watchguidebutton=$("#watchguide"),
        playtutorialdiv=$("#playtutorial"),
        videoplayer=$(".videoplayer"),
        backtologinbutton=$("#backtologin"),
        formbox=$(".form-box")

    let currentmenu="signin"

    inputfields.on("input",()=>{
        notifications.html("")
    })

    selectfield.on("change",()=>{
        inputfields.trigger("input")
    })

    watchguidebutton.on("click",function(){
        formbox.css('max-width','960px')
        playtutorialdiv.show()
        titlefield.html("Video Guide")
        mainform.hide()
        videoplayer.html(`<iframe width="914" height="514" src="https://www.youtube.com/embed/Mq2I5v56FS8" title="CDF Bursary Portal User Guide" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>`)
    })

    backtologinbutton.on("click",()=>{
        playtutorialdiv.hide()
        titlefield.html("System Login")
        formbox.css('max-width','450px')
        mainform.show()
    })


    titlefield.html("System Login")
    signupbutton.addClass("disabled")
    signinbutton.removeClass("disabled")

    signupbutton.on("click",()=>{
        // hide email and mobile fields and change the title
        // console.log(currentmenu)
        notifications.html("")
        if(currentmenu=="signin"){
            // emailfields.css('max-height',"60px")
            // mobilefields.css('max-height',"60px")
            titlefield.html("Sign Up")
            signupbutton.removeClass("disabled")
            signinbutton.addClass("disabled")
            currentmenu="signup"
            emailfield.focus()
            registrationfields.show()
        }else{
            // register user
            const idno=usernamefield.val().toUpperCase(),
                password=passwordfield.val(),
                email=emailfield.val().toLowerCase(),
                mobile=mobilefield.val(),
                fullname=titleCase(sanitizestring(fullnamefield.val())),
                names=fullname.split(" ")
            let errors=""
            // check for blank fields

            if(idno==""){
                errors="Please provide your id or birth certificate number"
                usernamefield.focus()
            }else if(password==""){
                errors="Please provide password"
                passwordfield.focus()
            }else if(fullname==""){
                errors="Please provide your full name"
                fullnamefield.focus()
            }else if(names.length<2){
                errors="Please enter at least 2 names separated by a space"
                fullnamefield.focus()
            }else if(!validatefielddata(email,'email')){
                errors="Please provide correct email address format"
                emailfield.focus()
            }else if(!validatefielddata(mobile,'mobile')){
                errors="Please provide correct mobile number format"
                mobilefield.focus()
            }

            if(errors==""){
                notifications.html(showAlert("processing",`Processing. Please wait ...`,1))
                $.post(
                    "controllers/applicantoperations.php",
                    {
                        saveapplicant:true,
                        idno,
                        fullname,
                        mobile,
                        email,
                        password,
                    },
                    (data)=>{
                        if(isJSON(data)){
                            data=JSON.parse(data)
                            if(data.status=="success"){
                                notifications.html(showAlert("success",`Your portal account has been activated successfully. Check your email for further instructions`))
                                // clear sign in fields and show login form
                                clearregistrationform()
                                // return to login form
                                // emailfields.css('max-height',"0")
                                // mobilefields.css('max-height',"0")
                                registrationfields.hide()
                                titlefield.html("Sign In")
                                signupbutton.addClass("disabled")
                                signinbutton.removeClass("disabled")
                                currentmenu="signin"
                            }else if(data.status=="exists"){
                                // if(data.message=="email address exists")
                                    notifications.html(showAlert("info",`ID or birth certifcate number already in use`))
                                // else if(data.message="mobile nor exists"){
                                //     notifications.html(showAlert("info",`Mobile number already exists`))
                                // }
                            }
                        }else{
                            notifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                        }
                    }
                )
            }else{
                notifications.html(showAlert("info",errors))
            }
        }
    })

    function clearregistrationform(){
        emailfield.val("")
        mobilefield.val("")
        usernamefield.val("")
        passwordfield.val("")
    }
    

    signinbutton.on("click",()=>{
        // console.log(currentmenu)
        notifications.html("")
        if(currentmenu=="signup"){
            registrationfields.hide()
            titlefield.html("Sign In")
            signinbutton.removeClass("disabled")
            signupbutton.addClass("disabled")
            currentmenu="signin"
            usernamefield.focus()
        }else{
            const username=sanitizestring(usernamefield.val()),
                password=sanitizestring(passwordfield.val())
            let errors=""
            // check blank fields
            if(username==""){
                errors="Please provide username"
                usernamefield.focus()
            }else if(password==""){
                errors="Please provide password"
                passwordfield.focus()
            }

            if(errors==""){
                notifications.html(showAlert("processing","Processing. Please wait ..."))
                $.post(
                    "controllers/useroperations.php",
                    {
                        loginuser:true,
                        username,
                        password
                    },
                    (data)=>{
                        if(isJSON(data)){
                            data=JSON.parse(data)
                            if(data.status=="success"){
                                window.location.href="views/dashboard.php"
                            }else if(data.status=="invalid"){
                                notifications.html(showAlert("info",`Invalid username or password`))
                            }else if(data.status=="inactive"){
                                notifications.html(showAlert("info",`Account inactive. Contact system administrator`))
                            }else if(data.status=="changepassword"){
                                // show change password fields
                                notifications.html(showAlert("info","Please change your password before proceeding",1))
                                titlefield.html("Password Change")
                                useridfield.val(data.userid)
                                mainform.hide()
                                changepasswordform.show()
                                oldpasswordfield.focus()
                            }
                        }else{
                            notifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                        }
                    }                
                )
            }else{
                notifications.html(showAlert("info",errors))
            }
        }
    })

    forgotpasswordlink.on("click",()=>{
        notifications.html("")
        titlefield.html("Reset Password")
        forgotpasswordform.show()
        mainform.hide()
    })

    resetpasswordsigninbutton.on("click",()=>{
        forgotpasswordform.hide()
        mainform.show()
        titlefield.html("Sign in")
    })


    resetpasswordbutton.on("click",()=>{
        const username=resetpasswordusername.val()
        let errors=""
        if(username==""){
            errors="Please provide your username"
            notifications.html(showAlert("info",errors))
            resetpasswordusername.focus()
        }else{
            notifications.html(showAlert("processing","Processing. Please wait ...",1))
            $.post(
                "controllers/useroperations.php",
                {
                    resetpassword:true,
                    username
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if(data.status=="success"){
                            notifications.html(showAlert("success",`Your password has been reset successfully. Check email for more instructions.`))
                            resetpasswordusername.val("")
                            mainform.show()
                            forgotpasswordform.hide()
                            usernamefield.focus()
                            titlefield.html("System Login")
                        }else if(data.status=="invalid"){
                            notifications.html(showAlert("info",`ID or Birth Certificate number does not exists`))
                        }
                    }else{
                        notifications.html(showAlert("danger",`Sorry an error occured ${data}`,1))
                    }
                }
            )
        }
    })

    // Change Password
    changepasswordbutton.on("click",()=>{
        const oldpassword=sanitizestring(oldpasswordfield.val()),
            newpassword=sanitizestring(newpasswordfield.val()),
            confirmnewpassword=sanitizestring(confirmnewpasswordfield.val()),
            userid=useridfield.val()

        let errors=""
        // check blank fields
        if(oldpassword==""){
            errors="Please provide current password"
            oldpasswordfield.focus()
        }else if(newpassword==""){
            errors="Please ptovide your new password"
            newpasswordfield.focus()
        }else if(newpassword!==confirmnewpassword){
            errors="New password entries do not match"
        }

        if(errors==""){
            notifications.html(showAlert("processing","Processing. Please wait ...",1))
            $.post(
                "controllers/useroperations.php",
                {
                    changepassword:true,
                    oldpassword,
                    newpassword
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if(data.status=="success"){
                            window.location.href="views/dashboard.php?message='password change successful'"
                        }else if(data.status="invalid"){
                            notifications.html(showAlert("info",`Invalid old password, please try again`))
                            oldpasswordfield.focus()
                        }
                    }else{
                        notifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                    }
                }
            )
        }else{
            notifications.html(showAlert("info",errors))
        }
    })

    changepasswordsigninbutton.on("click",()=>{
        changepasswordform.hide()
        mainform.show()
    })
})
