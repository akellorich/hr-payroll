$(document).ready(function(){

    const oldpasswordfield=$("#oldpassword"),
        newpasswordfield=$("#newpassword"),
        confirmnewpasswordfield=$("#confirmnewpassword"),
        errordiv=$("#errors"),
        changepassword=$("#changepassword"),
        idfield=$("#id"),
        inputfield=$("input")

    let errors=''

    // Hide errors
    inputfield.on("input",function(){
        errordiv.html("")
    })

    getloggedinuser()

    // get logged in user
    function getloggedinuser(){
        $.getJSON(
            "../controllers/useroperations.php",
            {
                getloggedinuser:true
            },
            function(data){
                // console.log("data fetched")
                // console.log(data)
                idfield.val(data[0].id)
            }
        )
    }
    

    changepassword.on("click",function(){

        const newpassword=newpasswordfield.val()
        const oldpassword=oldpasswordfield.val()
        const confirmnewpassword=confirmnewpasswordfield.val()
        const userid=idfield.val()
        const changepasswordonlogon=0

        //check for blank fields
        if(oldpassword=="" || newpassword==""){
            errors="Provide Old and New passwords"
            errordiv.html(showAlert("info",errors))
            // $(errors).appendTo(errordiv)
        // check if password entries do not match 
        }else if(newpassword!=confirmnewpassword){
            errors="New password entries don't match" 
            errordiv.html(showAlert("info",errors))
            // $(errors).appendTo(errordiv)
        }else{
            errordiv.html(showAlert("processing","Processing. Please wait ..."))
            $.post(
                '../controllers/useroperations.php',
                {
                    changeuserpassword:true,
                    userid,
                    newpassword,
                    oldpassword,
                    changepasswordonlogon
                },
                function(data){
                    let result=$.trim(data.toString())
                    if (result=="success"){
                        errors="Password changed successfully" 
                        errordiv.html(showAlert("success",errors))
                        oldpasswordfield.val("")
                        newpasswordfield.val("")
                        confirmnewpasswordfield.val("")
                    }else if(result=="invalid old pasword"){
                        errors=`Invalid old password!`
                        errordiv.html(showAlert("danger",errors))
                    }else{
                        errors=`Sorry an error occured ${data}`
                        errordiv.html(showAlert("danger",errors,1))
                    }
                }
            )
        }
       

       
        













































        // redirect to the main window
    })

})