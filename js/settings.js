$(document).ready(function(){
    const currentmenu=$("#settings")
    setactivemenu(currentmenu)
    getloggedinuser()

    const inputfield = $("input"),
        selectfield = $("select")

    const banknotifications = $("#banknotifications")
    getexistinganksastable()
    getbankbranchesastable()
    getemploymenttermsastable()
    getjobgroupsastable()
    getnotchesastable()

    const documentdetailsmodal=$("#uplodabledocumentsmodal"),
        documentdetailsnotifications=$("#documentdetailsnotifications"),
        addnewdocumentbutton=$("#addnewuploadabledocument"),
        documentappliestofield=$("#documentappliesto"),
        documentnamefield=$("#documentname"),
        directoryfield=$("#directory")

    const departmentidfield = $("#departmentid"),
        departmentnamefield = $("#departmentname"),
        departmenthodfield = $("#departmenthead"),
        departmentextensionfield = $("#departmentextension"),
        departmentnotifications = $("#departmentnotifications"),
        departmentstable = $("#departmentstable"),
        savedepartmentbutton = $("#savedepartmentbutton")

    const departmentdetails=$("#departmentdetails"),
        sectiondetails=$("#sectiondetails"),
        toggledepartmentsectionselection=$("#departmentsectionselection"),
        addnewsectionbutton=$("#addnewsection"),
        sectiondetailsmodal=$("#sectiondetailsmodal"),
        sectiondetailsnotifications=$("#sectiondetailsnotifications"),
        sectionidfield=$("#sectionid"),
        sectiondepartmentfield=$("#sectiondepartment"),
        sectioncodefield=$("#sectioncode"),
        sectionnamefield=$("#sectionname"),
        savesectionbutton=$("#savesection"),
        sectiontable=$("#sectionstable")

    const emconfigurationemailaddressfield=$("#ememailemailaddress"),
        emconfigurationsendernamefield=$("#ememailemailsendername"),
        emconfigurationpasswordfield=$("#ememailemailpassword"),
        emconfigurationsmtpserverfield=$("#ememailsmtpserver"),
        emconfigurationsmtpportfield=$("#ememailsmtpport"),
        emconfigurationsecurityprotocolfield=$("#ememailsecurityprotocol"),
        emconfigurationglobalsettingfield=$("#ememailglobalsetting"),
        emconfigurationnotifications=$("#ememailconfigurationnotifications"),
        saveememailconfigurationbutton=$("#saveememailconfiguration")

    const testemailrecipientfield=$("#ememailtestrecipient"),
        testemailsubjectfield=$("#ememailtestsubject"),
        testemailnotifications=$("#testemailnotifications"),
        sendtestemailbutton=$("#ememailsendtest"),
        testemailsendmode=$("#ememailsendingmode"),
        testemailattachment=$("#ememailattachment")

    const addnewunitbutton=$("#addnewunit"),
        unitdetailsmodal=$('#unitdetailsmodal'),
        unitdetailsnotification=$("#unitdetailsnotifications"),
        unitidfield=$("#unitid"),
        unitcodefield=$('#unitcode'),
        unitnamefield=$("#unitname"),
        saveunitbutton=$("#saveunit"),
        unitstable=$('#unitstable'),
        unitnotifications=$("#unitnotifications")

    const payrollitemgroupmodal = $("#payrollitemgroupmodal"),
        addnewpayrollitemgroupbutton = $("#addnewpayrollitemgroup"),
        payrollitemgrouptogglebutton = $("#payrollitemgrouselection"),
        payrollitemdetailsdiv = $("#payrollitemdetails"),
        payrollitemgroupdiv = $("#payrollgroupdetails"),
        payrollgroupitemdetailsnotifications = $("#payrollgroupitemdetailsnotifications"),
        payrollitemgroupidfield = $("#payrollitemgroupid"),
        payrollitemgroupitemtypefield = $("#payrollitemgrouptype"),
        payrollitemgroupnamefield = $("#payrollitemgroupname"),
        savepayrollitemgroupbutton = $("#savepayrollitemgroupname"),
        payrollgroupitemstable = $("#payrollgroupitemstable"),
        payrollgroupnotifications = $("#payrollgroupnotifications")
        
    const jobgroupadditionmethodselection = $("#jobgroupadditionmethod"),
        jobgroupsingleadditiondiv = $("#jobgroupsingleaddition"),
        jobgroupmultipleadditiondiv = $("#jobgroupmultipleaddition"),
        jobgroupprefixsuffixdiv = $("#jobroupprefixsuffix"),
        jobgroupprefixfield = $("#jobgroupprefix"),
        jobgroupsuffixfield = $("#jobgroupsuffix"),
        jobgroupnumberingstylefield = $("#jobgroupnumberingstyle"),
        jobgroupstartatfield = $("#jobgroupstartat"),
        jobgroupunitsfield = $("#jobgroupunitstoadd"),
        jobgrouppadzerosfield = $("#jobgrouppadzeros"),
        jobgrroupgeneratebutton = $("#generatejobgroups"),
        generatedjobgroupstable = $("#generatedjobgroupstable"),
        savejobgroupbutton = $("#savejobgroup"),
        jobgroupnamefield = $("#jobgroupname"),
        jobgroupidfield = $("#jobgroupid"),
        jobgroupstable = $("#jobgroupstable"),
        jobgroupnotifications = $("#jobgroupnotifications")

    const payrollitemcreditorfield = $("#payrollitemcreditor"),
        payrollitemcategoryfield = $("#payrollitemcategory"),
        payrollitemstatutoryfield = $("#payrollitemstatutory"),
        payrollitemapplyrelieffield = $("#payrollitemapplyrelief"),
        payrollitemrelieftypefield = $("#payrollitemreliefitem"),
        payrollitememployertomatchfield = $("#payrollitememployermatchescontribution"),
        payrollitemallowabledeductionfield = $("#payrollitemisallowablededuction"),
        payrollitemallowabledeductionpercentagefield = $("#payrollitemallowabledeductionpercentage"),
        payrollitemallowabledeductionvaluefield = $("#payrollitemallowabledeductionrate"),
        payrollitemallowabledeductionlowerlimitfield = $("#payrollitemallowabledeductionminamount"),
        payrollitemallowabledeductionupperlimitfield = $("#payrollitemallowabledeductionmaxamount"),
        payrollemployermatchfactorfield = $("#payrollitememployermatchfactor"),
        payrollitemlowerbracketfield = $("#payrollitembracketmin"),
        payrollitemupperbracketfield = $("#payrollitembracketmax"),
        payrollitembracketvaluefield = $("#payrollitembracketvalue"),
        payrollitemaddbracketvaluesbutton = $("#addpayrollitembracket"),
        payrollitemdetailsnotifications = $("#payrollitemdetailsnotifications"),
        bracketedvaluestable = $("#bracketedvaluestable"),
        payrollitemsavebutton = $("#savepayrollitem"),
        payrollitemidfield = $("#payrollitemid"),
        payrollitemnamefield = $("#payrollitemname"),
        payrollitemdisplayfield = $("#payrollitemdisplay"),
        payrollitemdefaultamount = $("#payrollitemdefaultamount"),
        payrollitembracketedlowerlimitfield = $("#payrollitembracketlowerlimit"),
        payrollitembracketedupperlimitfield = $("#payrollitembracketupperlimit"),
        payrollitemembracketedployermatchfactorfield = $("#payrollitememployermatchfactor"),
        payrollitemshowonpayrollfield = $("#payrolldetailsshow"),
        payrollitemtaxablefield = $("#payrollitemtaxable"),
        payrollitemstable = $("#payrollitemstable"),
        payrollitemsnotifications = $("#payrollitemsnotifications"),
        payrollitemshortnamefield = $("#payrollitemshortname"),
        payrollitemgroupfield = $("#payrollitemgroup"),
        payrollitemsystemlabelfield = $("#payrollitemsystemlabel")
        
    const payrollitembracketedfield = $("#payrollitembracketed"),
        payrollitembracketedpercentagefield = $('#payrollitempercentage'),
        payrollitembracketeditemfield = $("#payrollitembracketeditem"),
        bracketeddetails = $("#bracketeddetails")

    const leaveapprovalflowidfield = $("#leaveapprovalflowid"),
        leaveapprovalflownamefield = $("#approvalflowname"),
        leavepprovallevelfield = $("#approvalflowlevel"),
        leaveapprovalhierarchyfield = $("#approvalflowhierarchy"),
        leaveapprovallevelestalationfield = $("#approvalflownextescalation"),
        leaveapprovalcolourcodefield = $("#approvalflowcolourcode"),
        leaveapprovaladdflowhierrachybutton = $("#addflowhierachy"),
        leaveapprovalflowhierarchytable = $("#leaveapprovalflowhierarchytable"),
        leaveflowdetailsnotifications = $("#leaveflowdetailsnotifications"),
        saveleaveapprovalflowbutton = $("#saveleaveapprovalflow"),
        leaveapprovalflowstable = $("#leaveapprovalflowstable"),
        leaveapprovalnotifications = $("#leaveapprovalnotifications")

    // Leave type details
    const leavetypeidfield = $("#leavetypeid"),
        levaetypenamefield = $("#leavetypename"),
        leavetypeprobationperiodfield = $("#leavetypeprobationperiod"),
        leavetypehalfdayapplicationfield = $("#leavetypehalfdayapplication"),
        leavetypeexcludepublicholidaysfield = $("#leavetypeexcudespublicholidays"),
        leavetypeapplywithoutallocationfield = $("#leavetypeapplywithoutallocation"),
        levetyperequiresattachmentfield = $("#leavetyperequireattachment"),
        leavetypeapprovalflowfield = $("#leavetypeapprovalflow"),
        leavetypeallowancepayablefield = $("#leavetypeallowancepayable"),
        leavetypeallowanceitemid = $("#leavetypepayrollitem"),
        leavetypeallocationtable = $("#leavetypeallocationtable"),
        leavetypeaddallocationbutton = $("#addleavetypesalarypercentage"),
        leavetypedaysallocationsfield = $("#leavetypeallocation"),
        leavetypeperecentagepayablefield = $("#leavetypesalarypercentpayable"),
        saveleavetypebutton = $("#saveleavetype"),
        leavetypedetailsnotification = $("#leavetypedetailsnotifications"),
        leavetypestable = $("#leavetypestable"),
        leavetypenotifications = $("#leavetypenotifications"),
        leavetypeannualallocationfield = $("#leavetypeannualallocation"),
        leavetypecanbesplitfield = $("#leavetypecanbesplit")

    addnewdocumentbutton.on("click",()=>{
        documentdetailsmodal.modal("show")
    })

    // set up textarea to be a tinymce component
    tinymce.init({
        selector:"#ememailtestbody",
        height:380,
        plugins: 'lists link image table code',
        toolbar: 'undo redo | bold italic | alignleft aligncenter alignright | bullist numlist outdent indent | link image | code',
        menubar: 'edit insert format tools', // Only these menus will be shown
        menu: {
            file: {},  // Hide the File menu
            view: {}   // Hide the View menu
        },
        statusbar: false,  // Removes the footer (status bar)
        branding: false
    })

    function getmsemailconfiguration(){
        $.getJSON(
            "../controllers/settingsoperations.php",
            {
                getemailparameters:true,
                module:'managed services'
            }
        ).done(
            (data)=>{
                data=data[0]
                emconfigurationemailaddressfield.val(data.emailaddress)
                emconfigurationsendernamefield.val(data.sendername)
                emconfigurationpasswordfield.val(data.password)
                emconfigurationsmtpserverfield.val(data.smtpserver)
                emconfigurationsmtpportfield.val(data.smtpport)
                emconfigurationsecurityprotocolfield.val(data.usessl)
                emconfigurationglobalsettingfield.val(data.globalsetting)
            }
        ).fail(
            (errorObject,textStatus,erroeThrown)=>{
                if(errorObject.status=="404"){
                    emconfigurationnotifications.html(showAlert("info","Requested URL was not found"))
                }else{
                    emconfigurationnotifications.html(showAlert("danger",`Sorry an error occured ${textStatus} ${erroeThrown}`))
                }  
            }
        )
    }

    saveememailconfigurationbutton.on("click",()=>{
        const emailaddress=sanitisestring(emconfigurationemailaddressfield.val()),    
            sendername=sanitisestring(emconfigurationsendernamefield.val()),  
            password=sanitisestring(emconfigurationpasswordfield.val()),
            smtpserver=sanitisestring(emconfigurationsmtpserverfield.val()),
            smtpport=sanitisestring(emconfigurationsmtpportfield.val()),
            usessl=emconfigurationsecurityprotocolfield.val(),
            globalsetting=emconfigurationglobalsettingfield.val(),
            module='managed services'
        let errors=""
        if(emailaddress==""){
            errors="Please provide email address"
            emconfigurationemailaddressfield.focus()
        }else if(validatefielddata(!emailaddress,'email')){
            errors="Invalid email address provided"
            emconfigurationemailaddressfield.focus()
        }else if(sendername==""){
            errors="Please provide sender name"
            emconfigurationsendernamefield.focus()
        }else if(password==""){
            errors="Please provide email account password"
            emconfigurationpasswordfield.focus()
        }else if(smtpserver==""){
            errors="Please provide SMTP server address"
            emconfigurationsmtpserverfield.focus()
        }else if(smtpport==""){
            errors="Please provide SMTP port"
            emconfigurationsmtpportfield.focus()
        }else if(usessl==""){
            errors="Please select security protocol"
            emconfigurationsecurityprotocolfield.focus()
        }

        if(errors==""){
            emconfigurationnotifications.html(showAlert("processing","Porcessing. Please wait ...",1))
            $.post(
                "../controllers/settingsoperations.php",
                {
                    saveemailparameters:true,
                    module,
                    emailaddress,
                    sendername,
                    password,
                    smtpserver,
                    smtpport,
                    usessl,
                    globalsetting
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if(data.status=="success"){
                            emconfigurationnotifications.html(showAlert("success",`Managed Services email configuration saved successfully`))
                        }
                    }else{
                        emconfigurationnotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                    }
                }
            )
        }else{
            emconfigurationnotifications.html(showAlert("info",errors))
        }
    })

    // Test email credentials

    sendtestemailbutton.on("click",()=>{
        const recipient=sanitizestring(testemailrecipientfield.val()),
            subject=sanitizestring(testemailsubjectfield.val()),
            body=sanitizestring(tinymce.get("ememailtestbody").getContent()),
            sendmode=testemailsendmode.val(),
            attachment=$("#ememailattachment")[0].files

        let errors=""

        if(recipient==""){
            errors="Please provide recipient's email address"
            testemailrecipientfield.focus()
        }else if(!validatefielddata(recipient,'email')){
            errors="Invalid email address format"
            testemailrecipientfield.focus()
        }else if(subject==""){
            errors="Please provid test email subject"
            testemailsubjectfield.focus()
        }else if(body==""){
            errors="Please provide test email content"
            tinymce.get('ememailtestbody').focus();
        }

        if(errors==""){
            if(sendmode=="direct"){
                testemailnotifications.html(showAlert("processing","Processing. Please wait ...",1))
                $.post(
                    "../controllers/settingsoperations.php",
                    {
                        sendemail:true,
                        recipient,
                        subject,
                        message:body
                    },
                    (data)=>{
                        if(isJSON(data)){
                            data=JSON.parse(data)
                            if(data.status=="success"){
                                testemailnotifications.html(showAlert("success",`Test email was sent out successfully`))
                                // clear fields
                                cleartestemailfields()
                            }
                        }else{
                            testemailnotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                        }
                    }
                )  
            }else{

                // queue email for sending
                let fd = new FormData()

                if(attachment){
                    fd.append("attachment",attachment)
                }

                // append all other fields
                fd.append("queueemail",true)
                fd.append("module","managed services")
                fd.append("recipient",recipient)
                fd.append("subject",subject)
                fd.append("message",body)

                testemailnotifications.html(showAlert("processing", "Processing. Queueing email please wait ...", 1))
                $.ajax({
                    url: "../controllers/emailoperations.php",
                    type: 'post',
                    data: fd,
                    contentType: false,
                    processData: false,
                    success: function (data) {
                        if (isJSON(data)) {
                            data = JSON.parse(data)
                            if (data.status == "success") {
                                notifications = "Test email has been queued successfully"
                                testemailnotifications.html(showAlert("success", notifications))
                                // clearfields
                                cleartestemailfields()
                            } 
                        } else {
                            notifications = `Sorry an error occured ${data}`
                            testemailnotifications.html(showAlert("danger", notifications, 1))
                        }
                    }
                })
            }
        }else{
            testemailnotifications.html(showAlert("info",errors))
        }
    })

    function cleartestemailfields(){
        testemailrecipientfield.val("")
        testemailsubjectfield.val("")
        testemailattachment.val("")
        tinymce.get("ememailtestbody").setContent("")
    }

    // get email configurations saved 
    getemailconfiguration()

    function getemailconfiguration(){
        $.getJSON(
            "../controllers/settingsoperations.php",
            {
                getemailparameters:true,
                module:'managed services'
            }
        ).done(
            (data)=>{
                data=data[0]
                emconfigurationemailaddressfield.val(data.emailaddress)
                emconfigurationsendernamefield.val(data.sendername)
                emconfigurationpasswordfield.val(data.password)
                emconfigurationsmtpserverfield.val(data.smtpserver)
                emconfigurationsmtpportfield.val(data.smtpport)
                emconfigurationsecurityprotocolfield.val(data.usessl)
                emconfigurationglobalsettingfield.val(data.globalsetting)
            }
        ).fail(
            (errorObject,textStatus,erroeThrown)=>{
                if(errorObject.status=="404"){
                    emconfigurationnotifications.html(showAlert("info","Requested URL was not found"))
                }else{
                    emconfigurationnotifications.html(showAlert("danger",`Sorry an error occured ${textStatus} ${erroeThrown}`))
                }  
            }
        )
    }


    
    // hide any errors or notificatioon when input field gets typed into
    inputfield.on("input", function() {
        $(this).removeClass("is-invalid text-danger")
        bankdetailsnotifications.html("")
        branchnotificationdetails.html("")
        employmenttermdetailsnotifications.html("")
        jobgroupdetailsnotifications.html("")
        notchnotifications.html("")
        notchdetailsnotifications.html("")
        positiondetailsnotifications.html("")
        positionnotifications.html("")
        creditordetailsnotifications.html("")
        creditornotifications.html("")
        payrollitemdetailsnotifications.html("")
        payrollitemdetailsnotifications.html("")
        payrollitemsnotifications.html("")
        salarystructuredetailsnotifications.html("")
        salarystructuredetailsnotifications.html("")
        salarystructurenotifications.html("")
        jobcategorynotfications.html("")
        jobcategorydetailsnotifications.html("")
        departmentdetailsnotifications.html("")
        departmentnotifications.html("")
        payrollgroupitemdetailsnotifications.html("")
        unitdetailsnotification.html("")
        unitnotifications.html("")
        sectiondetailsnotifications.html("")
        whatsappnotifications.html("") 
    })

    selectfield.on("change", () => {
        inputfield.trigger("input")
    })

    getunitsastable()

    addnewunitbutton.on("click",()=>{
        unitdetailsmodal.modal("show")
        unitdetailsnotification.html("")
    })


    // save unit
    saveunitbutton.on("click",()=>{
        const unitid=unitidfield.val(),
            unitcode=sanitizestring(unitcodefield .val()),
            unitname=sanitizestring(unitnamefield.val())
        let errors=""
        // check for blank fields
        if(unitcode==""){
            errors="Please provide unit code"
            unitcodefield.focus()
        }else if(unitname==""){
            errors="Please provide unit name"
            unitnamefield.focus()
        }

        if(errors==""){
            $.post(
                "../controllers/settingsoperations.php",
                {
                    saveunit:true,
                    unitid,
                    unitcode,
                    unitname
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if(data.status=="success"){
                            unitdetailsnotification.html(showAlert("success",`Unit saved successfully`))
                            // clear fields
                            clearunitform()
                            // refresh list
                            getunitsastable()
                        }else if(data.status=="exists"){
                            if(data.category=="unitname"){
                                unitdetailsnotification.html(showAlert("info",`Sorry, unit name already exists`))
                                unitnamefield.focus()
                            }else if(data.category){
                                unitdetailsnotification.html(showAlert("info",`Sorry, unit code already in use`))
                                unitcodefield.focus()
                            }
                        }
                    }else{
                        unitdetailsnotification.html(showAlert("danger",`Sorry an error occured ${data}`))
                    }
                }
            )
        }else{
            unitdetailsnotification.html(showAlert("info",errors))
        }
    })

    function clearunitform(){
        unitidfield.val("0")
        unitcodefield.val("")
        unitnamefield.val("")
    }

    function getunitsastable(){
        const dfd =$.Deferred()
        unitnotifications.html(showAlert("processing","Processing.Please wait ...",1))
        $.getJSON(
            "../controllers/settingsoperations.php",
            {
                getunits:true
            },
            (data)=>{
                let results=""
                data.forEach((unit,i)=>{
                    results+=`<tr data-id=${unit.unitid}>`
                    results+=`<td>${$.number(i+1)}</td>`
                    results+=`<td>${unit.unitcode}</td>`
                    results+=`<td>${unit.unitname}</td>`
                    results+=`<td>${$.number(unit.eployees)}</td>`
                    results+=`<td>${formatDate(unit.dateadded)}</td>`
                    results+=`<td>${unit.addedbyname}</td>`
                    results+=`<td><a href='#' class='edit' ><i class='fal fa-edit fa-fw fa-lg'><i></a></td>`
                    results+=`<td><a href='#' class='delete' ><i class='fal fa-trash fa-fw fa-lg'><i></a></td></tr>`
                })
                makedatatable(unitstable,results,15)
                // unitstable.find("tbody").html(results)
                unitnotifications.html("")
                dfd.resolve()
            }
        )
        return dfd.promise()
    }

    unitstable.on("click",".edit",function(){
        const unitid=$(this).closest("tr").data("id")
        $.getJSON(
            "../controllers/settingsoperations.php",
            {
                getunitdetails:true,
                unitid
            },
            (data)=>{
                data=data[0]
                unitidfield.val(data.unitid)
                unitcodefield.val(data.unitcode)
                unitnamefield.val(data.unitname)
                unitdetailsnotification.html("")
                unitdetailsmodal.modal("show")
            }
        )
    })

    unitstable.on("click",".delete",function(){
        const row=$(this).closest("tr"),
            unitid=row.data("id"),
            unitname=row.find("td").eq(2).text()
        // confirm with bootbox 
        bootbox.dialog({
            title: "Delete Unit",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Confirm permanent deletion of <strong>${unitname}</strong>.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        $.post(
                            "../controllers/settingsoperations.php",
                            {
                                deleteunit:true,
                                unitid
                            },
                            (data)=>{
                                if(isJSON(data)){
                                    data=JSON.parse(data)
                                    if(data.status=="success"){
                                        // refreshlist
                                        getunitsastable().done(()=>{
                                            unitnotifications.html(showAlert("success",`The unit <strong.${unitname}</strong> was deleted successfully`))
                                            $('.bootbox').modal('hide');
                                        })
                                        
                                    }
                                }else{
                                    unitnotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })



    toggledepartmentsectionselection.on("click",function(){
        const status=$(this).prop("checked")
        if(status){
            departmentdetails.show()
            sectiondetails.hide()
        }else{
            departmentdetails.hide()
            sectiondetails.show()
        }
    })

    getdepartments(sectiondepartmentfield,'choose')
    getsectionsastable()

    addnewsectionbutton.on("click",()=>{
        sectiondetailsmodal.modal("show")
        sectiondetailsnotifications.val("")
    })

    savesectionbutton.on("click",()=>{
        const sectionid=sectionidfield.val(),
            departmentid=sectiondepartmentfield.val(),
            sectioncode=sanitizestring(sectioncodefield.val()),
            sectionname=sanitizestring(sectionnamefield.val())
        let errors=""
        // check for blank fields
        if(departmentid==""){
            errors="Please select section department first"
            sectiondepartmentfield.focus()
        }else if(sectioncode==""){
            errors="Please provide section code first"
            sectioncodefield.focus()
        }else if(sectionname==""){
            errors="Please provide section namefirst"
            sectionnamefield.focus()
        }

        if(errors==""){
            $.post(
                "../controllers/settingsoperations.php",
                {
                    savesection:true,
                    sectionid,
                    departmentid,
                    sectioncode,
                    sectionname
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if(data.status=="success"){
                            // clear form
                            clearsectionform()
                            // refresh list
                            getsectionsastable().done(()=>{
                                sectiondetailsnotifications.html(showAlert("success",`Section saved successfully`))
                            })
                        }else if(data.status=="exists"){
                            if(data.category=="sectioncode"){
                                sectiondetailsnotifications.html(showAlert("info",`Section code aready in use`))
                                sectioncodefield.focus()
                            }else if(data.category=="sectionname"){
                                sectiondetailsnotifications.html(showAlert("info",`Section name aready in use`))
                                sectionnamefield.focus()
                            }
                        }
                    }else{
                        sectiondetailsnotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                    }
                }
            )
        }else{
            sectiondetailsnotifications.html(showAlert("info",errors))
        }
    })

    function clearsectionform(){
        sectionidfield.val("0")
        sectiondepartmentfield.val("")
        sectioncodefield.val("")
        sectionnamefield.val("")
    }

    function getsectionsastable(){
        departmentnotifications.html(showAlert("processing","Processing.Please wait ...",1))
        const dfd=$.Deferred()
        $.getJSON(
            "../controllers/settingsoperations.php",
            {
                getsections:true
            },
            (data)=>{
                let results=""
                data.forEach((section,i)=>{
                    results+=`<tr data-id='${section.sectionid}'>`
                    results+=`<td>${$.number(i+1)}</td>`
                    results+=`<td>${section.departmentname}</td>`
                    results+=`<td>${section.sectioncode}</td>`
                    results+=`<td>${section.sectionname}</td>`
                    results+=`<td>${$.number(section.employees)}</td>`
                    results+=`<td>${formatDate(section.dateadded)}</td>`
                    results+=`<td>${section.addedbyname}</td>`
                    results+=`<td><a href='#' class='edit' ><i class='fal fa-edit fa-fw fa-lg'><i></a></td>`
                    results+=`<td><a href='#' class='delete' ><i class='fal fa-trash fa-fw fa-lg'><i></a></td></tr>`
                })
                makedatatable(sectiontable,results,15)
                // sectiontable.find("tbody").html(results)
                departmentnotifications.html("")
                dfd.resolve()
            }  
        )
        return dfd.promise()
    }

    // edit section
    sectiontable.on("click",".edit",function(){
        const sectionid=$(this).closest("tr").data("id")
        // get section details
        $.getJSON(
            "../controllers/settingsoperations.php",
            {
                getsectiondetails:true,
                sectionid
            },
            (data)=>{
                data=data[0]
                sectionidfield.val(data.sectionid)
                sectiondepartmentfield.val(data.departmentid),
                sectioncodefield.val(data.sectioncode)
                sectionnamefield.val(data.sectionname)
                sectiondetailsnotifications.html("")
                sectiondetailsmodal.modal("show")
            }
        )
    })

    // save payroll item groups


    payrollitemgrouptogglebutton.on("click", () => {
        if (payrollitemgrouptogglebutton.prop("checked")) {
            payrollitemdetailsdiv.show()
            payrollitemgroupdiv.hide()
        } else {
            payrollitemdetailsdiv.hide()
            payrollitemgroupdiv.show()
        }
    })

    addnewpayrollitemgroupbutton.on("click", () => {
        payrollitemgroupidfield.val("0")
        payrollitemgroupitemtypefield.val("")
        payrollitemgroupnamefield.val("")
        payrollgroupitemdetailsnotifications.html("")
        payrollitemgroupmodal.modal("show")
    })

    savepayrollitemgroupbutton.on("click", () => {
        const groupid = payrollitemgroupidfield.val(),
            itemtype = payrollitemgroupitemtypefield.val(),
            groupname = sanitizestring(payrollitemgroupnamefield.val())

        let errors = ""

        // check for blank fields
        if (itemtype == "") {
            errors = "Please select item type to be held be the group"
            payrollitemgroupitemtypefield.focus()
        } else if (groupname == "") {
            errors = "Please provide group name"
            payrollitemgroupnamefield.focus()
        }

        if (errors == "") {
            payrollgroupitemdetailsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.post(
                "../controllers/payrolloperations.php",
                {
                    savepayrollitemgroup: true,
                    groupid,
                    itemtype,
                    groupname
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            payrollgroupitemdetailsnotifications.html(showAlert("success", `The payroll items group was saved successfully`))
                            // clear form
                            clearpayrollitemsgroupform()
                            payrollitemgroupitemtypefield.focus()
                            // refresh list
                            getexistingpayrollitemgroupsastable()
                        } else if (data.status == "exists") {
                            payrollgroupitemdetailsnotifications.html(showAlert("info", `Payroll item group <strong>${groupname}</strong> already exists in the system!`))
                        }
                    } else {
                        payrollgroupitemdetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            payrollgroupitemdetailsnotifications.html(showAlert("info", errors))
        }
    })

    function clearpayrollitemsgroupform() {
        payrollitemgroupidfield.val("0")
        payrollitemgroupitemtypefield.val("")
        payrollitemgroupnamefield.val("")
    }

    function getexistingpayrollitemgroupsastable() {
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getpayrollitemgroups: true
            },
            (data) => {
                results = ""
                data.forEach((item, i) => {
                    results += `<tr data-id='${item.groupid}'>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${titleCase(item.itemtype)}</td>`
                    results += `<td>${item.groupname}</td>`
                    results += `<td>${item.items}</td>`
                    results += `<td>${formatDate(item.dateadded)}</td>`
                    results += `<td>${item.addedbyname}</td>`
                    // add edit and delete buttons
                    results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results += `<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                makedatatable(payrollgroupitemstable,results,15)
            }
        )
    }

    // edit paytroll items group
    payrollgroupitemstable.on("click", ".edit", function () {
        const groupid = $(this).closest("tr").attr("data-id")
        // get group details for editing
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getpayrollgroupitem: true,
                groupid
            },
            (data) => {
                data = data[0]
                payrollitemgroupidfield.val(data.groupid)
                payrollitemgroupitemtypefield.val(data.itemtype)
                payrollitemgroupnamefield.val(data.groupname)
                payrollgroupitemdetailsnotifications.html("")
                // show modal for payroll item group details
                payrollitemgroupmodal.modal("show")
            }
        )
    })

    // delete payroll item group
    payrollgroupitemstable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            groupid = parent.attr("data-id"),
            groupname = parent.find("td").eq(2).text()

        // confirm deletion with bootbox
        bootbox.dialog({
            title: "Delete Payroll Items Group",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete payroll items group <span class='font-weight-bold'>${groupname}</span> from the system.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        payrollgroupnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
                        $.post(
                            "../controllers/payrolloperations.php",
                            {
                                deletepayrollitemgroup: true,
                                groupid
                            },
                            (data) => {
                                data = data.trim()
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        payrollgroupnotifications.html(showAlert("success", `Payroll item group name <strong>${groupname}</strong> deleted successfully.`))
                                        getexistingpayrollitemgroupsastable()
                                    }
                                }
                                else {
                                    payrollgroupnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    // get existing payrollitems groups
    getexistingpayrollitemgroupsastable()

    // populate payroll items group field
    getpayrollitemgroups(payrollitemgroupfield, 'choose')


    jobgroupadditionmethodselection.on("change", () => {
        const type = jobgroupadditionmethodselection.val()
        // console.log(type)
        if (type == "single") {
            jobgroupsingleadditiondiv.show()
            jobgroupmultipleadditiondiv.hide()
            jobgroupprefixsuffixdiv.hide()
        } else {
            jobgroupsingleadditiondiv.hide()
            jobgroupmultipleadditiondiv.show()
            jobgroupprefixsuffixdiv.show()
        }
    })

    jobgrroupgeneratebutton.on("click", () => {
        // console.log("clicked generate")
        const prefix = jobgroupprefixfield.val(),
            suffix = jobgroupsuffixfield.val(),
            style = jobgroupnumberingstylefield.val(),
            startat = jobgroupstartatfield.val(),
            units = jobgroupunitsfield.val(),
            padzeros = jobgrouppadzerosfield.val()

        let errors = ""

        // check for blank fields
        if (style == "") {
            errors = "Please select numbering style"
            jobgroupnumberingstylefield.focus()
        } else if (startat == "") {
            errors = "Please provide starting position"
            jobgroupstartatfield.focus()
        } else if (Number(units) <= 0) {
            errors = "Please provide correct number of units to"
            jobgroupunitsfield.focus()
        }

        if (errors == "") {
            const grades = generatenumbers(style, startat, units, padzeros, prefix, suffix)

            let results = "",
                i = 0,
                currentrow = generatedjobgroupstable.find("tbody tr").length

            while (i < grades.length) {
                results += `<tr data-id='0'><td>${Number(i + 1)}</td>`
                results += `<td class="editable-cell" contenteditable="true">${grades[i]}</td>`
                results += `<td class="text-right"><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></tr>`
                currentrow++
                i++
            }

            $(results).appendTo(generatedjobgroupstable.find("tbody"))

        } else {
            jobgroupdetailsnotifications.html(showAlert("info", errors))
        }
    })

    // remove jobgroup from the table
    generatedjobgroupstable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            jogrouptitle = parent.find("td").eq(1).text()
        // confirm deletion with bootbox
        bootbox.dialog({
            title: "Remove job group",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i>Confirm removal of job group <strong> ${jogrouptitle}</strong> from the list`,
            backdrop: true,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Remove",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        parent.remove()
                        // recalculate columns
                        renumbertablerows(generatedjobgroupstable)
                    }
                }
            }
        })
    })


    // save job group
    savejobgroupbutton.on("click", () => {
        const jobgroupid = jobgroupidfield.val(),
            jobgroupname = sanitizestring(jobgroupnamefield.val()),
            type = jobgroupadditionmethodselection.val()
        let errors = "", jobgroups = []

        if (type == "single") {
            if (jobgroupname == "") {
                errors = "Please provide job group name"
                jobgroupnamefield.focus()
            } else {
                jobgroups.push({ "jobgroupid": jobgroupid, "jobgroupname": jobgroupname })
            }
        } else {
            const joblist = generatedjobgroupstable.find("tbody tr")
            if (joblist.length == 0) {
                errors = "Please  add at least a job group in the list first"
            } else {
                joblist.each(function () {
                    const row = $(this)
                    jobgroups.push({ "jobgroupid": 0, "jobgroupname": sanitizestring(row.find("td").eq(1).text()) })
                })
            }
        }

        if (errors == "") {
            jobgroupdetailsnotifications.html(showAlert("processing", `Processing. Please wait ...`))
            jobgroups = JSON.stringify(jobgroups)
            $.post(
                "../controllers/payrolloperations.php",
                {
                    savejobgroup: true,
                    jobgroups
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.length == 1) {
                            data = data[0]
                            if (data.status == "success") {
                                jobgroupdetailsnotifications.html(showAlert("success", `The job group <strong> ${jobgroupname}</strong> has been saved successfully`))
                                jobgroupnamefield.val("")
                                jobgroupidfield.val("0")
                                // refresh job groups list
                                getjobgroupsastable()
                            } else if (data.status == "exists") {
                                jobgroupdetailsnotifications.html(showAlert("info", `The job group <strong> ${jobgroupname}</strong> already exists`))
                            }
                        } else {
                            const overallstatus = true
                            data.forEach((response) => {
                                const status = response.status
                                generatedjobgroupstable.find("tbody tr").each(function () {
                                    const row = $(this)
                                    if (row.find("td").eq(1).text() == response.jobgroupname) {
                                        if (status == "success") {
                                            row.addClass("text-success")
                                        } else if (status == "exists") {
                                            row.addClass("text-info")
                                            overallstatus = false
                                        }
                                    }
                                })
                            })

                            if (overallstatus) {
                                jobgroupdetailsnotifications.html(showAlert("success", `Job groups added successfully`))
                            } else {
                                jobgroupdetailsnotifications.html(showAlert("success", `Job groups added successfully, however some entries had errors, check colour codes`))
                            }
                            // resfresh list 
                            getjobgroupsastable()
                        }
                    } else {
                        jobgroupdetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            jobgroupdetailsnotifications.html(showAlert("info", errors))
        }
    })

    function getjobgroupsastable() {
        $.getJSON(
            "../controllers/payrolloperations.php", {
            getjobgroups: true
        },
            (data) => {
                let results = ""
                data.forEach((jobgroup, i) => {
                    results += `<tr data-id=${jobgroup.jobgroupid}>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${jobgroup.jobgroupname}</td>`
                    results += `<td>${formatDate(jobgroup.dateadded)}</td>`
                    results += `<td>${jobgroup.addedbyname}</td>`
                    results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results += `<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })

                makedatatable(jobgroupstable,results,15)
            }
        )
    }

    // edit job group
    jobgroupstable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            jobgroupid = parent.attr("data-id")

        jobgroupadditionmethodselection.val("single")
        jobgroupadditionmethodselection.trigger("change")

        // get jobgroup details
        $.getJSON(
            "../controllers/payrolloperations.php", {
            getjobgroupdetails: true,
            jobgroupid
        },
            (data) => {
                data = data[0];
                jobgroupidfield.val(data.jobgroupid)
                jobgroupnamefield.val(data.jobgroupname)
                // show modal
                jobgroupdetailsnotifications.html("")
                jobgroupdetailsmodal.modal("show")
            }
        )
    })

    // delete job group
    jobgroupstable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            jobgroupid = parent.attr("data-id"),
            jobgroupname = parent.find("td").eq(1).text()
        // confirm bootbox
        bootbox.dialog({
            title: "Delete Job Group",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i>Are you sure you want to delete job group <strong> ${jobgroupname}</strong> from the system`,
            backdrop: true,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Remove",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        $.post(
                            "../controllers/payrolloperations.php",
                            {
                                deletejobgroup: true,
                                jobgroupid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        jobgroupnotifications.html(showAlert("success", `The job group <strong>${jobgroupname}</strong> has been deleted successfully`))
                                        getjobgroupsastable()
                                    }
                                } else {
                                    jobgroupnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    // CRUD For Notches
    const notchadditionmethodselection = $("#notchadditionmethod"),
        notchsingleadditiondiv = $("#notchsingleaddition"),
        notchmultipleadditiondiv = $("#notchmultipleaddition"),
        notchprefixsuffixdiv = $("#notchprefixsuffix"),
        notchprefixfield = $("#notchprefix"),
        notchsuffixfield = $("#notchsuffix"),
        notchnumberingstylefield = $("#notchnumberingstyle"),
        notchstartatfield = $("#notchstartat"),
        notchunitsfield = $("#notchunitstoadd"),
        notchpadzerosfield = $("#notchpadzeros"),
        notchgeneratebutton = $("#generatenotches"),
        generatednotchestable = $("#generatednotchestable"),
        savenotchbutton = $("#savenotch"),
        notchnamefield = $("#notchname"),
        notchidfield = $("#notchid"),
        notchestable = $("#notchestable"),
        notchnotifications = $("#notchnotifications")
    // notchdetailsnotifications=$("#notchdetailsnotifications")

    notchadditionmethodselection.on("change", () => {
        const type = notchadditionmethodselection.val()
        // console.log(type)
        if (type == "single") {
            notchsingleadditiondiv.show()
            notchmultipleadditiondiv.hide()
            notchprefixsuffixdiv.hide()
        } else {
            notchsingleadditiondiv.hide()
            notchmultipleadditiondiv.show()
            notchprefixsuffixdiv.show()
        }
    })

    notchgeneratebutton.on("click", () => {
        // console.log("clicked generate")
        const prefix = notchprefixfield.val(),
            suffix = notchsuffixfield.val(),
            style = notchnumberingstylefield.val(),
            startat = notchstartatfield.val(),
            units = notchunitsfield.val(),
            padzeros = notchpadzerosfield.val()

        let errors = ""

        // check for blank fields
        if (style == "") {
            errors = "Please select numbering style"
            notchnumberingstylefield.focus()
        } else if (startat == "") {
            errors = "Please provide starting position"
            notchstartatfield.focus()
        } else if (Number(units) <= 0) {
            errors = "Please provide correct number of units to"
            notchunitsfield.focus()
        }

        if (errors == "") {
            const grades = generatenumbers(style, startat, units, padzeros, prefix, suffix)

            let results = "",
                i = 0,
                currentrow = generatednotchestable.find("tbody tr").length

            while (i < grades.length) {
                results += `<tr data-id='0'><td>${Number(i + 1)}</td>`
                results += `<td class="editable-cell" contenteditable="true">${grades[i]}</td>`
                results += `<td class="text-right"><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></tr>`
                currentrow++
                i++
            }

            $(results).appendTo(generatednotchestable.find("tbody"))

        } else {
            notchdetailsnotifications.html(showAlert("info", errors))
        }
    })

    // remove notch from the table
    generatednotchestable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            notchname = parent.find("td").eq(1).text()
        // confirm deletion with bootbox
        bootbox.dialog({
            title: "Remove job group",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i>Confirm removal of notch name <strong> ${notchname}</strong> from the list`,
            backdrop: true,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Remove",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        parent.remove()
                        // recalculate columns
                        renumbertablerows(generatednotchestable)
                    }
                }
            }
        })
    })

    // Save Notch
    savenotchbutton.on("click", () => {
        const notchid = notchidfield.val(),
            notchname = sanitizestring(notchnamefield.val()),
            type = notchadditionmethodselection.val()
        let errors = "", notches = []

        if (type == "single") {
            if (notchname == "") {
                errors = "Please provide notch name"
                notchnamefield.focus()
            } else {
                notches.push({ "notchid": notchid, "notchname": notchname })
            }
        } else {
            const joblist = generatednotchestable.find("tbody tr")
            if (joblist.length == 0) {
                errors = "Please  add at least a notch in the list first"
            } else {
                joblist.each(function () {
                    const row = $(this)
                    notches.push({ "notchid": 0, "notchname": sanitizestring(row.find("td").eq(1).text()) })
                })
            }
        }

        if (errors == "") {
            notchdetailsnotifications.html(showAlert("processing", `Processing. Please wait ...`))
            notches = JSON.stringify(notches)
            $.post(
                "../controllers/payrolloperations.php",
                {
                    savenotch: true,
                    notches
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.length == 1) {
                            data = data[0]
                            if (data.status == "success") {
                                notchdetailsnotifications.html(showAlert("success", `The notch <strong> ${notchname}</strong> has been saved successfully`))
                                notchnamefield.val("")
                                notchidfield.val("0")
                                // refresh notchs list
                                getnotchesastable()
                            } else if (data.status == "exists") {
                                notchdetailsnotifications.html(showAlert("info", `The notch <strong> ${notchname}</strong> already exists`))
                            }
                        } else {
                            const overallstatus = true
                            data.forEach((response) => {
                                const status = response.status
                                generatednotchestable.find("tbody tr").each(function () {
                                    const row = $(this)
                                    if (row.find("td").eq(1).text() == response.notchname) {
                                        if (status == "success") {
                                            row.addClass("text-success")
                                        } else if (status == "exists") {
                                            row.addClass("text-info")
                                            overallstatus = false
                                        }
                                    }
                                })
                            })

                            if (overallstatus) {
                                notchdetailsnotifications.html(showAlert("success", `Job notches added successfully`))
                            } else {
                                notchdetailsnotifications.html(showAlert("success", `Job notches added successfully, however some entries had errors, check colour codes`))
                            }
                            // resfresh list 
                            getnotchesastable()
                        }
                    } else {
                        notchdetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            notchdetailsnotifications.html(showAlert("info", errors))
        }
    })

    function getnotchesastable() {
        $.getJSON(
            "../controllers/payrolloperations.php", {
            getnotches: true
        },
            (data) => {
                let results = ""
                data.forEach((notch, i) => {
                    results += `<tr data-id=${notch.notchid}>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${notch.notchname}</td>`
                    results += `<td>${formatDate(notch.dateadded)}</td>`
                    results += `<td>${notch.addedbyname}</td>`
                    results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results += `<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })

                makedatatable(notchestable,results,15)
            }
        )
    }

    // edit notch
    notchestable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            notchid = parent.attr("data-id")

        notchadditionmethodselection.val("single")
        notchadditionmethodselection.trigger("change")

        // get notch details
        $.getJSON(
            "../controllers/payrolloperations.php", {
            getnotchdetails: true,
            notchid
        },
            (data) => {
                data = data[0];
                notchidfield.val(data.notchid)
                notchnamefield.val(data.notchname)
                // show modal
                notchdetailsnotifications.html("")
                notchdetailsmodal.modal("show")
            }
        )
    })

    // delete notch
    notchestable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            notchid = parent.attr("data-id"),
            notchname = parent.find("td").eq(1).text()
        // confirm bootbox
        bootbox.dialog({
            title: "Delete Job Group",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i>Are you sure you want to delete notch <strong> ${notchname}</strong> from the system`,
            backdrop: true,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Remove",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        $.post(
                            "../controllers/payrolloperations.php",
                            {
                                deletenotch: true,
                                notchid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        notchnotifications.html(showAlert("success", `The notch <strong>${notchname}</strong> has been deleted successfully`))
                                        getnotchesastable()
                                    }
                                } else {
                                    notchnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    const positionstartjobgroupfield = $("#startsatjobgroup"),
        positionstartnotchfield = $("#startsatnotch"),
        positionendjobgroupfield = $("#endsatjobgroup"),
        positionendnotchfield = $("#endsatnotch"),
        positionidfield = $("#positionid"),
        positionnamefield = $("#positionname"),
        positionestablishmentfield = $("#establishment"),
        positionreportstofield = $("#reportsto"),
        positionsavebutton = $("#saveposition"),
        positionstable = $("#positionstable"),
        positionnotifications = $("#positionnotifications")

    getjobpositions(positionreportstofield, 'choose', 1)
    getjobgroups(positionstartjobgroupfield, 'choose')
    getjobgroups(positionendjobgroupfield, 'choose')
    getjobnotches(positionstartnotchfield, 'choose')
    getjobnotches(positionendnotchfield, 'choose')

    // save position 
    positionsavebutton.on("click", () => {
        const positionid = positionidfield.val(),
            positionname = sanitizestring(positionnamefield.val()),
            establishment = sanitizestring(positionestablishmentfield.val()),
            reportsto = positionreportstofield.val(),
            startjobgroupid = positionstartjobgroupfield.val(),
            startnotchid = positionstartnotchfield.val(),
            endjobgroupid = positionendjobgroupfield.val(),
            endnotchid = positionendnotchfield.val()

        let errors = ""
        // check for blank fields
        if (positionname == "") {
            errors = "Please provide position name"
            positionnamefield.focus()
        } else if (Number(establishment) <= 0) {
            errors = "Please provide correct establishment number"
            positionestablishmentfield.focus()
        } else if (startjobgroupid == "") {
            errors = "Please select starting job group"
            positionstartjobgroupfield.focus()
        } else if (startnotchid == "") {
            errors = "Please select starting notch"
            positionstartnotchfield.focus()
        } else if (endjobgroupid == "") {
            errors = "Please select ending job group"
            positionendjobgroupfield.focus()
        } else if (endnotchid == "") {
            errors = "Please select ending notch"
        }

        if (errors == "") {
            positiondetailsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.post(
                "../controllers/payrolloperations.php",
                {
                    savejobposition: true,
                    positionid,
                    positionname,
                    establishment,
                    reportsto,
                    startjobgroupid,
                    endjobgroupid,
                    startnotchid,
                    endnotchid
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            positiondetailsnotifications.html(showAlert("success", `the job position <strong>${positionname}</strong> has been saved successfully`))
                            // clear form 
                            clearpositionsform()
                            positionnamefield.focus()
                            // refresh list
                            getjobpositionsastable()
                            // refresh reports to list
                            getjobpositions(positionreportstofield, 'choose', 1)
                        } else if (data.status == "exists") {
                            positiondetailsnotifications.html(showAlert("info", `Job position <strong>${positionname}</strong> already exists in the system`))
                        }
                    } else {
                        positiondetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            positiondetailsnotifications.html(showAlert("info", errors))
        }
    })

    function clearpositionsform() {
        positionidfield.val("0"),
            positionnamefield.val(""),
            positionestablishmentfield.val(""),
            positionreportstofield.val("0"),
            positionstartjobgroupfield.val("")
        positionendjobgroupfield.val("")
        positionstartnotchfield.val("")
        positionendnotchfield.val("")
    }

    function getjobpositionsastable() {
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getjobpositions: true
            },
            (data) => {
                let results = ""
                data.forEach((position, i) => {
                    results += `<tr data-id='${position.positionid}'>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${position.positionname}</td>`
                    results += `<td>${position.reportstoname == "<Top>" ? "&lt;Top&gt;" : position.reportstoname}</td>`
                    results += `<td class="text-right">${$.number(position.establishment)}</td>`
                    results += `<td class="text-right">${$.number(position.strength)}</td>`
                    results += `<td class="text-center">${position.startjobgroupname} - ${position.startnotchname}</td>`
                    results += `<td class="text-center">${position.endjobgroupname} - ${position.endnotchname}</td>`
                    results += `<td>${formatDate(position.dateadded)}</td>`
                    results += `<td>${position.addedbyname}</td>`
                    results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results += `<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                makedatatable(positionstable,results,15)
            }
        )
    }

    // listen to edit job position
    positionstable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            positionid = parent.attr("data-id")

        // fetch the position's details
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getjobpositiondetails: true,
                positionid
            },
            (data) => {
                data = data[0]
                positionidfield.val(data.positionid),
                    positionnamefield.val(data.positionname),
                    positionestablishmentfield.val(data.establishment),
                    positionreportstofield.val(data.reportsto),
                    positionstartjobgroupfield.val(data.startjobgroupid)
                positionendjobgroupfield.val(data.endjobgroupid)
                positionstartnotchfield.val(data.startnotchid)
                positionendnotchfield.val(data.endnotchid)
                // hide notifications
                positiondetailsnotifications.html("")
                positionnotifications.html("")
                // show modal
                positionsdetailsmodal.modal("show")
            }
        )
    })

    // listen to delete job position
    positionstable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            positionid = parent.attr("data-id"),
            positionname = parent.find("td").eq(1).text()
        // confirm deletion with bootbox
        bootbox.dialog({
            title: "Delete Job Position",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i>Deletion position <strong> ${positionname}</strong> from the system`,
            backdrop: true,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Remove",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        $.post(
                            "../controllers/payrolloperations.php",
                            {
                                deletejobposition: true,
                                positionid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        positionnotifications.html(showAlert("success", `The position <strong>${positionname}</strong> was deleted successfully`))
                                        getjobpositionsastable()
                                    }
                                } else {
                                    positionnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    getjobpositionsastable()
    getcreditorsastable()

    const scalejobgroupfield = $("#salarystructurejobgroup"),
        scalenotchfield = $("#salarystructurenotch")

    getjobgroups(scalejobgroupfield, 'choose')
    getjobnotches(scalenotchfield, 'choose')

    // Payroll Creditors
    const creditoridfield = $("#payrollcreditorid"),
        creditornamefield = $("#payrollcreditorname"),
        creditorreferencefield = $("#payrollcreditorrefno"),
        creditorphysicaladdressfield = $("#payrollcreditorphysicaladdress"),
        creditorpostaladdressfield = $("#payrollcreditorpostaladdress"),
        creditortownfield = $("#payrollcreditortown"),
        creditortelephonefield = $("#payrollcreditortelephone"),
        creditoremailaddressfield = $("#payrollcreditoremail"),
        savecreditorbutton = $("#savepayrollcreditor"),
        creditordetailsnotifications = $("#payrollcreditordetailsnotification"),
        creditortable = $("#creditorstable"),
        creditornotifications = $("#creditornotifications")

    // save creditor
    savecreditorbutton.on("click", () => {
        const creditorid = creditoridfield.val(),
            creditorname = sanitizestring(creditornamefield.val()),
            reference = sanitizestring(creditorreferencefield.val()),
            physicaladdress = sanitizestring(creditorphysicaladdressfield.val()),
            postaladdress = sanitizestring(creditorpostaladdressfield.val()),
            town = sanitizestring(creditortownfield.val()),
            telephone = sanitizestring(creditortelephonefield.val()),
            emailaddress = sanitizestring(creditoremailaddressfield.val())

        let errors = ""

        // check for blank fields
        if (reference == "") {
            errors = "Please provide creditor's reference number"
            creditorreferencefield.focus()
        } else if (creditorname == "") {
            errors = "Please provide creditor's name"
            creditornamefield.focus()
        }

        if (errors == "") {
            creditordetailsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.post(
                "../controllers/creditoroperations.php",
                {
                    savecreditor: true,
                    payrollcreditor: 1,
                    creditorid,
                    creditorname,
                    reference,
                    physicaladdress,
                    postaladdress,
                    town,
                    telephone,
                    emailaddress
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            creditordetailsnotifications.html(showAlert("success", `Payroll creditor ${creditorname} was saved successfully`))
                            // clear form
                            clearcreditorform()
                            creditorreferencefield.focus()
                            // refresh window
                            getcreditorsastable()
                        } else if (data.status == "exists") {
                            if (data.message == "reference exists") {
                                creditordetailsnotifications.html(showAlert("info", `The creditor reference already exists in the system`))
                            } else if (data.message == "name exists") {
                                creditordetailsnotifications.html(showAlert("info", `The creditor name already exists in the system`))
                            }
                        }
                    } else {
                        creditordetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            creditordetailsnotifications.html(showAlert("info", errors))
        }
    })

    function clearcreditorform() {
        creditoridfield.val("0")
        creditornamefield.val("")
        creditorreferencefield.val("")
        creditorphysicaladdressfield.val("")
        creditorpostaladdressfield.val("")
        creditortownfield.val("")
        creditortelephonefield.val("")
        creditoremailaddressfield.val("")
    }

    function getcreditorsastable() {
        $.getJSON(
            "../controllers/creditoroperations.php",
            {
                getcreditors: true
            },
            (data) => {
                let results = ""
                data.forEach((creditor, i) => {
                    const balance = creditor.deducted - creditor.remitted
                    results += `<tr data-id='${creditor.creditorid}'>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${creditor.referenceno}</td>`
                    results += `<td>${creditor.creditorname}</td>`
                    results += `<td>${creditor.postaladdress} ${creditor.town}</td>`
                    results += `<td>${creditor.telephone}</td>`
                    results += `<td>${creditor.emailaddress}</td>`
                    results += `<td>${$.number(creditor.deducted)}</td>`
                    results += `<td>${$.number(creditor.remitted)}</td>`
                    results += `<td>${$.number(balance)}</td>`
                    results += `<td>${formatDate(creditor.dateadded)}</td>`
                    results += `<td>${creditor.addedbyname}</td>`
                    results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results += `<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                makedatatable(creditortable,results,15)
            }
        )
    }

    // listen to edit creditor
    creditortable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            creditorid = parent.attr("data-id")
        $.getJSON(
            "../controllers/creditoroperations.php",
            {
                getcreditordetails: true,
                creditorid
            },
            (data) => {
                data = data[0]
                creditoridfield.val(data.creditorid)
                creditornamefield.val(data.creditorname)
                creditorreferencefield.val(data.referenceno)
                creditorphysicaladdressfield.val(data.physicaladdress)
                creditorpostaladdressfield.val(data.postaladdress)
                creditortownfield.val(data.town)
                creditortelephonefield.val(data.telephone)
                creditoremailaddressfield.val(data.emailaddress)
                creditordetailsnotifications.html("")
                creditornotifications.html("")
                payrollcreditordetailsmodal.modal("show")
            }
        )
    })

    // listen to delete creditor
    creditortable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            creditorid = parent.attr("data-id"),
            creditorname = parent.find("td").eq(2).text()
        // confirm deletion with bootbox
        bootbox.dialog({
            title: "Delete Creditor",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i>Deletion the creditor <strong> ${creditorname}</strong> from the system`,
            backdrop: true,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Remove",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        $.post(
                            "../controllers/creditoroperations.php",
                            {
                                deletecreditor: true,
                                creditorid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        creditornotifications.html(showAlert("success", `The creditor <strong>${creditorname}</strong> was deleted successfully`))
                                        getcreditorsastable()
                                    }
                                } else {
                                    creditornotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })


    // payroll items

    // get existing payroll creditors
    getcreditors(payrollitemcreditorfield, 'choose')
    // get reliefs
    getpayrollitems(payrollitemrelieftypefield, 'relief', 'choose')
    // get existing payroll items
    getpayrollitemsatable()
    // get bracketed values list items
    getpayrollitems(payrollitembracketeditemfield, '<all>', 'choose', true)

    payrollitemstatutoryfield.on("change", () => {
        const status = payrollitemstatutoryfield.val()

        if (status == "1") {
            payrollitemcategoryfield.val("deduction")
            payrollitemcategoryfield.prop("disabled", true)
        } else {
            payrollitemcategoryfield.val("")
            payrollitemcategoryfield.prop("disabled", false)
        }
    })

    // disable creditor and relief fields for non-deduction items
    payrollitemcategoryfield.on("change", () => {
        const itemcategory = payrollitemcategoryfield.val()

        if (itemcategory != "deduction") {
            payrollitemapplyrelieffield.prop("disabled", true)
            payrollitemrelieftypefield.prop("disabled", true)
            payrollitemcreditorfield.prop("disabled", true)
            payrollitememployertomatchfield.val("0")
            payrollitememployertomatchfield.prop("disabled", true)
            payrollitemisloanfield.val("0")
            payrollitemisloanfield.prop("disabled", true)
            payrollitemembracketedployermatchfactorfield.prop("disabled", true)
            payrollitemembracketedployermatchfactorfield.val("0")
        } else {
            payrollitemapplyrelieffield.prop("disabled", false)
            payrollitemrelieftypefield.prop("disabled", false)
            payrollitemcreditorfield.prop("disabled", false)
            payrollitememployertomatchfield.val("")
            payrollitememployertomatchfield.prop("disabled", false)
            payrollitemembracketedployermatchfactorfield.prop("disabled", false)
            payrollitemembracketedployermatchfactorfield.val("")
        }
    })

    // listen to allowable deduction field change
    payrollitemallowabledeductionfield.on("change", () => {
        const status = payrollitemallowabledeductionfield.val() == 1 ? false : true
        payrollitemallowabledeductionpercentagefield.prop("disabled", status)
        payrollitemallowabledeductionvaluefield.prop("disabled", status)
        payrollitemallowabledeductionlowerlimitfield.prop("disabled", status)
        payrollitemallowabledeductionupperlimitfield.prop("disabled", status)
    })

    // listen to employer matches contribution fields
    payrollitememployertomatchfield.on("change", () => {
        const status = payrollitememployertomatchfield.val()
        if (status == 1) {
            payrollemployermatchfactorfield.val("1")
            payrollemployermatchfactorfield.prop("disabled", false)
        } else {
            payrollemployermatchfactorfield.val("0")
            payrollemployermatchfactorfield.prop("disabled", true)
        }
    })

    payrollitemaddbracketvaluesbutton.on("click", () => {
        const percentage = payrollitembracketedpercentagefield.val(),
            minvalue = Number(payrollitemlowerbracketfield.val()),
            maxvalue = Number(payrollitemupperbracketfield.val()),
            value = Number(payrollitembracketvaluefield.val())
        let errors = ""
        // check for blank fields
        if (percentage == "") {
            errors = "Please select percentage option for bracketed value"
            payrollitembracketedpercentagefield.focus()
        } else if (minvalue <= 0) {
            errors = "Please provide correct lower bracket value"
            payrollitemlowerbracketfield.focus()
        } else if (maxvalue <= 0) {
            errors = "Please provide correct upper bracket value"
            payrollitemupperbracketfield.focus()
        } else if (minvalue >= maxvalue) {
            errors = "Lower bracket value should be less than Upper bracket value"
        } else if (value <= 0) {
            errors = "Please provide correct  bracket value"
            payrollitembracketvaluefield.focus()
        }

        if (errors == "") {
            let valuesexists = false
            bracketedvaluestable.find("tbody tr").each(function () {
                const currentrow = $(this).find("td"),
                    minbracketvalue = Number(currentrow.eq(1).text()),
                    maxbracketvalue = Number(currentrow.eq(2).text())
                // check if bracket value items already match whats on the list
                if ((minvalue >= minbracketvalue && minvalue <= maxbracketvalue) || (maxvalue >= minbracketvalue && maxvalue <= maxbracketvalue)) {
                    valuesexists = true
                    // exit the for each loop
                    return false
                }
            })

            if (valuesexists) {
                errors = `<strong>${minvalue}</strong> or <strong>${maxvalue}</strong> already exist in the list`
                // report error
                payrollitemdetailsnotifications.html(showAlert("info", errors))
            } else {
                // add to the list
                // get current rows in table
                const tablerow = bracketedvaluestable.find("tbody tr").length + 1
                let newrow = `<tr><td>${tablerow}</td>`
                newrow += `<td>${minvalue}</td>`
                newrow += `<td>${maxvalue}</td>`
                newrow += `<td>${value}</td>`
                // edit and delete buttons
                newrow += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                newrow += `<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                $(newrow).appendTo(bracketedvaluestable.find("tbody"))
                payrollitemlowerbracketfield.val("")
                payrollitemupperbracketfield.val("")
                payrollitembracketvaluefield.val("")
                payrollitemlowerbracketfield.focus()
            }
        } else {
            payrollitemdetailsnotifications.html(showAlert("info", errors))
        }
    })


    // listen to edit of bracket value
    bracketedvaluestable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            row = parent.find("td"),
            minval = Number(row.eq(1).text()),
            maxval = Number(row.eq(2).text()),
            value = Number(row.eq(3).text())
        payrollitemlowerbracketfield.val(minval)
        payrollitemupperbracketfield.val(maxval)
        payrollitembracketvaluefield.val(value)
        // delete parent from the list
        parent.remove()
        // renumber collumns
        renumbertablerows(bracketedvaluestable)
    })

    // listen to delete bracket value
    bracketedvaluestable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            row = parent.find("td"),
            minval = row.eq(1).text(),
            maxval = row.eq(2).text()
        bootbox.dialog({
            title: "Remove Bracket Value",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Remove bracket values between ${minval} and ${maxval} from the list`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Clear",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        parent.remove()
                        renumbertablerows(bracketedvaluestable)
                    }
                }
            }
        })
    })

    // save payroll item
    payrollitemsavebutton.on("click", function () {
        const itemid = payrollitemidfield.val(),
            itemname = sanitizestring(payrollitemnamefield.val()),
            shortname = sanitizestring(payrollitemshortnamefield.val()),
            statutory = payrollitemstatutoryfield.val(),
            itemtype = payrollitemcategoryfield.val(),
            applyrelief = payrollitemapplyrelieffield.val(),
            reliefitem = payrollitemrelieftypefield.val(),
            defaultamount = Number(sanitizestring(payrollitemdefaultamount.val())),
            matchemployer = payrollitememployertomatchfield.val(),
            matchfactor = Number(payrollitemembracketedployermatchfactorfield.val()),
            display = payrollitemdisplayfield.val(),
            showonpayroll = payrollitemshowonpayrollfield.val(),
            taxable = payrollitemtaxablefield.val(),
            isaloan = payrollitemisloanfield.val(),
            allowablededuction = payrollitemallowabledeductionfield.val(),
            allowabledeductionpercentage = payrollitemallowabledeductionpercentagefield.val(),
            allowabledeductionupperlimit = Number(payrollitemallowabledeductionupperlimitfield.val()),
            allowabledeductionlowerlimit = Number(payrollitemallowabledeductionlowerlimitfield.val()),
            allowabledeductionvalue = Number(payrollitemallowabledeductionvaluefield.val()),
            itemgroupid = payrollitemgroupfield.val(),
            systemlabel = payrollitemsystemlabelfield.val()
        // bracketedvalue=payrollitembracketedfield.val(),

        let bracketgross = payrollitembracketeditemfield.val() == "gross" ? 1 : 0,
            bracketpercentage = payrollitembracketedpercentagefield.val(),
            bracketitem = payrollitembracketeditemfield.val(),
            bracketlowerlimit = Number(sanitizestring(payrollitembracketedlowerlimitfield.val())),
            bracketupperlimit = Number(sanitizestring(payrollitembracketedupperlimitfield.val())),
            creditorid = payrollitemcreditorfield.val()

        // console.log(bracketedvalue,",",payrollitembracketedfield.val())
        const mybracketed = payrollitembracketedfield.val()
        // console.log("Bracketed:",mybracketed)


        let errors = "",
            // lowerbracket, upperbracket, value
            bracketvalues = []

        bracketedvaluestable.find("tbody tr").each(function () {
            const rw = $(this).find("td"),
                upperbracket = rw.eq(1).text().replace(",", ""),
                lowerbracket = rw.eq(2).text().replace(",", ""),
                bracketvalue = rw.eq(3).text().replace(",", "")
            bracketvalues.push({ "upperbracket": upperbracket, "lowerbracket": lowerbracket, "bracketvalue": bracketvalue })
        })
        // check for blank fields
        if (statutory == "") {
            errors = "Please select statutory status for the item"
            payrollitemstatutoryfield.focus()
        } else if (itemtype == "") {
            errors == "Please select item category first"
            payrollitemcategoryfield.focus()
        } else if (itemname == "") {
            errors = "Please provide item name"
            payrollitemnamefield.focus()
        } else if (shortname == "") {
            errors = "Please provide short name first"
            payrollitemshortnamefield.focus()
        } else if (itemtype == "deduction" && applyrelief == "") {
            errors = "Please select relief application status"
            payrollitemapplyrelieffield.focus()
        } else if (itemtype == "deduction" && applyrelief == "1" && reliefitem == "") {
            errors = "Select relief type item"
            payrollitemrelieftypefield.focus()
        } else if (itemtype == "deduction" && matchemployer == "") {
            errors = "Please select item employer matching status"
            payrollitememployertomatchfield.focus()
        } else if (matchemployer == "1" && matchfactor == "") {
            errors = "Please select employer match factor"
            payrollitemembracketedployermatchfactorfield.focus()
        } else if (showonpayroll == "") {
            errors = "Please select show on payroll status for the item"
            payrollitemshowonpayrollfield.focus()
        } else if (itemgroupid == "") {
            errors = "Please select item group"
            payrollitemgroupfield.focus()
        } else if (itemtype == "deduction" && creditorid == "") {
            errors = "Please select payroll creditor for the item"
            payrollitemcreditorfield.focus()
        } else if (taxable == "") {
            errors = "Please select taxation status for the payroll item"
            payrollitemtaxablefield.focus()
        } else if (itemtype == "deduction" && isaloan == "") {
            errors = "Please select item loan status"
            payrollitemisloanfield.focus()
        } else if (allowablededuction == 1) {
            if (Number(allowabledeductionlowerlimit) <= 0) {
                errors = "Please select allowable deduction lower limit"
                payrollitemallowabledeductionlowerlimitfield.focus()
            } else if (Number(allowabledeductionupperlimit <= 0)) {
                errors = "Please select allowable deduction upper limit"
                payrollitemallowabledeductionupperlimitfield.focus()
            } else if (Number(allowabledeductionvalue) <= 0) {
                errors = "Please provide allowable deduction value"
                payrollitemallowabledeductionvaluefield.focus()
            }
        }

        if (mybracketed == "" && errors == "") {
            console.log("Bracketed is Blank")
            errors = "Please select bracketed status for the payroll item"
            payrollitembracketedfield.focus()
        } else if (mybracketed == "1") {
            if (bracketedvaluestable.find("tbody tr").length == 0) {
                errors = "Please add at least an entry for the bracketed value"
            } else {
                if (bracketitem == "gross") {
                    bracketgross = 1,
                        bracketitem = 0
                } else {
                    if (bracketitem == "") {
                        errors = "Please select payroll item bracket item"
                        payrollitembracketeditemfield.focus()
                    }
                }
            }
        } else {
            bracketlowerlimit = 0,
                bracketupperlimit = 0,
                bracketpercentage = 0,
                bracketitem = 0
        }

        // make creditor id zero for non payroll items deductions
        if (itemtype != "deduction") {
            creditorid = 0
        }


        if (errors !== "") {
            payrollitemdetailsnotifications.html(showAlert("info", errors))
        } else {
            // save
            payrollitemdetailsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            bracketvalues = JSON.stringify(bracketvalues)
            $.post(
                "../controllers/payrolloperations.php",
                {
                    savepayrollitem: true,
                    itemid,
                    itemtype,
                    itemname,
                    shortname,
                    statutory,
                    applyrelief,
                    reliefitem,
                    defaultamount,
                    matchemployer,
                    matchfactor,
                    display,
                    showonpayroll,
                    creditorid,
                    taxable,
                    isaloan,
                    allowablededuction,
                    allowabledeductionpercentage,
                    allowabledeductionlowerlimit,
                    allowabledeductionupperlimit,
                    allowabledeductionvalue,
                    bracketed: mybracketed,
                    bracketitem,
                    bracketgross,
                    bracketvalues,
                    bracketpercentage,
                    bracketlowerlimit,
                    bracketupperlimit,
                    itemgroupid,
                    systemlabel
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            payrollitemdetailsnotifications.html(showAlert("success", `The payroll item <strong>${itemname}</strong> was csaved successfully`))
                            // clear form
                            clearpayrollitemsform()
                            // refresh list
                            getpayrollitemsatable()
                        } else if (message.status == "exists") {
                            payrollitemdetailsnotifications.html(showAlert("info", `Payroll item <strong>${itemname}</strong> already exists in the system`))
                            payrollitemnamefield.focus()
                        }
                    } else {
                        payrollitemdetailsnotifications.html(showAlert("danger", `Sorry, an error occured.${data}`))
                    }
                }
            )
        }
    })

    function clearpayrollitemsform() {
        payrollitemidfield.val("0")
        payrollitemnamefield.val("")
        payrollitemstatutoryfield.val("")
        payrollitemcategoryfield.val("")
        payrollitemapplyrelieffield.val("0")
        payrollitemrelieftypefield.val("")
        payrollitemdefaultamount.val("")
        payrollitememployertomatchfield.val("0")
        payrollitemembracketedployermatchfactorfield.val("")
        payrollitemdisplayfield.val("")
        payrollitemshowonpayrollfield.val("")
        payrollitemcreditorfield.val("")
        payrollitemtaxablefield.val("")
        payrollitemisloanfield.val("")
        payrollitemallowabledeductionfield.val("0"),
        payrollitemallowabledeductionpercentagefield.val("0")
        payrollitemallowabledeductionupperlimitfield.val("")
        payrollitemallowabledeductionlowerlimitfield.val("")
        payrollitemallowabledeductionvaluefield.val("")
        payrollitembracketedfield.val("")
        payrollitembracketeditemfield.val("")
        payrollitembracketedpercentagefield.val("")
        payrollitembracketedlowerlimitfield.val("")
        payrollitembracketedupperlimitfield.val("")
    }

    function getpayrollitemsatable() {
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getpayrollitems: true
            },
            (data) => {
                let results = ""
                data.forEach((item, i) => {
                    const bracketed = item.bracketed == 1 ? `<i class="fas fa-check-circle fa-lg fa-fw text-success"></i>` : `<i class="fas fa-times-circle fa-lg fa-fw text-danger"></i>`
                    results += `<tr data-id='${item.itemid}'>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${titleCase(item.itemtype)}</td>`
                    results += `<td>${item.itemname}</td>`
                    results += `<td class="text-center">${bracketed}</td>`
                    results += `<td>${item.creditorname}</td>`
                    results += `<td>${formatDate(item.dateadded)}</td>`
                    results += `<td>${item.addedbyname}</td>`
                    results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results += `<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                makedatatable(payrollitemstable,results,15)
            }
        )
    }

    // edit payroll item
    payrollitemstable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            itemid = parent.attr("data-id")
        // get payrollitems details
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getpayrollitemdetails: true,
                itemid
            },
            (data) => {
                data = data[0]

                payrollitemidfield.val(data.itemid)
                payrollitemnamefield.val(data.itemname)
                payrollitemshortnamefield.val(data.shortname)
                payrollitemgroupfield.val(data.itemgroupid)
                payrollitemsystemlabelfield.val(data.description)

                payrollitemstatutoryfield.val(data.statutory)
                payrollitemstatutoryfield.trigger("change")

                payrollitemcategoryfield.val(data.itemtype)
                payrollitemcategoryfield.trigger("change")

                payrollitemapplyrelieffield.val(data.applyrelief)
                payrollitemrelieftypefield.val(data.reliefitem == 0 ? "" : data.reliefitem)
                payrollitemdefaultamount.val(data.defaultamount)
                payrollitememployertomatchfield.val(data.employertomatch)
                payrollitemembracketedployermatchfactorfield.val(data.employermatchfactor)
                payrollitemdisplayfield.val(data.display)
                payrollitemshowonpayrollfield.val(data.showonpayroll)
                payrollitemcreditorfield.val(data.creditorid)
                payrollitemtaxablefield.val(data.taxable)

                payrollitemisloanfield.val(data.isaloan)
                payrollitemisloanfield.trigger("change")

                payrollitemallowabledeductionfield.val(data.allowablededuction)
                payrollitemallowabledeductionfield.trigger("change")

                payrollitemallowabledeductionpercentagefield.val(data.allowabledeductionpercentage)
                payrollitemallowabledeductionupperlimitfield.val(data.allowabledeductionupperlimit)
                payrollitemallowabledeductionlowerlimitfield.val(data.allowabledeductionlowerlimit)
                payrollitemallowabledeductionvaluefield.val(data.allowabledeductionvalue)
                payrollitembracketedfield.val(data.bracketed)
                payrollitembracketedfield.trigger("change")
                payrollitembracketeditemfield.val(data.bracketedongross == 1 ? "gross" : data.bracketitem)
                // payrollitembracketeditemfield.val("")
                payrollitembracketedpercentagefield.val(data.bracketispercentage)
                payrollitembracketedlowerlimitfield.val(data.bracketlowerlimit)
                payrollitembracketedupperlimitfield.val(data.bracketupperlimit)
                // hide all notifications
                payrollitemdetailsnotifications.html("")
                payrollitemsnotifications.html("")
                // show the modal
                payrollitemdetailsmodal.modal("show")
            }
        )
    })

    // delete payroll item
    payrollitemstable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            itemid = parent.attr("data-id"),
            itemname = parent.find("td").eq(2).text()
        // confirm with bootbox
        bootbox.dialog({
            title: "Delete Payroll Item",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete payroll item <strong>${itemname}</strong> from the system.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        $.post(
                            "../controllers/payrolloperations.php",
                            {
                                deletepayrollitem: true,
                                itemid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        payrollitemsnotifications.html(showAlert("success", `The payroll item <strong>${itemname}</strong> was deleted successfully`))
                                        getpayrollitemsatable()
                                    }
                                } else {
                                    payrollitemsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    // Salary Structures
    const salarystructureidfield = $("#salarystructureid"),
        salarystructurepayrollitemfield = $("#salarystructurepayrollitem"),
        salarystructureannualincrementfield = $("#salarystructureannualincrement"),
        salarystructureminvaluefield = $("#salarystructureminvalue"),
        salarystructuremaxvaluefield = $("#salarystructuremaxvalue"),
        savesalarystructurebutton = $("#savesalarystructure"),
        salarystructurestable = $("#salarystructurestable"),
        salarystructurenotifications = $("#salarystructurenotifications")

    getpayrollitems(salarystructurepayrollitemfield, 'payment', option = 'choose')
    getsalarystructureastable()

    savesalarystructurebutton.on("click", () => {
        // console.log("clicked save")
        const structureid = salarystructureidfield.val(),
            payrollitemid = salarystructurepayrollitemfield.val(),
            annualincrement = Number(salarystructureannualincrementfield.val()),
            minvalue = Number(salarystructureminvaluefield.val()),
            maxvalue = Number(salarystructuremaxvaluefield.val()),
            jobgroupid = scalejobgroupfield.val(),
            notchid = scalenotchfield.val()
        // check for blank fields
        let errors = ""

        if (jobgroupid == "") {
            errors = "Please select job group"
            scalejobgroupfield.focus()
        } else if (notchid == "") {
            errors = "Please select job notch"
            scalenotchfield.focus()
        } else if (payrollitemid == "") {
            errors = "Please payroll item to be attached"
            salarystructurepayrollitemfield.focus()
        } else if (annualincrement <= 0) {
            errors = "Please provide correct annual increment"
            salarystructureannualincrementfield.focus()
        }
        else if (minvalue <= 0) {
            errors = "Please provide correct minimum value"
            salarystructureminvaluefield.focus()
        } else if (maxvalue <= 0) {
            errors = "Please select correct maximum value"
            salarystructuremaxvaluefield.focus()
        }

        if (errors == "") {
            // save the salary structure
            salarystructuredetailsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.post(
                "../controllers/payrolloperations.php",
                {
                    savesalarystructure: true,
                    structureid,
                    jobgroupid,
                    notchid,
                    payrollitemid,
                    annualincrement,
                    minvalue,
                    maxvalue
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            salarystructuredetailsnotifications.html(showAlert("success", `The salary structure has been saved succesfully`))
                            // clear list
                            clearsalarystructurefields()
                            // refresh list
                            getsalarystructureastable()
                        } else if (data.status == "exists") {
                            salarystructuredetailsnotifications.html(showAlert("info", `Salary structure already exists for payroll item for specified pay grades`))
                        }
                    } else {
                        salarystructuredetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            salarystructuredetailsnotifications.html(showAlert("info", errors))
        }
    })

    function clearsalarystructurefields() {
        scalejobgroupfield.val("")
        scalenotchfield.val("")
        salarystructureidfield.val("0")
        salarystructurepayrollitemfield.val("")
        salarystructureannualincrementfield.val("")
        salarystructureminvaluefield.val("")
        salarystructuremaxvaluefield.val("")
    }

    function getsalarystructureastable() {
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getsalarystructures: true
            },
            (data) => {
                let results = ""
                data.forEach((structure, i) => {
                    results += `<tr data-id='${structure.structureid}'>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${structure.jobgroupname}</td>`
                    results += `<td>${structure.notchname}</td>`
                    results += `<td>${structure.itemname}</td>`
                    results += `<td>${$.number(structure.minimumvalue)}</td>`
                    results += `<td>${$.number(structure.maximumvalue)}</td>`
                    results += `<td>${$.number(structure.annualincrement)}</td>`
                    results += `<td>${$.number(structure.employees)}</td>`
                    results += `<td>${formatDate(structure.dateadded)}</td>`
                    results += `<td>${structure.addedbyname}</td>`
                    results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results += `<td><a href="#" class="delete"><i class="fal fa-trash -alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                makedatatable(salarystructurestable,results,15)
            }
        )
    }

    // Edit salary structure
    salarystructurestable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            structureid = parent.attr("data-id")

        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getsalarystructuredetails: true,
                structureid
            },
            (data) => {
                data = data[0]
                salarystructureidfield.val(data.structureid)
                scalejobgroupfield.val(data.jobgroupid)
                scalenotchfield.val(data.notchid)
                salarystructurepayrollitemfield.val(data.payrollitemid),
                    salarystructureannualincrementfield.val(data.annualincrement)
                salarystructureminvaluefield.val(data.minimumvalue)
                salarystructuremaxvaluefield.val(data.maximumvalue)
                // show modal
                salarystructuredetailsnotifications.html("")
                salarystructurenotifications.html("")
                salarystructuredetailsmodal.modal("show")
            }
        )
    })

    salarystructurestable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            structureid = parent.attr("data-id"),
            currentrow = parent.find("td"),
            structuredescription = currentrow.eq(3).text() + ' for Grade ' + currentrow.eq(1).text() + ', Notch ' + currentrow.eq(2).text()
        // confirm with bootbox
        bootbox.dialog({
            title: "Delete Salary Structure",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete structure for <strong>${structuredescription}</strong>`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        $.post(
                            "../controllers/payrolloperations.php",
                            {
                                deletesalarystructure: true,
                                structureid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    salarystructurenotifications.html(showAlert("success", `Salary structure for <strong>${structuredescription}</strong> deleted successfully`))
                                    getsalarystructureastable()
                                } else {
                                    salarystructurenotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    // job categories
    getjobcategoryastable()

    const jobcategoryidfield = $("#jobcategoryid"),
        jobcategorynamefield = $("#jobcategoryname"),
        jobcategoryprefixfield = $("#jobcategoryprefix"),
        jobcategorycurrentnumberfield = $("#jobcategorycurrentnumber"),
        jobcategorydetailsnotifications = $("#jobcategorydetailsnotifications"),
        jobcategorytable = $("#jobcategorytable"),
        jobcategorysavebutton = $("#savejobcategorybutton"),
        jobcategorynotfications = $("#jobcategorynotifications")

    // save job category
    jobcategorysavebutton.on("click", () => {
        const categoryid = jobcategoryidfield.val(),
            categoryname = sanitizestring(jobcategorynamefield.val()),
            prefix = sanitizestring(jobcategoryprefixfield.val()),
            currentnumber = Number(jobcategorycurrentnumberfield.val())

        let errors = ""

        if (categoryname == "") {
            errors = "Please provide category name"
            jobcategorynamefield.focus()
        } else if (prefix == "") {
            errors = "Please provide category numbering prefix"
            jobcategoryprefixfield.focus()
        } else if (currentnumber <= 0) {
            errors = "Please provide correct category current number"
            jobcategorycurrentnumberfield.focus()
        }

        if (errors == "") {
            jobcategorydetailsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.post(
                "../controllers/payrolloperations.php",
                {
                    savejobcategory: true,
                    categoryid,
                    categoryname,
                    prefix,
                    currentnumber
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            jobcategorydetailsnotifications.html(showAlert("success", `Employmnent category <strong>${categoryname}</strong> was saved successfully`))
                            clearjobcategoryform()
                            jobcategorynamefield.focus()
                            getjobcategoryastable()
                        } else if (data.status == "exists") {
                            if (data.message == "name exists") {
                                jobcategorydetailsnotifications.html(showAlert("info", `Category name <strong>${categoryname}</strong> already exists in the system`))
                            } else if (data.message = "prefix exists") {
                                jobcategorydetailsnotifications.html(showAlert("info", `Numbering prefix <strong>${prefix}</strong> already exists in the system`))
                            }
                        }
                    } else {
                        jobcategorydetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            jobcategorydetailsnotifications.html(showAlert("info", errors))
        }
    })

    function clearjobcategoryform() {
        jobcategoryidfield.val("0")
        jobcategorynamefield.val("")
        jobcategoryprefixfield.val("")
        jobcategorycurrentnumberfield.val(1)
    }

    function getjobcategoryastable() {
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getjobcategories: true
            },
            (data) => {
                let results = ""
                data.forEach((category, i) => {
                    results += `<tr data-id='${category.categoryid}'>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${category.categoryname}</td>`
                    results += `<td>${category.numberingprefix}</td>`
                    results += `<td>${category.currentnumber}</td>`
                    results += `<td>${category.employees}</td>`
                    results += `<td>${formatDate(category.dateadded)}</td>`
                    results += `<td>${category.addedbyname}</td>`
                    results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results += `<td><a href="#" class="delete"><i class="fal fa-trash -alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                makedatatable(jobcategorytable,results,15)
            }
        )
    }

    // listen to edit job actegory
    jobcategorytable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            categoryid = parent.attr("data-id")
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getjobcategorydetails: true,
                categoryid
            },
            (data) => {
                data = data[0]
                jobcategoryidfield.val(data.categoryid)
                jobcategorynamefield.val(data.categoryname)
                jobcategoryprefixfield.val(data.numberingprefix)
                jobcategorycurrentnumberfield.val(data.currentnumber)
                jobcategorynotfications.html("")
                jobcategorydetailsnotifications.html("")
                categorydetailsmodal.modal("show")
            }
        )
    })

    // listen to delete job category
    jobcategorytable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            categoryid = parent.attr("data-id"),
            categoryname = parent.find("td").eq(1).text()
        // confirm with bootbox
        bootbox.dialog({
            title: "Delete Job Category",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete job category <strong>${categoryname}</strong> from the system.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-outline-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        $.post(
                            "../controllers/payrolloperations.php",
                            {
                                deletejobcategory: true,
                                categoryid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        jobcategorynotfications.html(showAlert("success", `The job category <strong>${categoryname}</strong> was deleted successfully`))
                                        getjobcategoryastable()
                                    }
                                } else {
                                    jobcategorynotfications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    getdepartmentsastable()

    // save departments
    savedepartmentbutton.on("click", () => {
        const departmentid = departmentidfield.val(),
            departmentname = sanitizestring(departmentnamefield.val()),
            departmenthod = departmenthodfield.val(),
            departmentextension = sanitizestring(departmentextensionfield.val())

        let errors = ""

        if (departmentname == "") {
            errors = "Please provide department name"
            departmentnamefield.focus()
        } else if (departmenthod == "") {
            errors = "Please select department head"
            departmenthodfield.focus()
        }

        if (errors == "") {
            departmentdetailsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.post(
                "../controllers/departmentoperations.php",
                {
                    savedepartment: true,
                    departmentid,
                    departmentname,
                    departmenthod,
                    departmentextension
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            departmentdetailsnotifications.html(showAlert("success", `The department <strong>${departmentname}</strong> was saved successfully`))
                            cleardepartmentform()
                            departmentnamefield.focus()
                            getdepartmentsastable()
                        } else if (data.status == "exists") {
                            departmentdetailsnotifications.html(showAlert("info", `Department name  <strong>${departmentname}</strong> already exists in the system `))
                        }
                    } else {
                        departmentdetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            departmentdetailsnotifications.html(showAlert("info", errors))
        }
    })

    function cleardepartmentform() {
        departmentidfield.val("0")
        departmentnamefield.val("")
        departmenthodfield.val("")
        departmentextensionfield.val("")
    }

    function getdepartmentsastable() {
        $.getJSON(
            "../controllers/departmentoperations.php",
            {
                getdepartments: true
            },
            (data) => {
                let results = ""
                data.forEach((department, i) => {
                    results += `<tr data-id='${department.departmentid}'>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${department.departmentname}</td>`
                    results += `<td>${department.departmenthead}</td>`
                    results += `<td>${department.extension}</td>`
                    results += `<td>${$.number(department.employees)}</td>`
                    results += `<td>${formatDate(department.dateadded)}</td>`
                    results += `<td>${department.addedbyname}</td>`
                    results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results += `<td><a href="#" class="delete"><i class="fal fa-trash -alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                makedatatable(departmentstable,results,15)
            }
        )
    }

    // edit department
    departmentstable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            departmentid = parent.attr("data-id")
        $.getJSON(
            "../controllers/departmentoperations.php",
            {
                getdepartmentdetails: true,
                departmentid
            },
            (data) => {
                data = data[0]
                departmentidfield.val(data.departmentid)
                departmentnamefield.val(data.departmentname)
                departmenthodfield.val(data.departmenthead)
                departmentextensionfield.val(data.extension)
                departmentdetailsnotifications.html("")
                departmentnotifications.html("")
                departmentdetailsmodal.modal("show")
            }
        )
    })

    // delete department
    departmentstable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            departmentid = parent.attr("data-id"),
            departmentname = parent.find("td").eq(1).text()
        // confirm bootbox deletion
        bootbox.dialog({
            title: "Delete Department",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete department <strong>${departmentname}</strong> from the system.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-outline-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        $.post(
                            "../controllers/departmentoperations.php",
                            {
                                deletedepartment: true,
                                departmentid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        departmentnotifications.html(showAlert("success", `The department <strong>${departmentname}</strong> was deleted successfully`))
                                        getdepartmentsastable()
                                    }
                                } else {
                                    departmentnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    const payrollcreditordetailsmodal = $("#payrollcreditordetailsmodal"),
        addnewpayrollcreditorbutton = $("#addnewcreditor")

    addnewpayrollcreditorbutton.on("click", () => {
        creditordetailsnotifications.html("")
        creditornotifications.html("")
        payrollcreditordetailsmodal.modal("show")
    })

    const jobgroupnotchselectioncheckbox = $("#jobgroupnotchselection"),
        jobgroupdetailsdiv = $("#jobgroupdetails"),
        notchdetailsdiv = $("#notchesdetails"),
        addjobgroupbutton = $("#addjobgroup"),
        jobgroupdetailsmodal = $("#jobdetailsmodal"),
        jobgroupdetailsnotifications = $("#jobgroupdetailsnotifications"),
        notchdetailsmodal = $("#notchdetailsmodal"),
        addnewnotchbutton = $("#addnewnotch"),
        notchdetailsnotifications = $("#notchdetailsnotifications"),
        positionsdetailsmodal = $("#positiondetailsmodal"),
        addnewpositionbutton = $("#addnewposition"),
        positiondetailsnotifications = $("#positiondetailsnotifications"),
        addnewsalarystructurebutton = $("#addnewsalarystructure"),
        salarystructuredetailsmodal = $("#salarystructuredetailsmodal"),
        salarystructuredetailsnotifications = $("#salarystructuredetailsnotifications"),
        addnewcategorybutton = $("#addnewemployeecategory"),
        categorydetailsmodal = $("#categorydetailsmodal"),
        categorydetailsnotifications = $("#categorydetailsnotifications"),
        adddepartmentbutton = $("#addnewdepartment"),
        departmentdetailsmodal = $("#departmentdetailsmodal"),
        departmentdetailsnotifications = $("#departmentdetailsnotifications"),
        addemploymenttermbutton = $("#addnewemploymentterm"),
        employmenttermdetailsmodal = $("#employmenttermdetailsmodal"),
        employmenttermdetailsnotifcations = $("#employmenttermdetailsnotifications")

    jobgroupnotchselectioncheckbox.on("click", () => {
        // console.log(jobgroupnotchselectioncheckbox.prop("checked"))
        if (jobgroupnotchselectioncheckbox.prop("checked")) {
            jobgroupdetailsdiv.show()
            notchdetailsdiv.hide()
        } else {
            notchdetailsdiv.show()
            jobgroupdetailsdiv.hide()
        }
    })

    addjobgroupbutton.on("click", () => {
        jobgroupdetailsnotifications.html("")
        jobgroupnotifications.html("")
        jobgroupdetailsmodal.modal("show")
    })

    addnewnotchbutton.on("click", () => {
        notchnotifications.html("")
        notchdetailsnotifications.html("")
        notchdetailsmodal.modal("show")
    })

    addnewpositionbutton.on("click", () => {
        positiondetailsnotifications.html("")
        positionnotifications.html("")
        positionsdetailsmodal.modal("show")
    })

    addnewsalarystructurebutton.on("click", () => {
        salarystructuredetailsnotifications.html("")
        salarystructurenotifications.html("")
        salarystructuredetailsmodal.modal("show")
    })

    addnewcategorybutton.on("click", () => {
        jobcategorynotfications.html("")
        jobcategorydetailsnotifications.html("")
        categorydetailsmodal.modal("show")
    })

    adddepartmentbutton.on("click", () => {
        departmentdetailsnotifications.html("")
        departmentnotifications.html("")
        departmentdetailsmodal.modal("show")
    })

    addemploymenttermbutton.on("click", () => {
        employmenttermdetailsmodal.modal("show")
    })



    // Save employment term
    const saveemploymenttermbutton = $("#saveemploymentterm"),
        employmenttermidfield = $("#termid"),
        employmenttermnamefield = $("#termname"),
        employmenttermdetailsnotifications = $("#employmenttermdetailsnotifications"),
        employmenttermstable = $("#employmenttermstable"),
        employmenttermnotifications = $("#employmenttermnotifications")

    saveemploymenttermbutton.on("click", () => {
        const termid = employmenttermidfield.val(),
            termname = sanitizestring(employmenttermnamefield.val())
        let errors = ""
        // check for blank fields
        if (termname == "") {
            errors = "Please provide <strong>Term Name</strong>"
            employmenttermnamefield.focus()
        }

        if (errors == "") {
            $.post(
                "../controllers/payrolloperations.php",
                {
                    saveemploymentterm: true,
                    termid,
                    termname
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            employmenttermdetailsnotifications.html(showAlert("success", `The employment term <strong>${termname}</strong> was saved successfully`))
                            // clear fields
                            clearemploymenttermfields()
                            // refresh table data
                            getemploymenttermsastable()
                        } else if (data.status == "exists") {
                            employmenttermdetailsnotifications.html(showAlert("info", `Employment term <strong>${termname}</strong> already exists`))
                        }
                    } else {
                        employmenttermdetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            employmenttermdetailsnotifications.html(showAlert("info", errors))
        }
    })

    function clearemploymenttermfields() {
        employmenttermidfield.val("0")
        employmenttermnamefield.val("")
    }

    function getemploymenttermsastable() {
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getemploymentterms: true
            },
            (data) => {
                let results = ""
                data.forEach((employmentterm, i) => {
                    results += `<tr data-id=${employmentterm.termid}>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${employmentterm.termname}</td>`
                    results += `<td>${$.number(employmentterm.employees)}</td>`
                    results += `<td>${formatDate(employmentterm.dateadded)}</td>`
                    results += `<td>${employmentterm.addedbyname}</td>`
                    // Add edit and delete buttons
                    results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results += `<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                makedatatable(employmenttermstable,results,15)
            }
        )
    }

    employmenttermstable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            termid = parent.attr("data-id")
        // get term details and show modal for editing
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getpaymenttermdetails: true,
                termid
            },
            (data) => {
                data = data[0]
                employmenttermidfield.val(data.termid)
                employmenttermnamefield.val(data.termname)
                employmenttermdetailsnotifications.html("")
                employmenttermdetailsmodal.modal("show")
            }
        )
    })

    employmenttermstable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            termid = parent.attr("data-id"),
            termname = parent.find("td").eq(1).text()

        // confirm deletion with bootbox
        bootbox.dialog({
            title: "Delete Employment Term",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete employment term <span class='font-weight-bold'>${termname}</span> from the system.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        //console.log(parent)
                        employmenttermnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
                        $.post(
                            "../controllers/payrolloperations.php",
                            {
                                deletepaymentterm: true,
                                termid
                            },
                            (data) => {
                                data = data.trim()
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        employmenttermnotifications.html(showAlert("success", `Employment term <strong>${termname}</strong> deleted successfully.`))
                                        getemploymenttermsastable()
                                    }
                                }
                                else {
                                    employmenttermnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    const addnewpayrollitembutton = $("#addnewpayrollitem"),
        payrollitemdetailsmodal = $("#payrollitemdetailsmodal")

    addnewpayrollitembutton.on("click", () => {
        payrollitemdetailsmodal.modal("show")
    })

    const payrollitemisloanfield = $("#payrollitemisaloan"),
        payrollitemloandetails = $("#loandetails")

    // Hide loan details by default
    payrollitemloandetails.hide()

    payrollitemisloanfield.on("change", function () {
        payrollitemisloanfield.val() == 1 ? payrollitemloandetails.show() : payrollitemloandetails.hide()
    })

    // bracket items


    payrollitembracketedpercentagefield.prop("disabled", true)
    payrollitembracketeditemfield.prop("disabled", true)
    bracketeddetails.hide()

    payrollitembracketedfield.on("change", function () {
        if ($(this).val() == 1) {
            payrollitembracketedpercentagefield.prop("disabled", false)
            payrollitembracketeditemfield.prop("disabled", false)
            bracketeddetails.show()
        } else {
            payrollitembracketedpercentagefield.prop("disabled", true)
            payrollitembracketeditemfield.prop("disabled", true)
            bracketeddetails.hide()
        }
    })

    const bankbranchcheckboxfield = $("#bankbranchselection"),
        banksdetailsdiv = $("#banksdetails"),
        branchesdetailsdiv = $("#branchesdetails")

    bankbranchcheckboxfield.on("click", () => {
        const status = bankbranchcheckboxfield.prop("checked")
        banknotifications.html("")
        if (status) {
            branchesdetailsdiv.hide()
            banksdetailsdiv.show()
        } else {
            branchesdetailsdiv.show()
            banksdetailsdiv.hide()
        }
    })

    const addnewbankbutton = $("#addnewbank"),
        bankdetailsmodal = $("#bankdetailsmodal")

    addnewbankbutton.on("click", () => {
        bankdetailsmodal.modal("show")
    })

    const bankbranchdetailsmodal = $("#bankbranchdetailsmodal"),
        addnewbankbranchbutton = $("#addnewbankbranch")

    addnewbankbranchbutton.on("click", () => {
        bankdetailsnotifications.html("")
        bankbranchdetailsmodal.modal("show")
    })

    const bankidfield = $("#bankid"),
        bankcodefield = $("#bankcode"),
        banknamefield = $("#bankname"),
        bankdetailsnotifications = $("#bankdetailsnotifications"),
        savebankbutton = $("#savebank"),
        bankstable = $("#bankstable"),
        clearbankdetailsbutton = $("#clearbankfields")

    savebankbutton.on("click", () => {
        const bankid = bankidfield.val(),
            bankcode = bankcodefield.val(),
            bankname = banknamefield.val()

        let errors = ""

        if (bankcode == "") {
            errors = "Please provide bank code"
            bankcodefield.focus()
        } else if (bankname == "") {
            errors = "Please provide bank name"
            banknamefield.focus()
        }

        if (errors == "") {
            bankdetailsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.post(
                "../controllers/bankoperations.php",
                {
                    savebank: true,
                    bankid,
                    bankcode,
                    bankname
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            bankdetailsnotifications.html(showAlert("success", `The bank has been saved successfully`))
                            // clear form
                            clearbankform()
                            // refresh list
                            getexistinganksastable()
                        } else if (data.status == "exists") {
                            if (data.message == "code exists") {
                                bankdetailsnotifications.html(showAlert("info", `The bank code already exists`))
                            } else if (data.message == "name exists") {
                                bankdetailsnotifications.html(showAlert("info", `The bank name already in use`))
                            }
                        }
                    } else {
                        bankdetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            bankdetailsnotifications.html(showAlert("info", errors))
        }
    })

    function clearbankform() {
        bankidfield.val("0")
        banknamefield.val("")
        bankcodefield.val("")
        bankcodefield.focus()
    }

    function getexistinganksastable() {
        $.getJSON(
            "../controllers/bankoperations.php",
            {
                getbanks: true
            },
            (data) => {
                let results = ""
                data.forEach((bank, i) => {
                    results += `<tr data-id='${bank.bankid}'>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${bank.bankcode}</td>`
                    results += `<td>${bank.bankname}</td>`
                    results += `<td>${$.number(bank.branches)}</td>`
                    results += `<td>${formatDate(bank.dateadded)}</td>`
                    results += `<td>${bank.addedbyname}</td>`
                    // edit and delete buttons
                    results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results += `<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                makedatatable(bankstable,results,15)
            }
        )
    }

    // edit bank name
    bankstable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            bankid = parent.attr("data-id")
        // get bank details and display the modal
        $.getJSON(
            "../controllers/bankoperations.php",
            {
                getbankdetails: true,
                bankid
            },
            (data) => {
                data = data[0]
                // populate fields
                bankidfield.val(data.bankid),
                    bankcodefield.val(data.bankcode),
                    banknamefield.val(data.bankname)
                banknotifications.html("")
                // show modal
                bankdetailsmodal.modal("show")
            }
        )
    })

    // delete bank name
    bankstable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            bankid = parent.attr("data-id"),
            bankname = parent.find("td").eq(2).text()
        // confirm with boot box
        bootbox.dialog({
            title: "Delete Bank",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete Bank <span class='font-weight-bold'>${bankname}</span> from the system.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        //console.log(parent)
                        banknotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
                        $.post(
                            "../controllers/bankoperations.php",
                            {
                                deletebank: true,
                                bankid
                            },
                            (data) => {
                                data = data.trim()
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        banknotifications.html(showAlert("success", `Bank name <strong>${bankname}</strong> deleted successfully.`))
                                        getexistinganksastable()
                                    }
                                }
                                else {
                                    banknotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    clearbankdetailsbutton.on("click", () => {
        bootbox.dialog({
            title: "Clear Bank Details",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Clear form fields for new entry.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Clear",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        clearbankform()
                    }
                }
            }
        })
    })

    const branchbankfield = $("#bankbranch"),
        branchidfield = $("#branchid"),
        branchcodefield = $("#branchcode"),
        branchnamefield = $("#branchname"),
        savebankbranchbutton = $("#savebankbranch"),
        clearbankbranchdetailsbutton = $("#clearbankbranch"),
        branchestable = $("#branchestable"),
        branchnotificationdetails = $("#branchnotificationdetails")

    getbanks(branchbankfield, 'choose')

    // save bank branch
    savebankbranchbutton.on("click", () => {
        const branchid = branchidfield.val(),
            bankid = branchbankfield.val(),
            branchcode = sanitizestring(branchcodefield.val()),
            branchname = sanitizestring(branchnamefield.val())
        let errors = ""
        // check blank fields
        if (bankid == "") {
            errors = "Please select Bank for which the branch belongs first"
            branchbankfield.focus()
        } else if (branchcode == "") {
            errors = "Please provide branch code"
            branchcodefield.focus()
        } else if (branchname == "") {
            errors = "Please provide branch name"
            branchnamefield.focus()
        }

        if (errors == "") {
            branchnotificationdetails.html(showAlert("processing", "Processing. Please wait ..."))
            $.post(
                "../controllers/bankoperations.php",
                {
                    savebranch: true,
                    branchid,
                    bankid,
                    branchcode,
                    branchname
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            branchnotificationdetails.html(showAlert("success", `Bank branch was saved successfully`))
                            // Clear fields
                            clearbranchfields()
                            // refresh list
                            getbankbranchesastable()
                        } else if (data.status == "exists") {
                            if (data.message == "code exists") {
                                branchnotificationdetails.html(showAlert("info", `Branch code already in use`))
                            } else if (data.message == "name exists") {
                                branchnotificationdetails.html(showAlert("info", `Branch name already in use`))
                            }
                        }
                    } else {
                        branchnotificationdetails.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            branchnotificationdetails.html(showAlert("info", errors))
        }
    })

    function clearbranchfields() {
        branchidfield.val("0")
        branchbankfield.val("")
        branchcodefield.val("")
        branchnamefield.val("")
        branchcodefield.focus()
    }

    function getbankbranchesastable(bankid = 0) {
        $.getJSON(
            "../controllers/bankoperations.php",
            {
                getbranches: true,
                bankid
            },
            (data) => {
                let results = ""
                data.forEach((branch, i) => {
                    results += `<tr data-id='${branch.branchid}'>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${branch.bankname}</td>`
                    results += `<td>${branch.branchcode}</td>`
                    results += `<td>${branch.branchname}</td>`
                    results += `<td>${formatDate(branch.dateadded)}</td>`
                    results += `<td>${branch.addedbyname}</td>`
                    // Add edit and delete buttons
                    results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results += `<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                makedatatable(branchestable,results,15)
            }
        )
    }

    // Edit existing branch
    branchestable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            branchid = parent.attr("data-id")

        branchnotificationdetails.html("")
        // get branch details
        $.getJSON(
            "../controllers/bankoperations.php",
            {
                getbranchdetails: true,
                branchid
            },
            (data) => {
                data = data[0]
                branchidfield.val(data.branchid)
                branchbankfield.val(data.bankid)
                branchcodefield.val(data.branchcode)
                branchnamefield.val(data.branchname)
                // show modal
                banknotifications.html("")
                bankbranchdetailsmodal.modal("show")
            }
        )
    })

    // delete bank branch
    branchestable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            branchid = parent.attr("data-id"),
            branchname = parent.find("td").eq(3).text()
        // confirm with bootbox
        bootbox.dialog({
            title: "Delete Bank Branch",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete Branch <strong>${branchname}</strong> from the system.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        banknotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
                        $.post(
                            "../controllers/bankoperations.php",
                            {
                                deletebranch: true,
                                branchid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        banknotifications.html(showAlert("success", `The branch <strong>${branchname}<strong> was deleted successfully`))
                                        // refresh the list
                                        getbankbranchesastable()
                                    }
                                } else {
                                    banknotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    clearbankbranchdetailsbutton.on("click", () => {
        bootbox.dialog({
            title: "Clear Branch Details",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Clear form fields for new entry.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Clear",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        clearbranchfields()
                    }
                }
            }
        })
    })

    // SMS settings
    const urlfield=$("#url"),
        apikeyfield=$("#apikey"),
        senderidfield=$("#senderid"),
        clientidfield=$("#clientid"),
        savemsmsconfigurationbutton=$("#savesmsconfiguration"),
        configurationerrordiv=$("#configurationerrordiv"),
        smsconfigform=$(".smsconfig"),
        testsmssenderrordiv=$("#testsmssenderrors"),
        sendtomobilenumberfield=$("#sendto"),
        messagefield=$("#message"),
        sendtestsmsbutton=$("#sendsms"),
        sidebarmenu=$("#settings")
        sidebarmenu.addClass("active")

    // get sms confirguration stored in the database
    getsmsconfiguration()

    function getsmsconfiguration(){
        $.getJSON(
            "../controllers/settingsoperations.php",
            {
                getsmsparameters:true
            },
            (data)=>{
                if(data.length>0){
                    apikeyfield.val(data[0].apikey)
                    senderidfield.val(data[0].senderid)
                    clientidfield.val(data[0].clientid)
                    urlfield.val(data[0].url)
                }else{
                    // show an alert that there is no configuration set
                    configurationerrordiv.html(showAlert('info','Sorry, SMS configuration not set',1))
                }
            }
        )
    }

    // save the sms configuration
    savemsmsconfigurationbutton.on("click",()=>{
        const senderid=senderidfield.val(),
            apikey=apikeyfield.val(),
            clientid=clientidfield.val(),
            url=urlfield.val()

        let errors=""
        // check for blank fields
        if(clientid==""){
            errors="Please provide client id"
            clientidfield.focus()
        }else if(senderid==""){
            errors="Please provide sender id"
            senderidfield.focus()
        }else if(apikey==""){
            errors="Please provide the API key"
            apikeyfield.focus()
        }else if(url==""){
            errors="Please enter URL"
            urlfield.focus()
        }

        if(errors==""){
            // save the sms configuration
            $.post(
                "../controllers/settingsoperations.php",
                {
                    savesmsparameter:true,
                    clientid:clientid,
                    senderid:senderid,
                    apikey:apikey,
                    url:url
                },
                (data)=>{
                    if(data=="success"){
                        configurationerrordiv.html(showAlert('success','SMS configuration saved successfully'))
                    }else{
                        configurationerrordiv.html(showAlert('danger',`Sorry, An error occured ${data}`))
                    }
                }
            )
        }else{
            //show the error message generated
            configurationerrordiv.html(showAlert('info',errors))
        }

    })

    smsconfigform.find("input").on("input",()=>{
        configurationerrordiv.html('')
    })

    // send test message
    sendtestsmsbutton.on("click",()=>{
        var mobilenumber=sendtomobilenumberfield.val(),
            message=messagefield.val(),
            errors=""
        // validate blank fields
        if(mobilenumber==""){
            errors="Please provide recipient mobile number"
            sendtomobilenumberfield.focus()
        }else if(message==""){
            errors="Please provide a message for the recipient"
            messagefield.val()
        }

        if(errors==""){
            // send the message
            testsmssenderrordiv.html(showAlert('processing','Sending SMS. Please wait ...',1))
            $.post(
                "../controllers/settingsoperations.php",
                {
                    sendsms:true,
                    mobilenumber:mobilenumber,
                    message:message
                },
                (data)=>{
                    // data=$.trim(data)
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if(data.status=="success"){
                            testsmssenderrordiv.html(showAlert('success','Test SMS sent successfully'))
                        }else if(data.status=="notsent"){
                            testsmssenderrordiv.html(showAlert('danger',`Message not sent: ${data}`))
                        }else{
                            testsmssenderrordiv.html(showAlert('danger',`Sorry an error occured: ${data}`))
                        }
                    }else{
                        testsmssenderrordiv.html(showAlert('danger',`Sorry an error occured ${data}`))
                    }
                }
            )   
        }else{
            // display error messages
            testsmssenderrordiv.html(showAlert('info',errors))
        }
    })

    // WhatsApp Configuration
    getwhatsappconfiguration()
    

    // save whatsapp configuration
    const phonenumberidcontrol=$("#phonenumberid")
    const accesstokencontrol=$("#accesstoken")
    const baseurlcontrol=$("#baseurl")

    const savewhatsappconfigurationbutton=$("#savewhatappconfiguration"),
        whatsappnotifications=$("#whatsappnotifications"),
        textareafield=$("textarea")

    textareafield.on("input",()=>{
        inputfield.trigger("input")
    })

    savewhatsappconfigurationbutton.on("click",()=>{
        const phonenumberid=phonenumberidcontrol.val().trim(),
            accesstoken=accesstokencontrol.val().trim(),
            baseurl=baseurlcontrol.val().trim()

        let errors=""

        if(phonenumberid==""){
            errors="Please provide phone number id"
            phonenumberidcontrol.focus()
        }else if(baseurl==""){
            errors="Please provide the Base URL"
            baseurlcontrol.focus()
        }else if(accesstoken==""){
            errors="Please provide access token"
            accesstokencontrol.focus()
        }

        if(errors==""){
            whatsappnotifications.html(showAlert("processing","Processing. Please wait ...",1))
            $.post(
                "../controllers/whatsapp.php",
                {
                    savewhatsppconfiguration:true,
                    phonenumberid,
                    baseurl,
                    accesstoken
                },
                (data)=>{
                    data=data.trim()
                    if(data=="success"){
                        whatsappnotifications.html(showAlert("success","WhatsApp configuration saved successfully"))
                    }else{
                        whatsappnotifications.html(showAlert("danger",`Sorry an error occured. ${data}`))
                    }
                }
            )
        }else{
            whatsappnotifications.html(showAlert("info",errors))
        }
    })

    // get whatsapp configuration
    function getwhatsappconfiguration(){
        $.getJSON(
            "../controllers/whatsapp.php",
            {
                getwhatsappconfiguration:true
            },
            (data)=>{
                data=data[0]
                phonenumberidcontrol.val(data.phonenumberid)
                accesstokencontrol.val(data.accesstoken)
                baseurlcontrol.val(data.baseurl)
            }
        )
    }

    const sendwhatsappmessagebutton=$("#sendwhatsappmessage"),
        recipientcontrol=$("#whatsapprecipient"),
        messagetypecontrol=$("#messagetype"),
        templateparamsfield=$("#templateparams")

    // send text message
    sendwhatsappmessagebutton.on("click",()=>{
        const recipient=sanitizestring(recipientcontrol.val()),
            templatename=messagetypecontrol.val(),
            category=messagetypecontrol.val()=="hello_world"?'Welcome':messagetypecontrol.find("option:selected").text()

        let errors=""

        if(recipient==""){
            errors="Please enter recipient's phone number"
            recipientcontrol.focus()
        }else if(messagetypecontrol.val()!=="hello_world" && sanitizestring(templateparamsfield.val())==""){
            errors="Please provide template variables separated by a comma"
            templateparamsfield.focus()
        }

        if(errors==""){
            whatsappnotifications.html(showAlert("processing","Processing. Please wait ...",1))
            const params=JSON.stringify(templateparamsfield.val().split(","))
            $.post(
                "../controllers/whatsapp.php",
                {
                    sendtemplate:true,
                    number:recipient,
                    templatename,
                    category,
                    params
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                    }
                    if(data.status=="success"){
                        whatsappnotifications.html(showAlert("success","The message was sent successfully"))
                    }else if(data.status=="failed"){
                        whatsappnotifications.html(showAlert("info",`Message not sent: ${data.message}`))
                    }else{
                        whatsappnotifications.html(showAlert("danger",`Sorry an error occured. ${data}`))
                    }
                    
                }
            )
        }else{
            whatsappnotifications.html(showAlert("info",errors))
        }
    })

    // save leave approvalflow

    // add approval hierarchy details to the table
    leaveapprovaladdflowhierrachybutton.on("click", () => {
        const flowname = sanitizestring(leaveapprovalflownamefield.val()),
            approvallevel = leavepprovallevelfield.val(),
            levelname = leavepprovallevelfield.find("option:selected").text(),
            hierarchy = leaveapprovalhierarchyfield.val(),
            escalation = sanitizestring(leaveapprovallevelestalationfield.val()),
            colourcode = leaveapprovalcolourcodefield.val()

        let errors = ""
        // check for blank fields
        if (flowname == "") {
            errors = "Please select flow name"
            leaveapprovalflownamefield.focus()
        } if (approvallevel == "") {
            errors = "Please approval level"
            leavepprovallevelfield.focus()
        } else if (hierarchy == "") {
            errors = "Please select approval hierrachy"
            leaveapprovalhierarchyfield.focus()
        } else if (Number(escalation) == 0) {
            errors = "Please select escalation duration"
            leaveapprovallevelestalationfield.focus()
        } else if (colourcode == "#000000") {
            errors = "Please select colour code for the approval level"
            leaveapprovalcolourcodefield.focus()
        }

        if (errors == "") {
            // add to the table
            const rows = leaveapprovalflowhierarchytable.find("tbody tr").length + 1
            let currentrow = `<tr><td>${rows}</td>`
            currentrow += `<td data-approvallevel=${approvallevel}>${levelname}</td>`
            currentrow += `<td class='text-center'>${hierarchy}</td>`
            currentrow += `<td class='text-right'>${escalation}</td>`
            currentrow += `<td class='text-center' data-colourcode=${colourcode}><span class='colourcode' style="display: inline-block; width: 20px; height: 20px; border-radius: 50%; background:${colourcode}"></span></td>`
            currentrow += `<td><a class='edit'><a href='#'><i class='fal fa-edit fa-fw fa-lg'></i></a></td>`
            currentrow += `<td><a class='delete'><a href='#'><i class='fal fa-trash-alt fa-fw fa-lg'></i></a></td></tr>`
            console.log(currentrow)
            $(currentrow).appendTo(leaveapprovalflowhierarchytable.find("tbody"))
            // clear fileds
            clearleaveapprovallevelfields()
        } else {
            leaveflowdetailsnotifications.html(showAlert("info", errors))
        }
    })

    function clearleaveapprovallevelfields() {
        leavepprovallevelfield.val(""),
            leaveapprovalhierarchyfield.val(""),
            leaveapprovallevelestalationfield.val("")
        leaveapprovalcolourcodefield.val("#000000")
    }

    leaveapprovalflowhierarchytable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            row = parent.find("td"),
            approvallevel = row.eq(1).text(),
            hierarchy = row.eq(2).text(),
            escalation = row.eq(3).text(),
            colourcode = row.eq(4).attr("data-colourcode")

        // push items to the fields
        leavepprovallevelfield.val(approvallevel),
            leaveapprovalhierarchyfield.val(hierarchy),
            leaveapprovallevelestalationfield.val(escalation)
        leaveapprovalcolourcodefield.val(colourcode)
        // re-number fields
        renumbertablerows(leaveapprovalflowhierarchytable)
    })

    leaveapprovalflowhierarchytable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            levelname = parent.find("td").eq(1).text()
        // confirm with bootbox 
        bootbox.dialog({
            title: "Delete Approval Level",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Remove approval level <span class='font-weight-bold'>${levelname}</span> from the list.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        parent.remove()
                        leaveflowdetailsnotifications.html(showAlert("success", `Approval level <strong>${levelname}</strong> removed successfully.`))
                    }
                }
            }
        })
    })

    saveleaveapprovalflowbutton.on("click", () => {
        const flowid = leaveapprovalflowidfield.val(),
            flowname = sanitizestring(leaveapprovalflownamefield.val())
        let approvallevels = []

        leaveapprovalflowhierarchytable.find("tbody tr").each(function () {
            const row = $(this).find("td"),
                approvallevel = row.eq(1).attr("data-approvallevel"),
                hierarchy = row.eq(2).text(),
                escalation = row.eq(3).text(),
                colourcode = row.eq(4).attr("data-colourcode")
            approvallevels.push({ "approvallevel": approvallevel, "hierarchy": hierarchy, "esacalation": escalation, "colourcode": colourcode })
        })

        let errors = ""
        // check blank fields
        if (flowname == "") {
            errors = "Please provide flow name"
            leaveapprovalflownamefield.focus()
        } else if (approvallevels.length == 0) {
            errors = "Please provide at least one approval level"
        }

        if (errors == "") {
            approvallevels = JSON.stringify(approvallevels)
            leaveflowdetailsnotifications.html(showAlert("processing", "Processing, please wait ..."))
            $.post(
                "../controllers/leaveoperations.php",
                {
                    saveleaveapprovalflow: true,
                    flowid,
                    flowname,
                    approvallevels
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            leaveflowdetailsnotifications.html(showAlert("success", `The leave approval flow saved successfully`))
                            // reefresh list 
                            getleaveapprovalflowsastable()
                        } else if (data.status == "exists") {
                            leaveflowdetailsnotifications.html(showAlert("info", `Leave approval flow already exists`))
                        }
                    } else {
                        leaveflowdetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            leaveflowdetailsnotifications.html(showAlert("info", errors))
        }
    })

    // get leave approval flows
    function getleaveapprovalflowsastable() {
        $.getJSON(
            "../controllers/leaveoperations.php",
            {
                getleaveapprovalflows: true
            },
            (data) => {
                let results = ""
                data.forEach((flow, i) => {
                    results += `<tr data-id='${flow.flowid}'><td>${Number(i + 1)}</td>`
                    results += `<td>${flow.flowname}</td>`
                    results += `<td>${flow.approvallevels}</td>`
                    results += `<td>${formatDate(flow.dateadded)}</td>`
                    results += `<td>${flow.addedbyname}</td>`
                    results += `<td><a href='#' class='edit'><i class='fal fa-edit fa-fw fa-lg'></i></a></td>`
                    results += `<td><a href='#' class='delete'><i class='fal fa-trash-alt fa-fw fa-lg text-danger'></i></a></td></tr>`
                })
                makedatatable(leaveapprovalflowstable,results)
            }
        )
    }

    // get existing leave approval flows
    getleaveapprovalflowsastable()

    // edit approval flow
    leaveapprovalflowstable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            flowid = parent.attr("data-id")
        // Show modal
        approvalflowdetailsmodal.modal("show")
        // clear any notifications if any
        leaveflowdetailsnotifications.html("")
        leaveapprovalnotifications.html("")
        // get leave approval flow details
        $.getJSON(
            "../controllers/leaveoperations.php",
            {
                getleaveapprovalflowdetails: true,
                flowid
            },
            (data) => {
                data = data[0]
                // populate fields
                leaveapprovalflowidfield.val(data.flowid)
                leaveapprovalflownamefield.val(data.flowname)

                // get leave approval flow details
                $.getJSON(
                    "../controllers/leaveoperations.php",
                    {
                        getleaveapprovallevels: true,
                        flowid
                    },
                    (data) => {
                        let results = ""
                        data.forEach((approval, i) => {
                            const levelname = approval.approvallevel == "supervisor" ? "Supervisor" : approval.approvallevel == "hrmanager" ? "HR Mamager" : "Top Management"
                            results += `<tr><td>${i + 1}</td>`
                            results += `<td data-approvallevel=${approval.approvallevel}>${levelname}</td>`
                            results += `<td>${approval.hierarchy}</td>`
                            results += `<td>${approval.escalationduration}</td>`
                            results += `<td class='text-center' data-colourcode=${approval.colourcode}><span class='colourcode' style="display: inline-block; width: 20px; height: 20px; border-radius: 50%; background:${approval.colourcode}"></span></td>`
                            results += `<td> <a class='edit'><a href='#'><i class='fal fa-edit fa-fw fa-lg'></a></a></td>`
                            results += `<td> <a class='delete'><a href='#'><i class='fal fa-trash-alt fa-fw fa-lg'></a></a></td></tr>`
                            leaveapprovalflowhierarchytable.find("tbody").html(results)
                        })
                    }
                )
            }
        )
    })

    // delete approval flow
    leaveapprovalflowstable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            flowid = parent.attr("data-id"),
            flowname = parent.find("td").eq(1).text()

        leaveapprovalnotifications.html("")
        // confirm with bootbox
        bootbox.dialog({
            title: "Delete Approval Flow",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete Leave Approval Flow <span class='font-weight-bold'>${flowname}</span> from the system.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        //console.log(parent)
                        leaveapprovalnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
                        $.post(
                            "../controllers/leaveoperations.php",
                            {
                                deleteleveapprovalflow: true,
                                flowid
                            },
                            (data) => {
                                data = data.trim()
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        leaveapprovalnotifications.html(showAlert("success", `Leave approval flow <strong>${flowname}</strong> deleted successfully.`))
                                        getleaveapprovalflowsastable()
                                    }
                                }
                                else {
                                    leaveapprovalnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    // get approval flows
    getleaveapprovalflows(leavetypeapprovalflowfield, 'choose')

    // get leave allowance items
    getpayrollitems(leavetypeallowanceitemid, 'payment', 'choose')

    // get existing leave types
    getleavetypesastable()

    // add allocation to list
    leavetypeaddallocationbutton.on("click", () => {
        const daysallocated = Number(leavetypedaysallocationsfield.val()),
            percentagepayable = parseFloat(leavetypeperecentagepayablefield.val())
        let errors = ""

        if (daysallocated == 0) {
            errors = "Please enter correct days allocation"
            leavetypedaysallocationsfield.focus()
        } else if (percentagepayable == 0 || percentagepayable > 100) {
            errors = "Please enter correct percentage payable"
            leavetypeperecentagepayablefield.focus()
        }

        if (errors == "") {
            const rows = leavetypeallocationtable.find("tbody tr").length + 1
            let currentrow = `<tr><td>${rows}</td>`
            currentrow += `<td>${daysallocated}</td>`
            currentrow += `<td>${percentagepayable}</td>`
            currentrow += `<td><a href='#' class='edit'><i class='fal fa-edit fa-fw fa-lg'></i></a></td>`
            currentrow += `<td><a href='#' class='edit'><i class='fal fa-trash-alt fa-fw fa-lg'></i></a></td></tr>`
            $(currentrow).appendTo(leavetypeallocationtable.find("tbody"))
            // clear fields
            leavetypedaysallocationsfield.val("")
            leavetypeperecentagepayablefield.val("")
        } else {
            leavetypedetailsnotification.html(showAlert("info", errors))
        }
    })

    // edit the leave allocation
    leavetypeallocationtable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            row = parent.find("td"),
            allocation = row.eq(1).text().replace(",", ""),
            percentagepayable = row.eq(2).text()

        leavetypedaysallocationsfield.val(allocation)
        leavetypeperecentagepayablefield.val(percentagepayable)

        parent.remove()
        renumbertablerows(leavetypeallocationtable)
    })

    // delete the leave allocation
    leavetypeallocationtable.on("click", ".delete", function () {
        const parent = $(this).closest("tr")
        // confirm with bootbox
        bootbox.dialog({
            title: "Remove Allocation",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Remove leave allocation form the list.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Clear",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        parent.remove()
                    }
                }
            }
        })
    })

    // save leave type
    saveleavetypebutton.on("click", () => {
        const leaveid = leavetypeidfield.val(),
            leavename = sanitizestring(levaetypenamefield.val()),
            probationperiod = Number(leavetypeprobationperiodfield.val()),
            allocationdays = Number(leavetypeannualallocationfield.val()),
            halfdayapplication = leavetypehalfdayapplicationfield.val(),
            skipholidays = leavetypeexcludepublicholidaysfield.val(),
            applywithoutallocation = leavetypeapplywithoutallocationfield.val(),
            requiresattachment = levetyperequiresattachmentfield.val(),
            approvalflow = leavetypeapprovalflowfield.val(),
            allowancepayable = leavetypeallowancepayablefield.val(),
            canbesplit = leavetypecanbesplitfield.val()

        let allocationsallowable = [], errors = "", allowancepayrollitemid = leavetypeallowanceitemid.val()

        // check for blank fields
        if (leavename == "") {
            errors = "Please provide leave name"
            levaetypenamefield.focus()
        } else if (probationperiod < 1) {
            errors = "Please provide porbation period for leave type"
            leavetypeprobationperiodfield.focus()
        } else if (allocationdays < 1) {
            errors = "Please select annual allocation duration"
            leavetypeannualallocationfield.focus()
        } else if (canbesplit == "") {
            errors = "Please select splittable status for leave type"
            leavetypecanbesplitfield.focus()
        } else if (halfdayapplication == "") {
            errors = "Please select half day application status"
            leavetypehalfdayapplicationfield.focus()
        } else if (skipholidays == "") {
            errors = "Please select exclusion of public holidays on leave type"
            leavetypeexcludepublicholidaysfield.focus()
        } else if (applywithoutallocation == "") {
            errors = "Please select application without allocation status"
            leavetypeapplywithoutallocationfield.focus()
        } else if (requiresattachment == "") {
            errors = "Please select application attachment requirement status"
            levetyperequiresattachmentfield.focus()
        } else if (approvalflow == "") {
            errors = "Please select leave type approva work-flow"
            leavetypeapprovalflowfield.focus()
        } else if (allowancepayable == "") {
            errors = "Please select leave allowance payable status"
            leavetypeallowancepayablefield.focus()
        } else if (allowancepayable == 1 && allowancepayrollitemid == "") {
            errors = "Please select payroll item associated with the leave allowance"
            leavetypeallowanceitemid.focus()
        } else if (allowancepayable == 0) {
            allowancepayrollitemid = 0
        }

        leavetypeallocationtable.find("tbody tr").each(function () {
            const row = $(this).find("td"),
                allocation = row.eq(1).text(),
                percentage = row.eq(2).text()
            allocationsallowable.push({ "allocation": allocation, "percentagepayable": percentage })
        })

        if (errors == "") {
            leavetypedetailsnotification.html(showAlert("processing", "Processing. PLease wait ...", 1))
            allocationsallowable = JSON.stringify(allocationsallowable)
            $.post(
                "../controllers/leaveoperations.php",
                {
                    saveleavetype: true,
                    leaveid,
                    leavename,
                    probationperiod,
                    allocationdays,
                    canbesplit,
                    halfdayapplication,
                    skipholidays,
                    applywithoutallocation,
                    requiresattachment,
                    approvalflow,
                    allowancepayable,
                    allowancepayrollitemid,
                    allocationsallowable
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            leavetypedetailsnotification.html(showAlert("success", `Leave type saved succesfully into the system`))
                            // refresh list
                            getleavetypesastable()
                            // clear fields
                            clearleavetypefields()
                        } else if (data.status == "exists") {
                            leavetypedetailsnotification.html(showAlert("info", `Sorry leave type already exists in the system`))
                        }
                    } else {
                        leavetypedetailsnotification.html(showAlert("danger", data))
                    }
                }
            )
        } else {
            leavetypedetailsnotification.html(showAlert("info", errors))
        }
    })

    // edit leave type
    leavetypestable.on("click", ".edit", function () {
        const leaveid = $(this).closest("tr").attr("data-id")
        $.getJSON(
            "../controllers/leaveoperations.php",
            {
                getleavetypedetails: true,
                leaveid
            },
            (data) => {
                data = data[0]
                leavetypeidfield.val(data.leaveid),
                    levaetypenamefield.val(data.leavename)
                leavetypeprobationperiodfield.val(data.probationperiod)
                leavetypeannualallocationfield.val(data.allocationdays)
                leavetypehalfdayapplicationfield.val(data.halfdayapplication)
                leavetypeexcludepublicholidaysfield.val(data.skipsholidays)
                leavetypeapplywithoutallocationfield.val(data.applywithoutallocation)
                levetyperequiresattachmentfield.val(data.requiresattachment)
                leavetypeapprovalflowfield.val(data.approvalflow)
                leavetypeallowancepayablefield.val(data.allowancepayable)
                leavetypecanbesplitfield.val(data.canbesplit)
                leavetypeallowanceitemid.val(data.allowancepayrollitemid == "0" ? "" : data.allowancepayrollitemid)
                // show the modal
                leavetypedetailsnotification.html("")
                leavetypedetailsmodal.modal("show")
            }
        )
    })

    // delete leave type
    leavetypestable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            leaveid = parent.attr("data-id"),
            leavename = parent.find("td").eq(1).text()

        // confirm deletion with bootbox
        bootbox.dialog({
            title: "Delete Leave Type",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete leave type <strong>${leavename}</strong> from the system.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Clear",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        $.post(
                            "../controllers/leaveoperations.php",
                            {
                                deleteleavetype: true,
                                leaveid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        leavetypenotifications.html(showAlert('success', `Leave type <strong>${leavename}</strong> was deleted successfully`))
                                        // refresh the list
                                        getleavetypesastable()
                                    }
                                } else {
                                    leavetypenotifications.html(showAlert("danger", data))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    function clearleavetypefields() {
        leavetypeidfield.val("0"),
        levaetypenamefield.val("")
        leavetypeprobationperiodfield.val("")
        leavetypeannualallocationfield.val("")
        leavetypehalfdayapplicationfield.val("")
        leavetypeexcludepublicholidaysfield.val("")
        leavetypeapplywithoutallocationfield.val("")
        levetyperequiresattachmentfield.val("")
        leavetypeapprovalflowfield.val("")
        leavetypeallowancepayablefield.val("")
        leavetypeallowanceitemid.val("")
        leavetypecanbesplitfield.val()
        leavetypeallocationtable.find("tbody tr").remove()
    }

    function getleavetypesastable() {
        $.getJSON(
            "../controllers/leaveoperations.php",
            {
                getleavetypes: true
            },
            (data) => {
                let results = ""
                data.forEach((leave, i) => {
                    const skipholidays = leave.skipsholidays == 1 ? `<i class='fas fa-check-circle fa-lg fa-fw text-success'></i>` : `<i class='fas fa-times-circle fa-lg fa-fw text-danger'></i>`,
                        halfdayapplication = leave.halfdayapplication == 1 ? `<i class='fas fa-check-circle fa-lg fa-fw text-success'></i>` : `<i class='fas fa-times-circle fa-lg fa-fw text-danger'></i>`,
                        canbesplit = leave.canbesplit == 1 ? `<i class='fas fa-check-circle fa-lg fa-fw text-success'></i>` : `<i class='fas fa-times-circle fa-lg fa-fw text-danger'></i>`

                    results += `<tr data-id='${leave.leaveid}'>
                        <td>${Number(i + 1)}</td>
                        <td>${leave.leavename}</td>
                        <td>${leave.allocationdays}</td>
                        <td>${leave.probationperiod}</td>
                        <td>${skipholidays}</td>
                        <td>${halfdayapplication}</td>
                        <td>${canbesplit}</td>
                        <td><a href='#' class='edit'><i class='fal fa-edit fa-lg fa-fw'></i></a></td>
                        <td><a href='#' class='delete'><i class='fal fa-trash-alt text-danger fa-lg fa-fw'></i></a></td></tr>
                    `
                })
                makedatatable(leavetypestable,results)
            }
        )
    }

    const holidaydetailsmodal = $("#holidaydetails"),
        addnewholidaybutton = $("#addnewholiday"),
        holidaydetailsnotifications = $("#holidaydetailsnotifications"),
        holidayidfield = $("#holidayid"),
        holidaydatefield = $("#holidaydate"),
        holidaynamefield = $("#holidayname"),
        holidayrepeatsannuallyfield = $("#holidayrepeatsannually"),
        holidayskipweekendsfield = $("#holidayskipweekends"),
        savepublicholidaybutton = $("#savepublicholiday"),
        clearholidayfieldsbutton = $("#clearpublicholiday"),
        publicholidaystatusselectionfield = $("#publicholidaystatusselection"),
        publicholidaystable = $("#publicholidaystable"),
        holidaysnotifications = $("#holidaysnotifications")

    setDatePicker(holidaydatefield, false, true)

    addnewholidaybutton.on("click", () => {
        holidaydetailsnotifications.html("")
        holidaydetailsmodal.modal("show")
    })

    savepublicholidaybutton.on("click", () => {
        const holidayid = holidayidfield.val(),
            holidayname = sanitizestring(holidaynamefield.val()),
            holidaydate = sanitizestring(holidaydatefield.val()),
            repeatsannually = holidayrepeatsannuallyfield.val(),
            skipweekends = holidayskipweekendsfield.val()
        let errors = ""
        // check for blank fields
        if (holidayname == "") {
            errors = "Please provide holiday name"
            holidaynamefield.focus()
        } else if (holidaydate == "") {
            errors = "Please select holiday date first"
        } else if (repeatsannually == "") {
            errors = "Please select repeats annually status"
            holidayrepeatsannuallyfield.focus()
        } else if (skipweekends == "") {
            errors = "Please select skip weekends status"
            holidayskipweekendsfield.focus()
        }

        if (errors == "") {
            holidaydetailsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.post(
                "../controllers/settingsoperations.php",
                {
                    savepublicholiday: true,
                    holidayid,
                    holidayname,
                    holidaydate,
                    repeatsannually,
                    skipweekends
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            holidaydetailsnotifications.html(showAlert("success", `The holiday <strong>${holidayname}</strong> was saved successfully`))
                            clearholidaydetailsform()
                            holidaynamefield.focus()
                            // refresh holidays list
                            getpublicholidaysastable()
                        } else if (data.status == "exists") {
                            if (data.message == "holiday exists") {
                                holidaydetailsnotifications.html(showAlert("info", `The holiday <strong>${holidayname}</strong> already exists`))
                            } else if (data.message == "date exists") {
                                holidaydetailsnotifications.html(showAlert("info", `The date <strong>${holidaydate}</strong> has another holiday set`))
                            }
                        }
                    } else {
                        holidaydetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            holidaydetailsnotifications.html(showAlert("info", errors))
        }
    })

    function clearholidaydetailsform() {
        holidayidfield.val("0")
        holidaynamefield.val("")
        holidaydatefield.val("")
        holidayrepeatsannuallyfield.val("")
        holidayskipweekendsfield.val("")
    }

    function getpublicholidaysastable() {
        const status = publicholidaystatusselectionfield.prop("checked") ? "current" : "past"
        $.getJSON(
            "../controllers/settingsoperations.php",
            {
                getpublicholidays: true,
                status
            },
            (data) => {
                let results = ""
                const selected = `class='fas fa-check-circle fa-lg fa-fw text-success'`,
                    unselected = `class='fas fa-times-circle fa-lg fa-fw text-danger'`
                data.forEach((holiday, i) => {
                    repeatsannually = holiday.repeatsannually == 1 ? selected : unselected
                    skipweekends = holiday.skipweekends == 1 ? selected : unselected
                    results += `<tr data-id=${holiday.id}>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${holiday.holidayname}</td>`
                    results += `<td>${formatDate(holiday.date)}</td>`
                    results += `<td class="text-center"><i ${repeatsannually}></i></td>`
                    results += `<td class="text-center"><i ${skipweekends}></i></td>`
                    results += `<td>${formatDate(holiday.dateadded)}</td>`
                    results += `<td>${holiday.addedbyname}</td>`
                    results += `<td><a class="edit" href="#"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results += `<td><a class="delete" href="#"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                // console.log(results)
                makedatatable(publicholidaystable,results)
            }
        )
    }

    // listen to edit 
    publicholidaystable.on("click", ".edit", function () {
        const parent = $(this).closest("tr"),
            holidayid = parent.attr("data-id")
        // get holiday details
        $.getJSON(
            "../controllers/settingsoperations.php",
            {
                getpublicholidaydetails: true,
                holidayid
            },
            (data) => {
                data = data[0]
                holidayidfield.val(data.id)
                holidaynamefield.val(data.holidayname)
                holidaydatefield.val(formatDate(data.date))
                holidayrepeatsannuallyfield.val(data.repeatsannually)
                holidayskipweekendsfield.val(data.skipweekends)
                holidaydetailsnotifications.html("")
                holidaydetailsmodal.modal("show")
            }
        )
    })

    // listen to edit
    publicholidaystable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            holidayid = parent.attr("data-id"),
            holidayname = parent.find("td").eq(1).text()
        // confirm deletion with bootbox
        bootbox.dialog({
            title: "Delete holiday",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete <strong>${holidayname}</strong> from the system`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        $.post(
                            "../controllers/settingsoperations.php",
                            {
                                deletepublicholiday: true,
                                holidayid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    holidaysnotifications.html(showAlert("success", `The holiday <strong>${holidayname}</strong> was deleted successfully.`))
                                    // refresh the list
                                    getpublicholidaysastable()
                                } else {
                                    holidaysnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    // clear holiday details fields
    clearholidayfieldsbutton.on("click", () => {
        // confirm with bootbox
        bootbox.dialog({
            title: "Clear fields",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i>Clear <strong>ALL FIELDS</strong> for new entry`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Clear",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        clearholidaydetailsform()
                        holidaydetailsnotifications.html("")
                    }
                }
            }
        })
    })

    getpublicholidaysastable()

    const approvalflowdetailsmodal = $("#approvalflowdetailsmodal"),
    addnewapprovalflowbutton = $("#addnewleaveapprovalflow")

    addnewapprovalflowbutton.on("click", () => {
        approvalflowdetailsmodal.modal("show")
    })
    
})