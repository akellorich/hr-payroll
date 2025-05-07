$(document).ready(function(){
    const currentmenu=$("#employees")
    setactivemenu(currentmenu)
    getloggedinuser()

    const inputfield=$("imput"),
        selectfield=$("select")
    
    inputfield.on("input",function(){
        employeenotifications.html("")
        employeepayrollitemdetailsnotifications.html("")
        employeepayrollitemsnotifications.html("")
        leaveapprovalnotifications.html("")
        staffleavedetailsnotifications.html("")
        leaveprocessingnotifications.html("")
        employeeebeneficiarydetailsnotifications.html("")
        internalexperiencedetailsnotifications.html("")
        externalexperiencedetailsnotification.html("")
        coursedetailsnotifications.html("")
        displinarydetailsnotifications.html("")
        employeeattachmentnotificationdetails.html("")
        staffleavedetailsnotifications.html("")
    })

    selectfield.on("change",function(){
        inputfield.trigger("input")
    })

    const employeepayitemsmodal = $("#employeepayrollitemmodal"),
        addnewemployeepayrollitembutton = $("#addnewemployeepayrollitem")

    addnewemployeepayrollitembutton.on("click", () => {
        employeepayrollitemdetailsnotifications.html("")
        employeepayrollitemsnotifications.html("")
        employeepayitemsmodal.modal("show")
    })

    const dependantbeneficiaryselection = $("#dependantbeneficiaryselection"),
        dependantdetailsdiv = $("#dependantdetails"),
        beneficiarydetailsdiv = $("#beneficiariesdetails"),
        addemployeedependantbutton = $("#addnewdependant"),
        dependadntdetailsmodal = $("#dependantdetailsmodal"),
        adadnewbeneficiarybutton = $("#addnewbeneficiary"),
        beneficiarydetailsmodal = $("#beneficiarydetailsmodal")

    addemployeedependantbutton.on("click", () => {
        dependadntdetailsmodal.modal("show")
    })

    adadnewbeneficiarybutton.on("click", () => {
        beneficiarydetailsmodal.modal("show")
        const employeeid=employeeidfield.val()
        
        // remove any notifications
        employeeebeneficiarydetailsnotifications.html("")

        // get total percentage already distributed
        getemployeebeneficiariestotal( employeebeneficiarypercentageavailablefield,employeeid)
    })

    dependantbeneficiaryselection.on("click", () => {
        // console.log(dependantbeneficiaryselection.prop("checked"))
        if (dependantbeneficiaryselection.prop("checked")) {
            dependantdetailsdiv.show()
            beneficiarydetailsdiv.hide()
        } else {
            dependantdetailsdiv.hide()
            beneficiarydetailsdiv.show()
        }
    })

    const internalworkexperiencemodal = $("#internalworkexperiencemodal"),
        addnewinternalworkexperiencebutton = $("#addinternalexperience"),
        dependantexperienceselectioncheckbox = $("#dependantexperienceselection"),
        internalexperiencedetailsdiv = $("#internalexperiencedetails"),
        externalexperiencedeatilsdiv = $("#externalexperiencedetails")

    addnewinternalworkexperiencebutton.on("click", () => {
        internalworkexperiencemodal.modal("show")
        internalexperiencecurrentlyherefield.prop("checked",true)
        internalexperienceendatefield.prop("disabled",true)
        internalexperiencedetailsnotifications.html("")
        // clear all fields
        clearinternalexperienceform()
    })

    dependantexperienceselectioncheckbox.on("click", () => {
        // console.log(dependantexperienceselectioncheckbox.prop("checked"))
        if (dependantexperienceselectioncheckbox.prop("checked")) {
            internalexperiencedetailsdiv.show()
            externalexperiencedeatilsdiv.hide()
        } else {
            externalexperiencedeatilsdiv.show()
            internalexperiencedetailsdiv.hide()
        }
    })

    const addnewexternalexperiencebutton = $("#addnewexternalexperience"),
        externalexperiencedetailsmodal = $("#externalworkexperiencemodal"),
        addnewtrainingbutton = $("#addnewtraining"),
        trainingdetailsmodal = $("#trainingdetailsmodal"),
        leavedetailsmodal = $("#leavedetailsmodal"),
        addnewleavebutton = $("#addnewleave"),
        addnewstaffdocumentbutton = $("#addnewdocument"),
        documentdetaislmodal = $("#documentdetaislmodal")

    addnewexternalexperiencebutton.on("click", () => {
        externalexperiencedetailsmodal.modal("show")
    })

    addnewtrainingbutton.on("click", () => {
        trainingdetailsmodal.modal("show")
    })
    // load all employees leave applications
    getemployeesleavesapplications()

    addnewleavebutton.on("click", () => {
        leavedetailsmodal.modal("show")
        // load staff supervisors and colleagues
        const employeeid = employeeidfield.val()
        getemployeedepartmentcolleagues(staffleaverelieverfield, employeeid, 'choose')
        getemployeesupervisors(staffleavesupervisorfield, employeeid, 'choose')
    })

    addnewstaffdocumentbutton.on("click", () => {
        documentdetaislmodal.modal("show")
        clearemployeedocumentattachmentform()
        employeeattachmentnotificationdetails.html("")
    })

    // save employee details
    const employeejobgroupfield = $("#staffjobgroup"),
        employeenotchfield = $("#staffnotch"),
        employeebankfield = $("#employeebank"),
        employeebankbranchfield = $("#employeebankbranch"),
        employeesalutationfield = $("#salutation"),
        employeeiddocumentfield = $("#iddocument"),
        employeereligionfield = $("#religion"),
        employeeemploymenttermfield = $("#employmentterm"),
        employeecategoryfield = $("#employeecategory"),
        employeedepartmentfield = $("#staffdepartment"),
        employeedobfield = $("#dateofbirth"),
        employeeemploymentdatefield = $("#employmentdate"),
        employeeseparationdatefield = $("#separationdate"),
        employeeidfield = $("#employeeid"),
        employeefirstnamefield = $("#firstname"),
        employeemiddlenamefield = $("#middlename"),
        employeelastnamefield = $("#lastname"),
        employeeiddocreferencenofield = $("#iddocnumber"),
        employeeiddocexpiryfield = $("#iddocexpirydate"),
        employeegenderfield = $("#gender"),
        employeehasdisabilityfield = $("#hasdisability"),
        employeedisabilitytypefield = $("#disabilitytype"),
        employeedisabilitydescriptionfield = $("#disabilitydescription"),
        employeedisabilitycertificatenofield = $("#disabilitycertificateno"),
        employeepinnofield = $("#staffpinno"),
        employeenssfnofield = $("#staffnssfno"),
        employeenhiffield = $("#staffnhifno"),
        employeephysicaladdressfield = $("#physicaladdress"),
        employeepostaladdressfield = $("#postaladdress"),
        employeetownfield = $("#town"),
        employeepostalcodefield = $("#postalcode"),
        employeemobilefield = $("#mobilenumber"),
        employeealternatemobilefield = $("#alternativemobilenumber"),
        employeeemailaddressfield = $("#emailaddress"),
        employeealternateemailaddressfield = $("#alternativeemailaddress"),
        employeegeneratestaffnofield = $("#generatestaffno"),
        employeestaffnofield = $("#staffno"),
        employeeonpayrollfield = $("#onpayroll"),
        employeefixedpayefield = $("#onfixedpaye"),
        employeestatusfield = $("#employmentstatus"),
        employeeseparationreasonfield = $("#separationreason"),
        employeeaccountnumberfield = $("#employeeaccountnumber"),
        saveemployeebutton = $("#saveemployee"),
        employeenotifications = $("#employeenotifications"),
        iddocumentname = $(".iddocname"),
        positionfield = $("#employeeposition"),
        employeeunitfield=$("#staffunit"),
        employeeshiftfield=$("#staffshift"),
        employeesectionfield=$("#staffsection")

    employeeiddocexpiryfield.prop("disabled", true)
    employeehasdisabilityfield.val(0)
    employeedisabilitycertificatenofield.prop("disabled", true)
    employeeaccountnumberfield
    employeestatusfield.val("active")

    setDatePicker(employeedobfield)
    setDatePicker(employeeemploymentdatefield)
    setDatePicker(employeeseparationdatefield)
    setDatePicker(employeeiddocexpiryfield, false, true)

    getjobgroups(employeejobgroupfield, 'choose')
    getjobnotches(employeenotchfield, 'choose')
    getbanks(employeebankfield, 'choose')
    getsalutations(employeesalutationfield, 'choose')
    getidocuments(employeeiddocumentfield, 'choose')
    getreligions(employeereligionfield, 'choose')
    getemploymentterms(employeeemploymenttermfield, 'choose')
    getjobcategories(employeecategoryfield, 'choose')
    getdepartments(employeedepartmentfield, 'choose')
    getjobpositions(positionfield, 'choose')
    getunits(employeeunitfield)
    getshifts(employeeshiftfield)

    employeedepartmentfield.on("change",function(){
        const departmentid=$(this).val()
        if(departmentid==""){
            employeesectionfield.html(`<option value=''>&lt;Choose&gt;</option>`)
        }else{
            getsections(employeesectionfield,departmentid,'choose')
        }
    })

    employeebankfield.on("change", () => {
        const bankid = employeebankfield.val()
        if (bankid !== "") {
            getbankbranches(employeebankbranchfield, bankid, 'choose')
        } else {
            employeebankbranchfield.html("<option>&lt;Choose&gt;</option>")
        }
    })

    employeehasdisabilityfield.on("change", () => {
        const status = employeehasdisabilityfield.val() == 1 ? false : true
        employeedisabilitytypefield.prop("disabled", status)
        employeedisabilitydescriptionfield.prop("disabled", status)
        employeedisabilitycertificatenofield.prop("disabled", status)
    })

     // listen to change event of id document
     employeeiddocumentfield.on("change", () => {
        const documentname = employeeiddocumentfield.val() != "" ? employeeiddocumentfield.find("option:selected").text() : "ID Document",
            expires = employeeiddocumentfield.val() != "" ? employeeiddocumentfield.find("option:selected").attr("data-expires") : 0
        iddocumentname.html(documentname)
        if (expires == 1) {
            employeeiddocexpiryfield.prop("disabled", false)
        } else {
            employeeiddocexpiryfield.prop("disabled", true)
        }
        employeeiddocreferencenofield.focus()
    })

    // listen to employment status change event
    employeestatusfield.on("change", () => {
        const status = employeestatusfield.val()
        if (status == "withdrawn") {
            employeeseparationdatefield.prop("disabled", false)
            employeeseparationreasonfield.prop("disabled", false)
            employeeseparationdatefield.focus()
        } else {
            employeeseparationdatefield.prop("disabled", true)
            employeeseparationreasonfield.prop("disabled", true)
        }
    })

    // listen to generate staff no field
    employeegeneratestaffnofield.on("change", () => {
        // console.log(employeegeneratestaffnofield.prop("checked"))
        if (employeegeneratestaffnofield.prop("checked")) {
            employeestaffnofield.prop("disabled", true)
        } else {
            employeestaffnofield.prop("disabled", false)
            employeestaffnofield.focus()
        }
    })

    saveemployeebutton.on("click", () => {
        const employeeid = employeeidfield.val(),
            staffno = sanitizestring(employeestaffnofield.val()),
            generatestaffno = employeegeneratestaffnofield.prop("checked") ? 1 : 0,
            firstname = sanitizestring(employeefirstnamefield.val()),
            middlename = sanitizestring(employeemiddlenamefield.val()),
            lastname = sanitizestring(employeelastnamefield.val()),
            gender = employeegenderfield.val(),
            iddocumentid = employeeiddocumentfield.val(),
            iddocreferenceno = sanitizestring(employeeiddocreferencenofield.val()),
            iddocexpirydate = sanitizestring(employeeiddocexpiryfield.val()),
            categoryid = employeecategoryfield.val(),
            termid = employeeemploymenttermfield.val(),
            religionid = employeereligionfield.val(),
            salutationid = employeesalutationfield.val(),
            departmentid = employeedepartmentfield.val(),
            dateofbirth = sanitizestring(employeedobfield.val()),
            jobgroupid = employeejobgroupfield.val(),
            notchid = employeenotchfield.val(),
            employmentdate = sanitizestring(employeeemploymentdatefield.val()),
            separationdate = sanitizestring(employeeseparationdatefield.val()),
            separationreason = employeeseparationreasonfield.val(),
            bankbranchid = employeebankbranchfield.val(),
            accountnumber = sanitizestring(employeeaccountnumberfield.val()),
            onpayroll = employeeonpayrollfield.val(),
            fixedpaye = employeefixedpayefield.val(),
            status = employeestatusfield.val(),
            disabled = employeehasdisabilityfield.val(),
            disabilitytype = employeedisabilitytypefield.val(),
            disabilitydescription = sanitizestring(employeedisabilitydescriptionfield.val()),
            disabilitycertificateno = sanitizestring(employeedisabilitycertificatenofield.val()),
            pinno = sanitizestring(employeepinnofield.val()),
            nssfno = sanitizestring(employeenssfnofield.val()),
            nhifno = sanitizestring(employeenhiffield.val()),
            physicaladdress = sanitizestring(employeephysicaladdressfield.val()),
            postaladdress = sanitizestring(employeepostaladdressfield.val()),
            town = sanitizestring(employeetownfield.val()),
            postalcode = sanitizestring(employeepostalcodefield.val()),
            mobile = sanitizestring(employeemobilefield.val()),
            alternativemobile = sanitizestring(employeealternatemobilefield.val()),
            emailaddress = sanitizestring(employeeemailaddressfield.val()),
            alternativeemailaddress = sanitizestring(employeealternateemailaddressfield.val()),
            documentname = employeeiddocumentfield.find("option:selected").text(),
            positionid = positionfield.val(),
            unitid=employeeunitfield.val(),
            shiftid=employeeshiftfield.val(),
            sectionid=employeesectionfield.val()
        let errors = ""
        // check for blank fields

        if (salutationid == "") {
            errors = "Please select employee's <strong>salutation</strong>"
            employeesalutationfield.focus()
        }else if (iddocumentid == "") {
            errors = "Please select employee's <strong>identification document</strong>"
            employeeiddocumentfield.focus()
        }else if (iddocreferenceno == "") {
            errors = `Please provide employee's <strong>${documentname}</strong> number.`
            employeeiddocreferencenofield.focus()
        }else if (employeeiddocumentfield.find("option:selected").attr("data-expires") == 1 && iddocexpirydate == "") {
            errors = `Please provide employee's <strong>${documentname}</strong> expiry date`
        }else if (firstname == "") {
            errors = "Please provide employee's <strong>first name</strong>"
            employeefirstnamefield.focus()
        }else if (middlename == "") {
            errors = "Please provide employee's <strong>middle name</strong>"
            employeemiddlenamefield.focus()
        }else if (religionid == "") {
            errors = "Please select employee's <strong>religion</strong>"
            employeereligionfield.focus()
        }else if (gender == "") {
            errors = "Please select employee's <strong>gender</strong>"
            employeegenderfield.focus()
        }else if (dateofbirth == "") {
            errors = "Please select employee's <strong>birth date</strong>"
            employeedobfield.focus()
        }else if (disabled == "") {
            errors = "Please select employee's <strong>disability status</strong>"
            employeehasdisabilityfield.focus()
        }else if (disabled == 1 && disabilitytype == "") {
            errors = "Please select employee <strong>disability type</strong>"
            employeedisabilitytypefield.focus()
        }else if (disabled == 1 && disabilitydescription == "") {
            errors = "Please <strong>describe</strong> employee's disability"
            employeedisabilitydescriptionfield.focus()
        }else if (disabled == 1 && disabilitycertificateno == "") {
            errors = "Please provide <strong>Disability Certificate Number</strong>"
            employeedisabilitycertificatenofield.focus()
        }else if (pinno == "") {
            errors = "Please provide employee's <strong>PIN number</strong>"
            employeepinnofield.focus()
        }else if (nhifno == "") {
            errors = "Please provide employee's <strong>NHIF number</strong>"
            employeenhiffield.focus()
        }else if (nssfno == "") {
            errors = "Please provide employees <strong>NSSF number</strong>"
            employeenssfnofield.focus()
        }else if (onpayroll == "") {
            errors = "Please select employee's <strong>payroll status</strong>"
            employeeonpayrollfield.focus()
        }else if (onpayroll == 1 && fixedpaye == "") {
            errors = "Please select employee's <strong>fixed paye status</strong>"
            employeefixedpayefield.focus()
        }else if (mobile == "") {
            errors = "Please provide employee's <strong>mobile</strong>"
            employeemobilefield.focus()
        }else if (!validatefielddata(mobile, "mobile")) {
            errors = "Invalid <strong>mobile</strong> number format"
            employeemobilefield.focus()
        }else if (emailaddress == "") {
            errors = "Please provide employee's <strong>email address</strong>"
            employeeemailaddressfield.focus()
        }else if (!validatefielddata(emailaddress, "email")) {
            errors = "Invalid <strong>email address</strong> format"
            employeeemailaddressfield.focus()
        }else if (alternativemobile !== "" && !validatefielddata(alternativemobile, "mobile")) {
            errors = "Invalid <strong>alternative mobile</strong> number format"
            employeealternatemobilefield.focus()
        }else if (alternativeemailaddress !== "" && !validatefielddata(alternativeemailaddress, "email")) {
            errors = "Invalid <strong>alternative email address</strong> format"
            employeeemailaddressfield.focus()
        }else if (generatestaffno != 1 && staffno == "") {
            errors = "Please provide employee's <strong>staff no</strong>"
            employeestaffnofield.focus()
        }else if (categoryid == "") {
            errors = "Please select employee's <strong>category</strong>"
            employeecategoryfield.focus()
        }else if (termid == "") {
            errors = "Please select employee's <strong>employment term</strong>"
            employeeemploymenttermfield.focus()
        } else if(unitid==""){
            errors="Please select employee's <strong>Unit</strong>"
            employeeunitfield.focus()
        }else if (departmentid == "") {
            errors = "Please select employee's <strong>department</strong>"
            employeedepartmentfield.focus()
        }else if(sectionid==""){
            errors="Please select employee's <strong>Section</strong>"
            employeesectionfield.focus()
        }else if(shiftid==""){
            errors="Please select employee's <strong>Shift</strong>"
            employeeshiftfield.focus()
        }else if (employmentdate == "") {
            errors = "Please select employee's <strong>employment date</strong>"
            employeeemploymentdatefield.focus()
        }else if (status == "") {
            errors = "Please select employment <strong>status</strong>"
            employeestatusfield.focus()
        }else if (status != "active" && separationdate == "") {
            errors = "Please select employee's <strong>separation date</strong>"
            employeeseparationdatefield.focus()
        }else if (status != "active" && separationreason == "") {
            errors = "Please select employee <strong>separation reason</strong>"
            employeeseparationreasonfield.focus()
        }else if (positionid == "") {
            errors = "Please select employee's <strong>position</strong>"
            positionfield.focus()
        }else if (jobgroupid == "") {
            errors = "Please select employee's <strong>job group</strong>"
            employeejobgroupfield.focus()
        }else if (notchid == "") {
            errors = "Please select employee's <strong>notch</strong>"
            employeenotchfield.focus()
        }else if (bankbranchid == "") {
            errors = "Please select employee's <strong>bank and branch</strong>"
            if (employeebankfield.val() == "") {
                employeebankfield.focus()
            } else {
                employeebankbranchfield.focus()
            }
        }else if (accountnumber == "") {
            errors = "Please provide employee's <strong>bank account number</strong>"
            employeeaccountnumberfield.focus()
        }

        if (errors == "") {
            // goto notifications sections to show progress, errors or notifications
            gotonotifications(employeenotifications)
            employeenotifications.html(showAlert("processing", "Processing. Please wait ..."))
            $.post(
                "../controllers/employeeoperations.php",
                {
                    saveemployee: true,
                    employeeid,
                    generatestaffno,
                    staffno,
                    iddocumentid,
                    iddocreferenceno,
                    iddocexpirydate,
                    firstname,
                    middlename,
                    lastname, religionid,
                    gender,
                    dateofbirth,
                    disabled,
                    disabilitytype,
                    disabilitydescription,
                    disabilitycertificateno,
                    pinno,
                    nhifno,
                    nssfno,
                    onpayroll,
                    fixedpaye,
                    physicaladdress,
                    postaladdress,
                    town,
                    postalcode,
                    mobile,
                    alternativemobile,
                    emailaddress,
                    alternativeemailaddress,
                    categoryid,
                    termid,
                    departmentid,
                    employmentdate,
                    status,
                    separationdate,
                    separationreason,
                    positionid,
                    jobgroupid,
                    notchid,
                    bankbranchid,
                    accountnumber,
                    salutationid,
                    unitid,
                    sectionid,
                    shiftid
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            // clearform
                            clearemployeefields()
                            employeesalutationfield.focus()
                            employeenotifications.html(showAlert("success", `The employee has been saved successfully. Staff number: <strong>${data.staffno}</strong>`))
                            // refresh list

                        } else if (data.status == "exists") {
                            if (data.message == "id doc no exists") {
                                errors = `<strong>${documentname}</strong> number already exists in the system`
                                employeeiddocreferencenofield.focus()
                            } else if (data.message == "staff no exists") {
                                errors = `<strong>Staff Number</strong> provided already exists in the system`
                                employeestaffnofield.focus()
                            } else if (data.message == "pin no exists") {
                                errors = "<strong>PIN Number</strong> already exists in the system"
                                employeepinnofield.focus()
                            } else if (data.message == "nssf no exists") {
                                errors = "<strong>NSSF Number</strong> already exists in the system"
                                employeenssfnofield.focus()
                            } else if (data.message == "nhif no exists") {
                                errors = "<strong>NHIF Number</strong> already exists in the system"
                                employeenhiffield.focus()
                            } else if (data.message == "mobile no exists") {
                                errors = "<strong>Mobile Number</strong> already exists in the system"
                                employeemobilefield.focus()
                            } else if (data.message == "email address exists") {
                                errors = "<strong>Email Address</strong> already exists in the system"
                                employeeemailaddressfield.focus()
                            } else if (data.message == "disability certificate exists") {
                                errors = "<strong>Disability Certificate Number</strong> already exists in the system"
                                employeedisabilitycertificatenofield.focus()
                            }

                            employeenotifications.html(showAlert("info", errors))
                        }
                    } else {
                        employeenotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            gotonotifications(employeenotifications)
            employeenotifications.html(showAlert("info", errors))
        }
    })

    function clearemployeefields() {
        employeeidfield.val("0")
        employeegeneratestaffnofield.prop("checked", true)
        employeegeneratestaffnofield.trigger("change")
        employeestaffnofield.val("")
        employeefirstnamefield.val("")
        employeemiddlenamefield.val("")
        employeelastnamefield.val("")
        employeegenderfield.val("")
        employeeiddocumentfield.val("")
        employeeiddocreferencenofield.val("")
        employeeiddocexpiryfield.val("")
        employeecategoryfield.val("")
        employeeemploymenttermfield.val("")
        employeereligionfield.val("")
        employeesalutationfield.val("")
        employeedepartmentfield.val("")
        employeedobfield.val("")
        employeejobgroupfield.val("")
        employeenotchfield.val("")
        employeeemploymentdatefield.val("")
        employeeseparationdatefield.val("")
        employeeseparationreasonfield.val("")
        employeebankbranchfield.val("")
        employeeaccountnumberfield.val("")
        employeeonpayrollfield.val("")
        employeefixedpayefield.val("")

        employeestatusfield.val("active")
        employeestatusfield.trigger("change")

        employeehasdisabilityfield.val("0")
        employeehasdisabilityfield.trigger("change")

        employeedisabilitytypefield.val("")
        employeedisabilitydescriptionfield.val("")
        employeepinnofield.val("")
        employeenssfnofield.val("")
        employeenhiffield.val("")
        employeephysicaladdressfield.val("")
        employeepostaladdressfield.val("")
        employeetownfield.val("")
        employeepostalcodefield.val("")
        employeemobilefield.val("")
        employeealternatemobilefield.val("")
        employeeemailaddressfield.val("")
        employeealternateemailaddressfield.val("")
        positionfield.val("")
        employeedobfield.val("")
        employeeunitfield.val("")
        employeesectionfield.val("")
        employeeshiftfield.val("")
    }

    const searchemployeemodal = $("#searchemployeemodal"),
        filteremployeebutton = $("#filteremployees")

    filteremployeebutton.on("click", () => {
        searchemployeemodal.modal("show")
    })

    const filteremploymentdatefield = $("#filteremploymentdate"),
        filteremploymentstartdatefield = $("#filteremploymentstartdate"),
        filteremploymentenddatefield = $("#filteremploymentenddate"),
        filteremploymentcategoryfield = $("#filtercategory"),
        filteremploymentermsfield = $("#filteremploymentterm"),
        filteremploymentjobgroupfield = $("#filterjobgroup"),
        filteremploymentnotchfield = $("#filternotch"),
        filteremploymentpositionfield = $("#filterjobposition"),
        filteremploymentsalutationfield = $("#filtersalutation"),
        filteremploymentreligionfield = $("#filterreligion"),
        filteremploymentregistrationdocumentsfield = $("#filterregistrationdocument"),
        filterstaffnofield = $("#filterstaffno"),
        filternamefield = $("#filtername"),
        filterregdocnofield = $("#filterregdocno"),
        filterpinnofield = $("#filterpinno"),
        filternssfnofield = $("#filternssfno"),
        filternhifnofield = $("#filternhifno"),
        filterempoymentstatusfield = $("#filterstatus"),
        filteremploymentgenderfield = $("#filtergender"),
        filteronpayrollfield = $("#filteronpayroll"),
        filterdisabilityfield = $("#filterdisability"),
        beginfilteremployeesbutton = $("#beginfilteremployees"),
        filteremployeenotifications = $("#filteremployeenotifications"),
        employeeslist = $("#employeeslist"),
        lblemployeecount = $("#employeescounter"),
        filteremployeestatus = $("#filteremployeesstatus")

    getjobcategories(filteremploymentcategoryfield)
    getemploymentterms(filteremploymentermsfield)
    getjobgroups(filteremploymentjobgroupfield)
    getjobnotches(filteremploymentnotchfield)
    getjobpositions(filteremploymentpositionfield)
    getsalutations(filteremploymentsalutationfield)
    getreligions(filteremploymentreligionfield)
    getidocuments(filteremploymentregistrationdocumentsfield)


    setDatePicker(filteremploymentstartdatefield)
    setDatePicker(filteremploymentenddatefield)

    filteremployeestatus.on("change", () => {
        const status = filteremployeestatus.val()
        filterempoymentstatusfield.val(status)
        beginfilteremployeesbutton.trigger("click")
    })

    filteremploymentdatefield.on("click", () => {
        const filteroption = filteremploymentdatefield.val()
        if (filteroption == "all") {
            filteremploymentstartdatefield.prop("disabled", true)
            filteremploymentenddatefield.prop("disabled", true)
        } else if (filteroption == "between") {
            filteremploymentstartdatefield.prop("disabled", false)
            filteremploymentenddatefield.prop("disabled", false)
        } else {
            filteremploymentstartdatefield.prop("disabled", false)
            filteremploymentenddatefield.prop("disabled", true)
        }
    })

    function filteremployees() {
        const staffno = sanitizestring(filterstaffnofield.val()),
            staffname = sanitizestring(filternamefield.val()),
            regdocno = sanitizestring(filterregdocnofield.val()),
            pinno = sanitizestring(filterpinnofield.val()),
            nssfno = sanitizestring(filternssfnofield.val()),
            nhifno = sanitizestring(filternhifnofield.val()),
            employmentdate = filteremploymentdatefield.val(),
            status = filterempoymentstatusfield.val(),
            category = filteremploymentcategoryfield.val(),
            terms = filteremploymentermsfield.val(),
            position = filteremploymentpositionfield.val(),
            jobgroup = filteremploymentjobgroupfield.val(),
            notch = filteremploymentnotchfield.val(),
            salutation = filteremploymentsalutationfield.val(),
            religion = filteremploymentsalutationfield.val(),
            gender = filteremploymentgenderfield.val(),
            registrationdocument = filteremploymentregistrationdocumentsfield.val(),
            onpayroll = filteronpayrollfield.val(),
            disability = filterdisabilityfield.val()

        let errors = "",
            startdate = sanitizestring(filteremploymentstartdatefield.val()),
            enddate = sanitizestring * filteremploymentenddatefield.val()

        // check for blank fields
        if (employmentdate == "between") {
            if (startdate == "") {
                errors = "Please select start date"
                filteremploymentstartdatefield.focus()
            } else if (enddate == "") {
                errors = "Please select end date"
                filteremploymentenddatefield.focus()
            }
        } else if (employmentdate == ">=" || employmentdate == "<=") {
            if (startdate == "") {
                errors = "Please provide base date"
                filteremploymentstartdatefield.focus()
            } else {
                enddate = "31-Dec-2100"
            }
        } else {
            startdate = "01-Jan-2010"
            enddate = "31-Dec-2100"
        }

        if (errors == "") {
            // fetch the data and populate window
            filteremployeenotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.getJSON(
                "../controllers/employeeoperations.php",
                {
                    filteremployees: true,
                    staffno,
                    staffname,
                    regdocno,
                    pinno,
                    nssfno,
                    nhifno,
                    status,
                    category,
                    terms,
                    position,
                    jobgroup,
                    notch,
                    salutation,
                    religion,
                    gender,
                    registrationdocument,
                    onpayroll,
                    disability
                },
                (data) => {
                    if (data.length == 0) {
                        filteremployeenotifications.html(showAlert("info", `Sorry, no search results matching filter criteria below!`))
                        lblemployeecount.html(`0 employees shown`)
                        employeeslist.find("ul").html("")
                    } else {
                        filteremployeenotifications.html("")
                        let employeelist = ""
                        data.forEach((employee, i) => {
                            employeelist += `<li data-id='${employee.employeeid}'>${employee.firstname} ${employee.middlename} ${employee.lastname}</li>`
                        })
                        employeeslist.find("ul").html(employeelist)
                        // count records returned
                        lblemployeecount.html(`${$.number(data.length)} employees shown`)
                        // hide this modal
                        searchemployeemodal.modal("hide")
                    }
                }
            )
        } else {
            filteremployeenotifications.html(showAlert("info", errors))
        }
    }

    beginfilteremployeesbutton.on("click", () => {
        filteremployees()
    })

    //   delay implementation for 5 seconds and then get existing employees
    setTimeout(() => {
        filteremployees()
    }, 2000);

    const lblstaffno = $("#lblstaffno"),
        lblnames = $("#lblnames"),
        lbliddoc = $("#lbliddoc"),
        lbliddocref = $("#lbliddocref"),
        lbldepartment = $("#lbldepartment"),
        lbldesignation = $("#lbldesignation"),
        lblempoloymentterms = $("#lblemploymentterms"),
        lblemploymentdate = $("#lblemploymentdate"),
        lblstatus = $("#lblstatus"),
        lblleaveallocation = $("#lbleaveallocation"),
        lblleavetaken = $("#lblleavetaken"),
        lblleaveunutilized = $("#lblleaveunutilized")

    function getemployeedetails(employeeid) {
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeedetails: true,
                employeeid
            },
            (data) => {
                data = data[0]

                // populate employee scorecard
                const leavebalance = data.leavedaysallocated - data.leavedaystaken
                lblstaffno.html(data.staffno)
                lblnames.html(titleCase(`${data.firstname} ${data.middlename} ${data.lastname}`))
                lbliddoc.html(data.documenttypename)
                lbliddocref.html(data.iddocreferenceno)
                lbldepartment.html(data.departmentname)
                lbldesignation.html(data.positionname)
                lblempoloymentterms.html(data.termname)
                lblemploymentdate.html(formatDate(data.employmentdate))
                lblstatus.html(titleCase(data.status))
                lblleaveallocation.html(data.leavedaysallocated)
                lblleavetaken.html(data.leavedaystaken)
                lblleaveunutilized.html(leavebalance)

                // populate details employee fields
                employeeidfield.val(data.employeeid)
                employeegeneratestaffnofield.prop("checked", false)
                // employeegeneratestaffnofield.trigger("change")
                employeestaffnofield.prop("disabled", true)
                employeestaffnofield.val(data.staffno)
                employeefirstnamefield.val(data.firstname)
                employeemiddlenamefield.val(data.middlename)
                employeelastnamefield.val(data.lastname)
                employeegenderfield.val(data.gender)

                employeeiddocumentfield.val(data.iddocumentid)
                employeeiddocumentfield.trigger("change")

                employeeiddocreferencenofield.val(data.iddocreferenceno)

                // check if identiifcation document has expiry data and display as appropriate
                if (employeeiddocumentfield.find("option:selected").attr("data-expires") == 1) {
                    employeeiddocexpiryfield.val(formatDate(data.iddocexpirydate))
                } else {
                    employeeiddocexpiryfield.val("")
                }

                // employeeiddocexpiryfield.val(formatDate(data.iddocexpirydate))
                employeecategoryfield.val(data.categoryid)
                employeeemploymenttermfield.val(data.termid)
                employeereligionfield.val(data.religionid)
                employeesalutationfield.val(data.salutationid)
                employeedepartmentfield.val(data.departmentid)

                getsections(employeesectionfield,data.departmentid,'choose').done(()=>{
                    employeesectionfield.val(data.sectionid)
                })

                employeeshiftfield.val(data.shiftid)
                employeedobfield.val(data.positionid)
                employeejobgroupfield.val(data.jobgroupid)
                employeenotchfield.val(data.notchid)
                employeedobfield.val(formatDate(data.dateofbirth))
                employeeemploymentdatefield.val(formatDate(data.employmentdate))
                employeeseparationdatefield.val(formatDate(data.separationdate))
                employeeseparationreasonfield.val(data.separationreason)
                employeebankfield.val(data.bankid)

                // get  bank branches
                getbankbranches(employeebankbranchfield, data.bankid, 'choose').done(() => {
                    employeebankbranchfield.val(data.bankbranchid)
                })

                positionfield.val(data.positionid)

                employeeaccountnumberfield.val(data.bankaccountnumber)
                employeeonpayrollfield.val(data.onpayroll)
                employeefixedpayefield.val(data.fixedpaye)

                employeestatusfield.val(data.status)
                employeestatusfield.trigger("change")

                employeehasdisabilityfield.val(data.disabled)
                employeehasdisabilityfield.trigger("change")

                employeedisabilitytypefield.val(data.disabilitytype)
                employeedisabilitydescriptionfield.val(data.disabilitydescription)
                employeedisabilitycertificatenofield.val(data.disabilitycertificateno)

                employeepinnofield.val(data.pinno)
                employeenssfnofield.val(data.nssfno)
                employeenhiffield.val(data.nhifno)
                employeephysicaladdressfield.val(data.physicaladdress)
                employeepostaladdressfield.val(data.postaladdress)
                employeetownfield.val(data.town)
                employeepostalcodefield.val(data.postalcode)
                employeemobilefield.val(data.mobile)
                employeealternatemobilefield.val(data.alternatemobile)
                employeeemailaddressfield.val(data.emailaddress)
                employeealternateemailaddressfield.val(data.alternateemailaddress)

                employeeunitfield.val(data.unitid)

                // get employee current payroll items 
                getexistingemployeepayrollitems()
            }
        )
    }

    employeeslist.on("click", "li", function () {
        const employeeid = $(this).attr("data-id")
        getemployeedetails(employeeid)
        getemployeedependants(employeeid)
        getemployeeleavesastable(employeeid)
        getbeneficiariesastable(employeeid)
        getinternalexperienceastable(employeeid)
        getexternalexperienceastable(employeeid)
        getemployeetrainingastable(employeeid)
        getemployeedisciplinecasesastable(employeeid)
        getemployeedocumentsastable(employeeid)
    })

    const employeepayrollitemtypefield = $("#employeepayrollitemtype"),
        employeepayrollitemidfield = $("#employeepayrollitemid"),
        employeepayrollitemnamefield = $("#employeepayrollitemname"),
        employeepayrollitemtargetamountfield = $("#targetamount"),
        employeepayrollitemapplyrelieffield = $("#applyrelief"),
        employeepayrollitemperiodicfield = $("#employeepayrollitemperiodic"),
        employeepayrollitemstartdate = $("#payrollitemstartdate"),
        employeepayrollitemduration = $("#employeepayrollitemduration"),
        employeepayrollamountfield = $("#monthlyamount"),
        saveemployeepayrollitem = $("#saveemployeepayrollitem"),
        employeepayrollitemdetailsnotifications = $("#employeepayrollitemdetailsnotifications"),
        employeepayrollitemstable = $("#employeepayrollitemstable"),
        employeepayrollitemsnotifications = $("#employeepayrollitemsnotifications")


    setDatePicker(employeepayrollitemstartdate, false, true)
    employeepayrollitemperiodicfield.val(0)


    employeepayrollitemtypefield.on("change", () => {
        const itemtype = employeepayrollitemtypefield.val()
        if (itemtype == "") {
            employeepayrollitemnamefield.html(`<option value=''>&lt;Choose&gt;</option>`)
        } else {
            getpayrollitems(employeepayrollitemnamefield, itemtype, 'choose')
            if (itemtype == "payment" || itemtype == "benefit") {
                employeepayrollitemtargetamountfield.val("0").prop("disabled", true)
                employeepayrollitemapplyrelieffield.val(0).prop("disabled", true)
            } else {
                employeepayrollitemtargetamountfield.val("").prop("disabled", false)
                employeepayrollitemapplyrelieffield.val("").prop("disabled", false)
            }
        }
    })

    employeepayrollitemperiodicfield.on("change", () => {
        const periodicitem = employeepayrollitemperiodicfield.val()
        if (periodicitem == 1) {
            employeepayrollitemduration.prop("disabled", false)
        } else {
            employeepayrollitemduration.val("")
            employeepayrollitemduration.prop("disabled", true)
        }
    })

    saveemployeepayrollitem.on("click", () => {
        const attachment = $("#employeepayrollitemattachment")[0].files[0],
            payrollitemid = employeepayrollitemnamefield.val(),
            employeeid = employeeidfield.val(),
            itemid = employeepayrollitemidfield.val(),
            targetamount = Number(employeepayrollitemtargetamountfield.val()),
            periodic = employeepayrollitemperiodicfield.val(),
            duration = Number(employeepayrollitemduration.val()),
            startdate = employeepayrollitemstartdate.val() == "" ? getTodaysDate() : employeepayrollitemstartdate.val(),
            applyrelief = employeepayrollitemapplyrelieffield.val()

        let errors = "",
            amount = employeepayrollamountfield.val()

        // check for blank fields
        if (payrollitemid == "") {
            errors = "Please select payroll item"
            employeepayrollitemnamefield.focus()
        } else if (amount == "") {
            errors = "Please provide correct amout or Zero(0)<small>For Bracketed Items</small>"
            employeepayrollamountfield.focus()
        } else if (applyrelief == "") {
            errors = "Please select item relief application status"
            employeepayrollitemapplyrelieffield.focus()
        }
        else if (periodic == 1 && duration <= 0) {
            errors = "Please provide correct duration for the periodic item"
            employeepayrollitemduration.focus()
        }

        if (errors == "") {
            let fd = new FormData()
            amount = Number(amount)
            // checks for nul  or udefined
            if (attachment) {
                fd.append("attachment", attachment)
            }

            fd.append("saveemployeepayrollitem", true)
            fd.append("payrollitemid", payrollitemid)
            fd.append("employeeid", employeeid)
            fd.append("itemid", itemid)
            fd.append("amount", amount)
            fd.append("targetamount", targetamount)
            fd.append("periodic", periodic)
            fd.append("startdate", startdate)
            fd.append("duration", duration)
            fd.append("applyrelief", applyrelief)

            employeepayrollitemdetailsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.ajax({
                url: "../controllers/employeeoperations.php",
                type: 'post',
                data: fd,
                contentType: false,
                processData: false,
                success: function (data) {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            notifications = "Payroll item was attached to the employee successfully"
                            employeepayrollitemdetailsnotifications.html(showAlert("success", notifications))
                            // clearfields
                            clearemployeepayrollitemform()
                            // refresh list
                            getexistingemployeepayrollitems()
                        } else if (data.status == "exists") {
                            employeepayrollitemdetailsnotifications.html(showAlert("info", `The payroll item has already been attached to the employee`))
                        }
                    } else {
                        notifications = `Sorry an error occured ${data}`
                        employeepayrollitemdetailsnotifications.html(showAlert("danger", notifications, 1))
                    }
                }
            })
        } else {
            employeepayrollitemdetailsnotifications.html(showAlert("info", errors))
        }
    })

    function getexistingemployeepayrollitems(current = 1) {
        const employeeid = employeeidfield.val()
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeepayrollitems: true,
                employeeid
            },
            (data) => {
                let results = ""
                data.forEach((item, i) => {
                    const periodic = item.periodic == 1 ? "<i class='fas fa-check-circle fa-lg fa-fw text-success'></i>" : "<i class='fas fa-times-circle fa-lg fa-fw text-danger'></i>",
                        attachment = item.attachment != "" ? `<a href="${item.attachment}" target="_blank">View Here</a>` : `&lt;No Attachment&gt;`
                    results += `<tr data-id='${item.itemid}'>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${titleCase(item.itemtype)}</td>`
                    results += `<td>${item.itemname}</td>`
                    results += `<td>${$.number(item.amount)}</td>`
                    results += `<td>${formatDate(item.startdate)}</td>`
                    results += `<td class="text-center">${periodic}</td>`
                    results += `<td>${item.periodic == 1 ? formatDate(item.enddate) : "-"}</td>`
                    results += `<td>${attachment}</td>`
                    results += `<td>${formatDate(item.dateadded)}</td>`
                    results += `<td>${item.addedbyname}</td>`
                    if (current == 1) {
                        // add edit and delete buttons
                        results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                        results += `<td><a href="#" class="delete"><i class="fal fa-trash -alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                    } else {
                        // add blank placeholders for edit and delete buttons
                        results += `<td>&nbsp;</td>`
                        results += `<td>&nbsp;</td></tr>`
                    }
                })
                // console.log(results)
                // cleardatatable(employeepayrollitemstable)
                // employeepayrollitemstable.find("tbody").html(results)
                makedatatable(employeepayrollitemstable,results)
            }
        )
    }

    // delete employee payroll item
    employeepayrollitemstable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            itemid = parent.attr("data-id"),
            itemname = parent.find("td").eq(2).text()
        // confirm with bootbox
        bootbox.dialog({
            title: "Delete Employe Payroll Item",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Confirm Deleteion of <span class='font-weight-bold'>${itemname}</span> from the system.`,
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
                        employeepayrollitemsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
                        $.post(
                            "../controllers/employeeoperations.php",
                            {
                                deleteemployeepayrollitem: true,
                                itemid
                            },
                            (data) => {
                                data = data.trim()
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        employeepayrollitemsnotifications.html(showAlert("success", `Bank name <strong>${itemname}</strong> deleted successfully.`))
                                        getexistingemployeepayrollitems()
                                    }
                                }
                                else {
                                    employeepayrollitemsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    //  edit employee payroll item
    employeepayrollitemstable.on("click", ".edit", function () {
        const itemid = $(this).closest("tr").attr("data-id")
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeepayrollitemdetails: true,
                itemid
            },
            (data) => {
                data = data[0]
                // console.log(data)
                employeepayrollitemtypefield.val(data.itemtype)
                // get payroll items of type item
                getpayrollitems(employeepayrollitemnamefield, data.itemtype, 'choose').done(() => {
                    employeepayrollitemnamefield.val(data.payrollitemid)
                })

                if (data.itemtype == "payment" || data.itemtype == "benefit") {
                    employeepayrollitemapplyrelieffield.prop("disabled", true)
                    employeepayrollitemtargetamountfield.prop("disabled", true)
                }

                employeeidfield.val(data.employeeid)
                employeepayrollamountfield.val(data.amount)
                employeepayrollitemtargetamountfield.val(data.targetamount)
                employeepayrollitemperiodicfield.val(data.periodic)
                employeepayrollitemduration.val(data.duration)
                employeepayrollitemstartdate.val(formatDate(data.startdate))
                employeepayrollitemapplyrelieffield.val(data.applyrelief)
                // show modal
                employeepayrollitemdetailsnotifications.html("")
                employeepayrollitemsnotifications.html("")
                employeepayitemsmodal.modal("show")
            }
        )
    })

    // function clear employee payroll items form
    function clearemployeepayrollitemform() {
        $("#employeepayrollitemattachment").val("")
        employeepayrollitemnamefield.val("")
        employeeidfield.val("0")
        employeepayrollitemidfield.val("0")
        employeepayrollitemtargetamountfield.val("")
        employeepayrollitemperiodicfield.val("0")
        employeepayrollitemduration.val("")
        employeepayrollitemstartdate.val("")
        employeepayrollitemapplyrelieffield.val("0")
    }

    const employeepayrollitemgrademenu = $("#gradeemployeepayrollitems"),
        employeepayrollitemstatutorydeductionsmenu = $("#statutorydeductionsemployeepayrollitems"),
        employeestatutoryitemsmodal = $("#employeepayrollitemstatutorydeductionsmodal"),
        employeestatutorypayrollitemstable = $("#employeepayrollitemsstatutorydeductionstable"),
        selectallemployeestatutorydeductionccheckbox = $("#selectallemployeepayrollitemsstatutodydeductions"),
        saveemployeestatutorydeductionsbutton = $("#saveemployeestatutorydeductions"),
        employeestatutorypayrollitemdetailsnotifications = $("#employeestatutorypayrollitemdetailsnotifications"),
        employeepayrollitemgradesmodal = $("#employeepayrollitemgradesmodal"),
        employeegradepayrollitemstable = $("#employeegradepayrollitemstable"),
        selectallemployeegradepayrollitems = $("#selectallemployeegradepayrollitems"),
        saveemployeegradeitemsbutton = $("#saveemployeegradeitems"),
        employeegradepayrollitemdetailsnotifications = $("#employeegradepayrollitemdetailsnotifications")

    employeepayrollitemstatutorydeductionsmenu.on("click", () => {
        const employeeid = employeeidfield.val()
        employeestatutoryitemsmodal.modal("show")
        // populate the details for statutoryitems not attcahe to employee
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeestatutorypayrollitems: true,
                employeeid
            },
            (data) => {
                let results = ""
                if (data.length > 0) {
                    data.forEach((item, i) => {
                        results += `<tr data-id='${item.itemid}'>`
                        results += `<td><input type="checkbox" class="employeestatutoryitem"></td>`
                        results += `<td>${Number(i + 1)}</td>`
                        results += `<td>${item.itemname}</td>`
                        results += `<td class="text-right">${item.defaultamount}</td><td class="text-center">&nbsp;</td></tr>`
                    })
                    employeestatutorypayrollitemstable.find("tbody").html(results)
                    employeestatutorypayrollitemdetailsnotifications.html("")
                    saveemployeestatutorydeductionsbutton.show()
                    employeestatutorypayrollitemstable.show()
                } else {
                    employeestatutorypayrollitemdetailsnotifications.html(showAlert("info", `There are currently no statutory deductions available for addition`))
                    saveemployeestatutorydeductionsbutton.hide()
                    employeestatutorypayrollitemstable.hide()
                }
            }
        )
    })

    // Select or Unselect All checkboxes
    selectallemployeestatutorydeductionccheckbox.on("click", () => {
        const ischecked = selectallemployeestatutorydeductionccheckbox.prop("checked")
        employeestatutorypayrollitemstable.find(".employeestatutoryitem").each(function () {
            $(this).prop("checked", ischecked)
            employeestatutorypayrollitemdetailsnotifications.html("")
        })
    })

    // uncheck select all deductions when any checkbox is selected from the list
    employeestatutorypayrollitemstable.on("click", ".employeestatutoryitem", () => {
        selectallemployeestatutorydeductionccheckbox.prop("checked", false)
        employeestatutorypayrollitemdetailsnotifications.html("")
    })

    // save employee statutory payments attachment
    saveemployeestatutorydeductionsbutton.on("click", () => {

        const employeeid = employeeidfield.val()
        let statututorydeductions = []

        employeestatutorypayrollitemstable.find(".employeestatutoryitem").each(function () {
            const current = $(this),
                startdate = getTodaysDate(),
                periodic = 0,
                applyrelief = 0,
                duration = 0,
                targetamount = 0

            if (current.prop("checked")) {
                const parent = current.closest("tr"),
                    payrollitemid = parent.attr("data-id"),
                    defaultamount = parent.find("td").eq(3).text()
                statututorydeductions.push({
                    "employeeid": employeeid,
                    "startdate": startdate,
                    "periodic": periodic,
                    "applyrelief": applyrelief,
                    "duration": duration,
                    "targetamount": targetamount,
                    "payrollitemid": payrollitemid,
                    "amount": defaultamount
                })
            }
        })

        // check if at least an item was selected for addition
        if (statututorydeductions.length > 0) {
            payload = JSON.stringify(statututorydeductions)
            employeestatutorypayrollitemdetailsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.post(
                "../controllers/employeeoperations.php",
                {
                    savegroupedemployeepayrollitems: true,
                    payload
                },
                (data) => {
                    if (isJSON(data)) {
                        let overallsuccess = true
                        data = JSON.parse(data)
                        data.forEach((item) => {
                            const row = employeestatutorypayrollitemstable.find('tr[data-id="' + item.payrollitemid + '"]'),
                                exists = `<i class='fas fa-info-circle fa-lg fa-fw text-primary'></i>`,
                                success = `<i class='fas fa-check-circle fa-lg fa-fw text-success'></i>`
                            if (item.status == "success") {
                                row.find("td").eq(4).html(success)
                            } else if (item.status == "exists") {
                                overallsuccess = false
                                row.find("td").eq(4).html(exists)
                            }
                        })
                        if (overallsuccess) {
                            employeestatutorypayrollitemdetailsnotifications.html(showAlert("success", `<strong>${data.length}</strong> payroll items added successfully to th employee`))
                        } else {
                            employeestatutorypayrollitemdetailsnotifications.html(showAlert("info", `Payroll item added succesfully to the employee. However, some already existed`))
                        }

                        // refresh emloyee payroll items list
                        getexistingemployeepayrollitems()

                    } else {
                        employeestatutorypayrollitemdetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            employeestatutorypayrollitemdetailsnotifications.html(showAlert("info", "Please select at least a deduction to be attached to the employee"))
        }
    })

    // show employee salary grade items
    employeepayrollitemgrademenu.on("click", () => {
        const employeeid = employeeidfield.val()
        employeepayrollitemgradesmodal.modal("show")

        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeegradepayrollitems: true,
                employeeid
            },
            (data) => {
                let results = ""
                if (data.length > 0) {
                    data.forEach((item, i) => {
                        results += `<tr data-id='${item.payrollitemid}'>`
                        results += `<td><input type="checkbox" class="employeegradeitem"></td>`
                        results += `<td>${Number(i + 1)}</td>`
                        results += `<td>${item.itemname}</td>`
                        results += `<td class="text-right">${item.minimumvalue}</td><td class="text-center">&nbsp;</td></tr>`
                    })
                    employeegradepayrollitemstable.find("tbody").html(results)
                    saveemployeegradeitemsbutton.show()
                    employeegradepayrollitemstable.show()
                    employeegradepayrollitemdetailsnotifications.html("")
                } else {
                    employeegradepayrollitemdetailsnotifications.html(showAlert("info", `There are currently no grade-attached payroll items available for addition`))
                    saveemployeegradeitemsbutton.hide()
                    employeegradepayrollitemstable.hide()
                }
            }
        )
    })

    selectallemployeegradepayrollitems.on("click", () => {
        const status = selectallemployeegradepayrollitems.prop("checked")
        employeegradepayrollitemstable.find(".employeegradeitem").each(function () {
            $(this).prop("checked", status)
        })
        employeegradepayrollitemdetailsnotifications.html("")
    })

    employeegradepayrollitemstable.on("click", ".employeegradeitem", () => {
        selectallemployeegradepayrollitems.prop("checked", false)
        employeegradepayrollitemdetailsnotifications.html("")
    })

    // save  salary grade employee items
    saveemployeegradeitemsbutton.on("click", () => {
        const employeeid = employeeidfield.val()
        let statututorydeductions = []

        employeegradepayrollitemstable.find(".employeegradeitem").each(function () {
            const current = $(this),
                startdate = getTodaysDate(),
                periodic = 0,
                applyrelief = 0,
                duration = 0,
                targetamount = 0

            if (current.prop("checked")) {
                const parent = current.closest("tr"),
                    payrollitemid = parent.attr("data-id"),
                    defaultamount = parent.find("td").eq(3).text()
                statututorydeductions.push({
                    "employeeid": employeeid,
                    "startdate": startdate,
                    "periodic": periodic,
                    "applyrelief": applyrelief,
                    "duration": duration,
                    "targetamount": targetamount,
                    "payrollitemid": payrollitemid,
                    "amount": defaultamount
                })
            }
        })

        // check if at least an item was selected for addition
        if (statututorydeductions.length > 0) {
            payload = JSON.stringify(statututorydeductions)
            employeegradepayrollitemdetailsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.post(
                "../controllers/employeeoperations.php",
                {
                    savegroupedemployeepayrollitems: true,
                    payload
                },
                (data) => {
                    if (isJSON(data)) {
                        let overallsuccess = true
                        data = JSON.parse(data)
                        data.forEach((item) => {
                            const row = employeegradepayrollitemstable.find('tr[data-id="' + item.payrollitemid + '"]'),
                                exists = `<i class='fas fa-info-circle fa-lg fa-fw text-primary'></i>`,
                                success = `<i class='fas fa-check-circle fa-lg fa-fw text-success'></i>`
                            if (item.status == "success") {
                                row.find("td").eq(4).html(success)
                            } else if (item.status == "exists") {
                                overallsuccess = false
                                row.find("td").eq(4).html(exists)
                            }
                        })
                        if (overallsuccess) {
                            employeegradepayrollitemdetailsnotifications.html(showAlert("success", `<strong>${data.length}</strong> payroll items added successfully to th employee`))
                        } else {
                            employeegradepayrollitemdetailsnotifications.html(showAlert("info", `Payroll item added succesfully to the employee. However, some already existed`))
                        }

                        // refresh emloyee payroll items list
                        getexistingemployeepayrollitems()

                    } else {
                        employeegradepayrollitemdetailsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            employeegradepayrollitemdetailsnotifications.html(showAlert("info", "Please select at least an item to be attached to the employee"))
        }
    })

    const dependantstable = $("#dependantstable"),
        dependantidfield = $("#employeedependantid"),
        dependantnamefield = $("#employeedependantname"),
        dependantiddocfield = $("#employeedependantdoc"),
        dependantiddocnofield = $("#employeedependantdocno"),
        dependantrelationshipfield = $("#employeedependantrelationship"),
        dependantdobfield = $("#employeedependantdob"),
        dependantpassportphotofield = $("#employeedependantpassportphoto"),
        dependantgenderfield = $("#employeedependantgender"),
        dependantdetailsnotifications = $("#empoyeedependantdetailsnotifications"),
        savedependantbutton = $("#saveemployeedependant"),
        dependantnotifications = $("#dependantnotifications")

    getidocuments(dependantiddocfield, 'choose')
    setDatePicker(dependantdobfield)
    getrelationships(dependantrelationshipfield, 'choose')

    savedependantbutton.on("click", () => {
        const dependantid = dependantidfield.val(),
            dependantname = sanitizestring(dependantnamefield.val()),
            iddoc = dependantiddocfield.val(),
            iddocno = sanitizestring(dependantiddocnofield.val()),
            relationshipid = dependantrelationshipfield.val(),
            dob = sanitizestring(dependantdobfield.val()),
            gender = dependantgenderfield.val(),
            passportphoto = dependantpassportphotofield[0].files[0],
            employeeid = employeeidfield.val()

        let errors = ""
        // check blank fields
        if (dependantname == "") {
            errors = "Please provide dependant's name"
            dependantnamefield.focus()
        } else if (gender == "") {
            errors = "Please select dependant's gender"
            dependantgenderfield.focus()
        } else if (relationshipid == "") {
            errors = "Please select dependant's relationship"
            dependantrelationshipfield.focus()
        } else if (iddoc == "") {
            errors = "Please select identification document"
            dependantiddocfield.focus()
        } else if (iddocno == "") {
            errors = "Please provide Identification document number"
            dependantiddocnofield.focus()
        } else if (dob == "") {
            errors = "Please select dependant's date of birth"
            dependantdobfield.focus()
        }

        if (errors == "") {
            let fd = new FormData()
            if (passportphoto) {
                // attachment=attachment[0].files[0]      
                fd.append("passportphoto", passportphoto)
            }

            fd.append("saveemployeedependant", true)
            fd.append("dependantid", dependantid)
            fd.append("employeeid", employeeid)
            fd.append("dependantname", dependantname)
            fd.append("relationshipid", relationshipid)
            fd.append("iddoc", iddoc)
            fd.append("iddocno", iddocno)
            fd.append("gender", gender)
            fd.append("dob", dob)

            $.ajax({
                url: "../controllers/employeeoperations.php",
                type: 'post',
                data: fd,
                contentType: false,
                processData: false,
                success: function (data) {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            notifications = `Employee dependant was saved successfully`
                            dependantdetailsnotifications.html(showAlert("success", notifications))
                            // clearfields
                            cleardependantform()
                            dependantnamefield.focus()
                            // refresh list
                            getemployeedependants(employeeid)
                        } else if (data.status == "exists") {
                            dependantdetailsnotifications.html(showAlert("info", `Dependant ID document number already exists`))
                        }
                    } else {
                        notifications = `Sorry an error occured ${data}`
                        dependantdetailsnotifications.html(showAlert("danger", notifications, 1))
                    }
                }
            })

        } else {
            dependantdetailsnotifications.html(showAlert("info", errors))
        }
    })

    function cleardependantform() {
        dependantidfield.val("0")
        dependantnamefield.val("")
        dependantiddocfield.val("")
        dependantiddocnofield.val("")
        dependantrelationshipfield.val("")
        dependantdobfield.val("")
        dependantpassportphotofield.val("")
        dependantgenderfield.val("")
    }

    // get existing dependants
    function getemployeedependants(employeeid) {
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeedependants: true,
                employeeid
            },
            (data) => {
                let results = ""
                data.forEach((dependant, i) => {
                    results += `<tr data-id='${dependant.dependantid}'>
                        <td>${Number(i + 1)}</td>
                        <td>${dependant.dependantname}</td>
                        <td>${dependant.documentname}</td>
                        <td>${dependant.iddocumentno}</td>
                        <td>${dependant.relationship}</td>
                        <td>${formatDate(dependant.dateofbirth)}</td>
                        <td>${titleCase(dependant.gender)}</td>
                        <td><img class='thumbnail' src='${dependant.passportphoto}'></td>
                        <td>${formatDate(dependant.dateadded)}</td>
                        <td>${dependant.addedbyname}</td>
                        <td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>
                        <td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td></tr>
                    `
                })
                makedatatable(dependantstable,results)
                dependantnotifications.html("")
            }
        )
    }

    // listen to edit dependant
    dependantstable.on("click", ".edit", function () {
        const dependantid = $(this).closest("tr").attr("data-id")
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeedependantdetails: true,
                dependantid
            },
            (data) => {
                dependant = data[0]
                // populate modal fields
                dependantidfield.val(dependant.dependantid)
                dependantnamefield.val(dependant.dependantname)
                dependantiddocfield.val(dependant.iddocumentid)
                dependantiddocnofield.val(dependant.iddocumentno)
                dependantrelationshipfield.val(dependant.relationshipid)
                dependantdobfield.val(formatDate(dependant.dateofbirth))
                // empty dependant passport photo field
                dependantpassportphotofield.val("")
                dependantgenderfield.val(dependant.gender)
                // show modal
                dependantdetailsnotifications.html("")
                dependadntdetailsmodal.modal("show")
            }
        )
    })

    // listen to delete dependant
    dependantstable.on("click", ".delete", function () {
        const parent = $(this).closest("tr"),
            dependantid = parent.attr("data-id"),
            dependantname = parent.find("td").eq(1).text(),
            employeeid = employeeidfield.val()
        // confirm deletion with bootbox
        bootbox.dialog({
            title: "Delete Employee Dependant",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete dependant <span class='font-weight-bold'>${dependantname}</span> from the employee.`,
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
                        dependantnotifications.html(showAlert("processing", "Porcessing. Please wait ...", 1))
                        $.post(
                            "../controllers/employeeoperations.php",
                            {
                                deleteemployeedependant: true,
                                dependantid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        // refresh list
                                        getemployeedependants(employeeid)
                                        // issue notification
                                        dependantnotifications.html(showAlert("success", `Employee dependant <strong>${dependantname}</strong> was deleted successfully.`))
                                    }
                                } else {
                                    dependantnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })

    })

    // save leave application
    const staffleavetypefiled = $("#staffleavetype"),
        staffleaverelieverfield = $("#staffleavereliever"),
        staffleavesupervisorfield = $("#staffleavesupervisor"),
        staffleavestartdatefield = $("#staffleavestartdate"),
        staffleaveenddatefield = $("#staffleaveenddate"),
        staffleavedetailsnotifications = $("#staffleavedetailsnotifications"),
        staffleaveallocationlabel = $("#staffleaveallocation"),
        staffleavedaystakenlabel = $("#staffleavedaystaken"),
        staffleavebalancelabel = $("#staffleavebalance"),
        staffleavedaysutilizedlabel = $("#staffleavedaysutilized"),
        staffleavesaveapplicationbutton = $("#savestaffleaveapplication"),
        staffleaveattachmentfield = $("#staffleaveattachment"),
        staffleavenarrationfield = $("#staffleavenarration"),
        staffleaveapplicationidfield = $("#staffleaveapplicationid"),
        staffleaveapplicationstable = $("#staffleaveapplicationstable")

    let applywithoutallocation = false,
        requiresattachment = false,
        canbesplit = true,
        systemlabel = "",
        annualallocation = 0,
        daysawarded = 0,
        daysutilized = 0,
        skipholidays = 0

    // get leave types
    getleavetypes(staffleavetypefiled, 'choose')

    // set datepickers
    setDatePicker(staffleavestartdatefield, false, true)
    setDatePicker(staffleaveenddatefield, false, true)

    staffleavetypefiled.on("change", () => {
        const leaveid = staffleavetypefiled.val(),
            employeeid = employeeidfield.val()
        // get leave details
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeeleavetypedetails: true,
                employeeid,
                leaveid
            },
            (data) => {

                data = data[0]
                applywithoutallocation = data.applywithoutallocation,
                    requiresattachment = data.requiresattachment
                canbesplit = data.canbesplit
                systemlabel = data.systemlabel
                annualallocation = data.annualallocation
                daysawarded = data.daysawarded
                skipholidays = data.skipsholidays
                // console.log(data.skipsholidays)
                daysutilized = data.daysutilized
                const leavebalance = data.daysawarded - data.daysutilized

                staffleaveallocationlabel.html(data.daysawarded)
                staffleavedaysutilizedlabel.html(data.daysutilized)
                // staffleavedaystakenlabel.html()
                staffleavebalancelabel.html(leavebalance)

                if (canbesplit == 1) {
                    staffleaveenddatefield.prop("disabled", false)
                } else {
                    staffleaveenddatefield.prop("disabled", true)
                    staffleavedaystakenlabel.html(annualallocation)
                }
            }
        )
    })

    staffleavestartdatefield.on("change", function () {

        const startdate = staffleavestartdatefield.val()

        let leavestartdate = new Date(startdate),
            leaveenddate = new Date(),
            workingdays

        if (canbesplit == 0) {
            leaveenddate.setDate(leavestartdate.getDate() + annualallocation)
            staffleaveenddatefield.val(formatDate(leaveenddate))
        }

        const enddate = staffleaveenddatefield.val()

        // check for blank fields
        if (startdate !== "" && enddate !== "") {
            // get weekends and public holidays
            leaveenddate = convertDate(enddate)
            leavestartdate = convertDate(startdate)

            $.getJSON(
                "../controllers/leaveoperations.php",
                {
                    getweekendsbetweendates: true,
                    startdate,
                    enddate
                },
                (data) => {
                    const weekends = data[0].weekendholidayscount
                    // check leave type
                    if (skipholidays == 1) {
                        workingdays = countWorkingDays(leavestartdate, leaveenddate) - weekends
                        // console.log("working days:",countWorkingDays)
                    } else {
                        workingdays = getDaysBetweenDates(leavestartdate, leaveenddate)
                    }

                    // display balance 
                    const daystaken = staffleavedaysutilizedlabel.html()
                    staffleavedaystakenlabel.html(workingdays)
                    const leavebalance = annualallocation - daystaken - workingdays
                    staffleavebalancelabel.html(canbesplit == 1 ? leavebalance : 0)
                }
            )
        }
    })

    staffleaveenddatefield.on("change", function () {
        staffleavestartdatefield.trigger("change")
    })

    // save leave application
    staffleavesaveapplicationbutton.on("click", () => {
        const employeeid = employeeidfield.val(),
            leavetypeid = staffleavetypefiled.val(),
            startdate = sanitizestring(staffleavestartdatefield.val()),
            enddate = !staffleaveenddatefield.prop("disabled")?sanitizestring(staffleaveenddatefield.val()):startdate,
            daystaken = !staffleaveenddatefield.prop("disabled")?staffleavedaystakenlabel.html():0.5,
            relieverid = staffleaverelieverfield.val(),
            supervisorid = staffleavesupervisorfield.val(),
            narration = sanitizestring(staffleavenarrationfield.val()),
            attachment = staffleaveattachmentfield[0].files[0],
            applicationid = staffleaveapplicationidfield.val(),
            leavebalance=staffleavebalancelabel.html(),
            halfdayapplication=staffleaveapplicationhalfdayfield.val()

        let shifthalf=staffleaveapplicationshifthalffield.val(),
            starttime=staffleaveapplicationstarttimefield.val(),
            endtime=staffleaveapplicationendtimefield.val(),
            errors = "", notifications=""
        
        staffleavestartdatefield.removeClass("is-invalid text-danger")
        staffleaveenddatefield.removeClass("is-invalid text-danger")
        // check for blank fileds
        if (leavetypeid == "") {
            errors = "Please select leave type"
            staffleavetypefiled.focus()
        } else if (startdate == "") {
            errors = "Please select leave start date"
            staffleavestartdatefield.addClass("is-invalid text-danger")
            // staffleavestartdatefield.focus()
        } else if ((canbesplit == 0 && enddate == "")|| !staffleaveenddatefield.prop("disabled")) {
            // Disabled means its half day
            errors = "Please select leave end date"
            // staffleaveenddatefield.focus()
            staffleaveenddatefield.addClass("is-invalid text-danger")
        } else if(halfdayapplication==""){
            errors="Please select half day application status"
            staffleaveapplicationhalfdayfield.focus()
        }else if(shifthalf=="" && halfdayapplication==1){
            errors="Please select shift hald the leave applier"
            staffleaveapplicationshifthalffield.focus()
        } else if (requiresattachment == 1 && attachment.val() == "") {
            errors = "Please attach a file"
            staffleaveattachmentfield.focus()
        } else if (relieverid == "") {
            errors = "Please select reliever"
            staffleaverelieverfield.focus()
        } else if (supervisorid == "") {
            errors = "Please select supervisor"
            staffleavesupervisorfield.focus()
        }else if(Number(daystaken)>Number(leavebalance)){
            errors="Days taken exceed available leave balance"
        }

        if (errors == "") {
            let fd = new FormData()
            if(halfdayapplication==0){
                shifthalf=0
                starttime="00:00"
                endtime="00:00"
            }

            staffleavedetailsnotifications.html(showAlert("processing", "Procesing. Please wait ..."))
            staffleavesaveapplicationbutton.prop("disabled", true)
            if (attachment) {
                // attachment=attachment[0].files[0]      
                fd.append("attachment", attachment)
            }

            fd.append("saveleaveapplication", true)
            fd.append("applicationid", applicationid)
            fd.append("leavetypeid", leavetypeid)
            fd.append("employeeid", employeeid)
            fd.append("startdate", startdate)
            fd.append("enddate", enddate)
            fd.append("daystaken", daystaken)
            fd.append("relieverid", relieverid)
            fd.append("supervisorid", supervisorid)
            fd.append("narration", narration)
            fd.append("halfdayapplication", halfdayapplication)
            fd.append("shifthalf", shifthalf)
            fd.append("starttime", starttime)
            fd.append("endtime", endtime)

            $.ajax({
                url: "../controllers/leaveoperations.php",
                type: 'post',
                data: fd,
                contentType: false,
                processData: false,
                success: function (data) {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            notifications = `Employee leave application was saved successfully`
                            staffleavedetailsnotifications.html(showAlert("success", notifications))
                            // clearfields
                            clearemployeeleaveform()
                            staffleavetypefiled.focus()
                            // refresh list
                            getemployeeleavesastable(employeeid)
                            // re-enable save button
                        } else if (data.status == "exists") {
                            staffleavedetailsnotifications.html(showAlert("info", `Sorry, an employee has another leave for the requested period`))
                        }
                    } else {
                        notifications = `Sorry an error occured ${data}`
                        staffleavedetailsnotifications.html(showAlert("danger", notifications, 1))
                    }
                    staffleavesaveapplicationbutton.prop("disabled", false)
                }
            })
        } else {
            staffleavedetailsnotifications.html(showAlert("info", errors))
            if(staffleavestartdatefield.hasClass("is-invalid")){
                staffleavestartdatefield.focus()
            }else if(staffleaveenddatefield.hasClass("is-invalid")){
                staffleaveenddatefield.focus()
            }  
        }
    })

    function clearemployeeleaveform() {
        staffleavetypefiled.val(""),
        staffleavestartdatefield.val(""),
        staffleaveenddatefield.val(""),
        staffleavedaystakenlabel.html("0"),
        staffleaverelieverfield.val(""),
        staffleavesupervisorfield.val(),
        staffleavenarrationfield.val(""),
        staffleaveattachmentfield.val(""),
        staffleaveapplicationidfield.val("0")
        staffleaveapplicationhalfdayfield.val("")
        staffleaveapplicationshifthalffield.val("")
        staffleaveapplicationstarttimefield.val("")
        staffleaveapplicationendtimefield.val("")
    }

    function getemployeeleavesastable(employeeid) {
        $.getJSON(
            "../controllers/leaveoperations.php", {
            getleaveapplications: true,
            employeeid
        },
            (data) => {
                let results = ""
                // staffleaveapplicationstable
                data.forEach((leave, i) => {
                    const filename = leave.attachment !== "" ? leave.attachment.split('/').pop() : "";
                    results += `<tr data-id=${leave.applicationid}><td>${Number(i + 1)}</td>`
                    results += `<td>${leave.leavename}</td>`
                    results += `<td>${formatDate(leave.dateadded)}</td>`
                    results += `<td>${formatDate(leave.startdate)}</td>`
                    results += `<td>${formatDate(leave.enddate)}</td>`
                    results += `<td>${leave.daystaken}</td>`
                    // results += `<td>${leave.narration}</td>`
                    results += `<td>${leave.relievername}</td>`
                    results += `<td>${titleCase(leave.status)}</td>`
                    if (leave.attachment !== "") {
                        results += `<td class='text-center'><a href="${leave.attachment}" download="${filename}"><i class="fal fa-cloud-download fa-lg fa-fw"></i></a></td>`
                    } else {
                        results += `<td class='text-center'><i class="fal fa-cloud-download fa-lg fa-fw text-secondary"></i></td>`
                    }

                    if(leave.status.includes("pending")){
                        results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                        results += `<td><a href="#" class="process"><i class="fal fa-hourglass-half fa-lg fa-fw"></i></a></td>`
                        // results += `<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw"></i></a></td>`
                    }else{
                        results += `<td><i class="fal fa-edit fa-lg fa-fw text-secondary"></i></td>`
                        results += `<td><i class="fal fa-hourglass-half fa-lg fa-fw text-secondary"></i></td>`
                        // results += `<td><i class="fal fa-trash-alt fa-lg fa-fw text-secondary"></i></td>`   
                    }
                    
                    results += `<td><a href="#" class="timeline"><i class="fal fa-history fa-lg fa-fw"></i></a></td></tr>`

                })
                makedatatable(staffleaveapplicationstable,results)
            }
        )
    }

     // save employee beneficiary
     const employeebeneficiaryidfield=$("#beneficiaryid"),
     employeebeneficiaryfullnamefield=$("#beneficiaryname"),
     employeebeneficiaryrelationshipfield=$("#beneficiaryrelationship"),
     employeebeneficiaryidnumberfield=$("#beneficiaryidno"),
     employeebeneficiarypercentagefield=$("#beneficiarypercentage"),
     employeebeneficiarypercentageavailablefield=$("#beneficiarypercentageavailable"),
     employeebeneficiarymobilenumberfield=$("#beneficiarymobile"),
     employeebeneficiaryemailaddressfield=$("#beneficiaryemail"),
     employeeebeneficiarydetailsnotifications=$("#employeeebeneficiarydetailsnotifications"),
     employeebeneficiarysavebutton=$("#savebeneficiary"),
     employeebeneficiariestable=$("#beneficiariestable"),
     employeebeneficiarynotifications=$("#employeebeneficiarynotifications")

    // get relationships
    getrelationships(employeebeneficiaryrelationshipfield, 'choose')

    employeebeneficiarysavebutton.on("click",()=>{
        let errors=""
        const beneficiaryid=employeebeneficiaryidfield.val(),
            fullname=sanitizestring(employeebeneficiaryfullnamefield.val()),
            relationshipid=employeebeneficiaryrelationshipfield.val(),
            idnumber=sanitizestring(employeebeneficiaryidnumberfield.val()),
            percentage=Number(sanitizestring(employeebeneficiarypercentagefield.val())),
            mobilenumber=sanitizestring(employeebeneficiarymobilenumberfield.val()),
            emailaddress=sanitizestring(employeebeneficiaryemailaddressfield.val()),
            percentageavailable=Number(employeebeneficiarypercentageavailablefield.val()),
            employeeid=employeeidfield.val()
        // check for blank fields
        if(fullname==""){
            errors="Please provide beneficiariry's full name"
            employeebeneficiaryfullnamefield.focus()
        }else if(relationshipid==""){
            errors="Please select beneficary's relationship"
            employeebeneficiaryrelationshipfield.focus()
        }else if(idnumber==""){
            errors="Please provide beneficiariry's ID Number"
            employeebeneficiaryidnumberfield.focus()
        }else if(percentage==0){
            errors="Please provide correct percentage to distribute"
            employeebeneficiarypercentagefield.focus()
        }else if(percentage>percentageavailable){
            errors="Percentage provided exceeds available value for distribution"
            employeebeneficiarypercentagefield.focus()
        }if(mobilenumber!=="" &&  !validatefielddata(mobilenumber,"mobile")){
            errors="Please provide correct mobile number format"
            employeebeneficiarymobilenumberfield.focus()
        }else if(emailaddress!=="" && !validatefielddata(emailaddress,"email")){
            errors="Please provide correct emial address format"
            employeebeneficiaryemailaddressfield.focus()
        }

        if(errors==""){
            employeeebeneficiarydetailsnotifications.html(showAlert("processing","Procesing. Please wait ...",1))
            employeebeneficiarysavebutton.prop("disabled",true)
            $.post(
                "../controllers/employeeoperations.php",
                {
                    saveemployeebeneficiary:true,
                    beneficiaryid,
                    employeeid,
                    fullname,
                    idnumber,
                    mobilenumber,
                    emailaddress,
                    relationshipid,
                    percentage
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if(data.status=="success"){   
                            // clear form
                            clearbeneficiariesform()
                            // refresh list
                            getbeneficiariesastable(employeeid)
                            // display notification
                            employeeebeneficiarydetailsnotifications.html(showAlert("success",`Employee beneficiary saved successfully`))
                            // refresh employee available percentage for distribution
                            getemployeebeneficiariestotal(employeebeneficiarypercentageavailablefield,employeeid,beneficiaryid)
                        }else if(data.status=="exists"){
                            employeeebeneficiarydetailsnotifications.html(showAlert("info",`The beneficary ID number has already been registered for the employee`))
                            employeebeneficiaryidnumberfield.focus()
                        }
                    }else{
                        employeeebeneficiarydetailsnotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                    }

                    // re-enable save button
                    employeebeneficiarysavebutton.prop("disabled",false)
                }
            )
        }else{
            employeeebeneficiarydetailsnotifications.html(showAlert("info",errors))
        }
    })

    function clearbeneficiariesform(){
        employeebeneficiaryidfield.val("0")
        employeebeneficiaryfullnamefield.val("")
        employeebeneficiaryrelationshipfield.val("")
        employeebeneficiaryidnumberfield.val("")
        employeebeneficiarypercentagefield.val("")
        employeebeneficiarymobilenumberfield.val("")
        employeebeneficiaryemailaddressfield.val("")
    }

    function getbeneficiariesastable(employeeid){
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeebeneficiaries:true,
                employeeid
            },
            (data)=>{
                let results=""
                data.forEach((beneficiary,i)=>{
                    results+=`<tr data-id='${beneficiary.beneficiaryid}'><td>${Number(i+1)}</td>`
                    results+=`<td>${beneficiary.fullname}</td>`
                    results+=`<td>${beneficiary.relationship}</td>`
                    results+=`<td>${beneficiary.idnumber}</td>`
                    results+=`<td>${beneficiary.emailaddress}</td>`
                    results+=`<td>${beneficiary.mobilenumber}</td>`
                    results+=`<td>${$.number(beneficiary.percentage,2)}</td>`
                    results+=`<td>${formatDate(beneficiary.dateadded)}</td>`
                    results+=`<td>${beneficiary.addedbyname}</td>`
                    results+=`<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results+=`<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                makedatatable(employeebeneficiariestable,results)
            }
        )
    }

    employeebeneficiariestable.on("click",".edit",function(){
        const beneficiaryid=$(this).closest("tr").attr("data-id"),
            employeeid=employeeidfield.val()
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeebeneficiarydetails:true,
                beneficiaryid
            },
            (data)=>{
                data=data[0]
                employeebeneficiaryidfield.val(data.beneficiaryid)
                employeebeneficiaryfullnamefield.val(data.fullname)
                employeebeneficiaryrelationshipfield.val(data.relationshipid)
                employeebeneficiaryidnumberfield.val(data.idnumber)
                employeebeneficiarypercentagefield.val($.number(data.percentage,2))
                employeebeneficiarymobilenumberfield.val(data.mobilenumber)
                employeebeneficiaryemailaddressfield.val(data.emailaddress)
            }
        )

        // get total percentage
        getemployeebeneficiariestotal(employeebeneficiarypercentageavailablefield,employeeid,beneficiaryid)
        // show the modal
        beneficiarydetailsmodal.modal("show")
        // hide all notifications - if any
        employeeebeneficiarydetailsnotifications.html("")
    })

    // delete the beneficiary
    employeebeneficiariestable.on("click",".delete",function(){
        const parent=$(this).closest("tr"),
            beneficiaryid=parent.attr("data-id"),
            beneficiaryname=parent.find("td").eq(1).text(),
            employeeid=employeeidfield.val()
        // confirm wirh bootbox
        bootbox.dialog({
            title: "Delete Employee Beneficiary",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Remove beneficiary <strong>${beneficiaryname}</strong> from the employee`,
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
                        "../controllers/employeeoperations.php",
                        {
                            deleteemployeebeneficiary:true,
                            beneficiaryid
                        },
                        (data)=>{
                            if(isJSON(data)){
                                data=JSON.parse(data)
                                if(data.status=="success"){
                                    employeebeneficiarynotifications.html(showAlert("success",`Employee beneficiary <strong>${beneficiaryname}</strong> was removed successfully`))
                                    // refresh list
                                    getbeneficiariesastable(employeeid)
                                }
                            }else{
                                employeebeneficiarynotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                            }
                        }
                        )
                    }
                }
            }
        })
    })

    // Employee Internal Experince Operations
    const internalexperiencedepartmentfield=$("#internalexperiencedepartment"),
        internalexperiencepositionfield=$("#internalexperienceposition"),
        internalexperiencestartdatefield=$("#internalexperiencestartdate"),
        internalexperienceendatefield=$("#internalexperienceenddate"),
        internalexperiencecurrentlyherefield=$("#internalexperiencecurrentlyworkhere"),
        internalexperiencedetailsnotifications=$("#internalexperiencedetailsnotifications"),
        internalexperiencenotifications=$("#internalexperiencenotifications"),
        internalexperiencesavebutton=$("#saveinternalexperiencebutton"),
        internalexperienceidfield=$("#internalexperienceid"),
        internalexperiencetable=$("#internalexperiencetable")
    
    // Get departments and positions
    getdepartments(internalexperiencedepartmentfield,'choose')
    getjobpositions(internalexperiencepositionfield,'choose')

    // set date pickers for start and end dates
    setDatePicker(internalexperiencestartdatefield,true,false)
    setDatePicker(internalexperienceendatefield,true,false)

    // initialize tinymce for internal experience duties field
    tinymce.init({
        selector:"#internalexperiencedutiesandresponsibilities",
        height:350,
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

    internalexperiencecurrentlyherefield.on("click",()=>{
        const status=internalexperiencecurrentlyherefield.prop("checked") 
        internalexperienceendatefield.prop("disabled",status)
        if(status){
            internalexperienceendatefield.val("")
        }
    })

    // save employee internal experience
    internalexperiencesavebutton.on("click",()=>{
        const id=internalexperienceidfield.val(),
            departmentid=internalexperiencedepartmentfield.val(),
            positionid=internalexperiencepositionfield.val(),
            startdate=sanitizestring(internalexperiencestartdatefield.val()),
            currentlyhere=internalexperiencecurrentlyherefield.prop("checked")?1:0,
            duties=sanitizestring(tinymce.get("internalexperiencedutiesandresponsibilities").getContent()),
            enddate=currentlyhere==1?getTodaysDate():sanitizestring(internalexperienceendatefield.val()),
            employeeid=employeeidfield.val()

        let errors=""
        // check for blank fields
        if(departmentid==""){
            errors="Please select the department first"
            internalexperiencedepartmentfield.focus()
        }else if(positionid==""){
            errors="Please select the position first"
            internalexperiencepositionfield.focus()
        }else if(startdate==""){
            errors="Please select start date first"
        }else if(enddate==""){
            errors="Please select end date first"
        }else if(duties==""){
            errors="Please provide duties performed by the employee"
        }

        if(errors==""){
            $.post(
                "../controllers/employeeoperations.php",
                {
                    saveemployeeinternalexperience:true,
                    id,
                    departmentid,
                    positionid,
                    startdate,
                    enddate,
                    currentlyhere,
                    duties,
                    employeeid
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if(data.status=="success"){
                            // clear the form
                            clearinternalexperienceform()
                            internalexperiencedepartmentfield.focus()
                            // refresh the list
                            getinternalexperienceastable(employeeid)
                            internalexperiencedetailsnotifications.html(showAlert("success",`The employee internal qualification was saved successfully`))
                        }else if(data.status=="exists"){
                            internalexperiencedetailsnotifications.html(showAlert("info",`Internal experience dates provided are already covered by the employee`))
                        }
                    }else{
                        internalexperiencedetailsnotifications.html(showAlert("danger",`Sorry an error occurred ${data}`))
                    }
                }
            )
        }else{
            internalexperiencedetailsnotifications.html(showAlert("info",errors))
        }
    })

    function clearinternalexperienceform(){
        internalexperienceidfield.val("0")
        internalexperiencedepartmentfield.val("")
        internalexperiencepositionfield.val("")
        internalexperiencestartdatefield.val("")
        internalexperiencecurrentlyherefield.prop("checked",true)
        internalexperiencecurrentlyherefield.trigger("click")
        tinymce.get("internalexperiencedutiesandresponsibilities").setContent("")
    }

    function getinternalexperienceastable(employeeid){
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeeinternalexperience:true,
                employeeid
            },
            (data)=>{
                let results=""
                data.forEach((experience,i)=>{
                    const currentlyhere=experience.currentlyhere==1?"<i class='fas fa-check-circle fa-lg fa-fw'></i>":"<i class='fas fa-times-circle fa-lg fa-fw'></i>"        
                    results+=`<tr data-id='${experience.id}'><td>${Number(i+1)}</td>`
                    results+=`<td>${experience.departmentname}</td>`
                    results+=`<td>${experience.positionname}</td>`
                    results+=`<td>${formatDate(experience.startdate)}</td>`
                    results+=`<td ${experience.currentlyhere==1?'class ="table-success text-success text-center"': ''}>${experience.currentlyhere==1?"Currently Here":formatDate(experience.enddate)}</td>`
                    results+=`<td>${formatDate(experience.dateadded)}</td>`
                    results+=`<td>${experience.addedbyname}</td>`
                    results+=`<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></td>`
                    results+=`<td><a href="#" class="delete"><i class="fal fa-trash fa-lg fa-fw text-danger"></i></td></tr>`
                })
                makedatatable(internalexperiencetable,results)
            }
        )
    }

    internalexperiencetable.on("click",".edit",function(){
        id=$(this).closest("tr").attr("data-id")
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getinternalexperiencedetails:true,
                id
            },
            (data)=>{
                data=data[0]
                internalexperienceidfield.val(data.id)
                internalexperiencedepartmentfield.val(data.departmentid)
                internalexperiencepositionfield.val(data.positionid)
                internalexperiencestartdatefield.val(formatDate(data.startdate))
                // internalexperienceendatefield.val(formatDate(data.enddate))
                if(data.currentlyhere==1){
                    internalexperiencecurrentlyherefield.prop("checked",true)
                    internalexperienceendatefield.prop("disabled",true)
                    internalexperienceendatefield.val("")
                }else{
                    internalexperiencecurrentlyherefield.prop("checked",false)
                    internalexperienceendatefield.prop("disabled",false)
                    internalexperienceendatefield.val(formatDate(data.enddate))
                }

                tinymce.get("internalexperiencedutiesandresponsibilities").setContent(data.duties)
                // show the modal
                internalworkexperiencemodal.modal("show")
                // clear any notifcations on display
                internalexperiencedetailsnotifications.html("")
            }
        )
    })

    // delete internal experience
    internalexperiencetable.on("click",".delete",function(){
        const parent=$(this).closest("tr"),
            id=parent.attr("data-id"),
            employeeid=employeeidfield.val()
        // confirm with bootbox
        bootbox.dialog({
            title: "Delete employee experience",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Confirm employee internal experience removal.`,
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
                            "../controllers/employeeoperations.php",
                            {
                                deleteinternalexperience:true,
                                id
                            },
                            (data)=>{
                                if(isJSON(data)){
                                    data=JSON.parse(data)
                                    if(data.status=="success"){
                                        internalexperiencenotifications.html(showAlert("success",`Employee's internal experience deleted successfully`))
                                        // refresh list
                                        getinternalexperienceastable(employeeid)
                                    }
                                }else{
                                    internalexperiencenotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    // Employee External Experience Operations
    const externalexperienceidfield=$("#externalexperienceid"),
        externalexperienceorganizationfield=$("#externalexperienceorganization"),
        externalexperiencepositionfield=$("#externalexperienceposition"),
        externalexperiencestartdatefield=$("#externalexperiencetartdate"),
        externalexperiencenddatefield=$("#externalexperienceenddate"),
        // externalexperiencenarrationfield=$("#externalexperiencenarration"),
        externalexperiencesavebutton=$("#saveexternalworkexperience"),
        externalexperiencedetailsnotification=$("#externalexperiencedetailsnotifications"),
        externalexperiencenotifications=$("#externalexperiencenotifications"),
        externalexperiencetable=$("#externalexperiencetable")

    // set datepickers
    setDatePicker(externalexperiencestartdatefield,true,false)
    setDatePicker(externalexperiencenddatefield,true,false)

    // set up tinymce for duties field
    tinymce.init({
        selector:"#externalexperienceduties",
        height:350,
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

    externalexperiencesavebutton.on("click",()=>{
        const id=externalexperienceidfield.val(),
            organization=sanitizestring(externalexperienceorganizationfield.val()),
            jobposition=sanitizestring(externalexperiencepositionfield.val()),
            startdate=sanitizestring(externalexperiencestartdatefield.val()),
            enddate=sanitizestring(externalexperiencenddatefield.val()),
            duties=sanitizestring(tinymce.get("externalexperienceduties").getContent()),
            employeeid=employeeidfield.val()

        let errors=""

        if(organization==""){
            errors="Please provide Organization name first"
            externalexperienceorganizationfield.focus()
        }else if(jobposition==""){
            errors="Please provide position first" 
            externalexperiencepositionfield.focus()
        }else if(startdate==""){
            errors="Please select start date first"
        }else if(enddate==""){
            errors="Please select end date first"
        }

        if(errors==""){
            externalexperiencedetailsnotification.html(showAlert("progress",`Processing. Please wait ...`,1)) 
            externalexperiencesavebutton.prop("disabled",true)
            $.post(
                "../controllers/employeeoperations.php",
                {
                    saveexternalexperience:true,
                    id,
                    employeeid,
                    organization,
                    jobposition,
                    startdate,
                    enddate,
                    duties
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        console.log(data)
                        if(data.status=="success"){
                            externalexperiencedetailsnotification.html(showAlert("success",`Employee external experience saved successfully`)) 
                            // clear form
                            clearexternalexperienceform()
                            // refresh list
                            getexternalexperienceastable(employeeid)
                        }else if(data.status=="exists"){
                            externalexperiencedetailsnotification.html(showAlert("info",`Another external experience already exists within specified date range`)) 
                        }
                    }else{
                        externalexperiencedetailsnotification.html(showAlert("danger",`Sorry an error occured ${data}`)) 
                    }
                    
                    externalexperiencesavebutton.prop("disabled",false)
                }
            )
        }else{
            externalexperiencedetailsnotification.html(showAlert("info",errors)) 
        }
    })

    function clearexternalexperienceform(){
        externalexperienceidfield.val("0")
        externalexperienceorganizationfield.val("")
        externalexperiencepositionfield.val("")
        externalexperiencestartdatefield.val("")
        externalexperiencenddatefield.val("")
        tinymce.get("externalexperienceduties").setContent("")
    }

    function getexternalexperienceastable(employeeid){
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getexternalexperiences:true,
                employeeid
            },
            (data)=>{
                let results=""
                data.forEach((experience,i)=>{
                    results+=`<tr data-id='${experience.id}'><td>${Number(i+1)}</td>`
                    results+=`<td>${experience.organization}</td>`
                    results+=`<td>${experience.position}</td>`
                    results+=`<td>${formatDate(experience.startdate)}</td>`
                    results+=`<td>${formatDate(experience.enddate)}</td>`
                    results+=`<td>${formatDate(experience.dateadded)}</td>`
                    results+=`<td>${experience.addedbyname}</td>`
                    results+=`<td><a href="#" class="edit"><i class='fal fa-edit fa-lg fa-fw'></i></a></td>`
                    results+=`<td><a href="#" class="delete"><i class='fal fa-trash fa-lg fa-fw text-danger'></i></a></td></tr>`
                })
                // console.log(results)
                makedatatable(externalexperiencetable,results)
            }
        )
    }

    // edit external experience
    externalexperiencetable.on("click",".edit",function(){
        const id=$(this).closest("tr").attr("data-id")
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getexternalexperiencedetails:true,
                id
            },
            (data)=>{
                data=data[0]
                externalexperienceidfield.val(data.id)
                externalexperienceorganizationfield.val(data.organization)
                externalexperiencepositionfield.val(data.position)
                externalexperiencestartdatefield.val(formatDate(data.startdate))
                externalexperiencenddatefield.val(formatDate(data.enddate))
                tinymce.get("externalexperienceduties").setContent(data.duties)
                externalexperiencedetailsnotification.html("")
                externalexperiencedetailsmodal.modal("show")
            }
        )
    })

    // delete external experience
    externalexperiencetable.on("click",".delete",function(){
        const id=$(this).closest("tr").attr("data-id"),
            employeeid=employeeidfield.val()
        // confirm with bootbox
        bootbox.dialog({
            title: "Delete employee external experience",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Confirm employee external experience removal`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete Permanently",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        $.post(
                            "../controllers/employeeoperations.php",
                            {
                                deleteexternalexperience:true,
                                id
                            },
                            (data)=>{
                                if(isJSON(data)){
                                    data=JSON.parse(data)
                                    if(data.status=="success"){
                                        externalexperiencenotifications.html(showAlert("success",`Employee external experience was deleted successfully`))
                                        getexternalexperienceastable(employeeid)
                                    }
                                }else{
                                    externalexperiencenotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    // Employee Training Operations
    const courseidfield=$("#certificateid"),
        coursecategoryfield=$("#trainingcategory"),
        courselevelfield=$("#traininglevel"),
        coursenamefield=$("#coursename"),
        coursemajorfield=$("#coursemajor"),
        courseschoolnamefield=$("#trainingschool"),
        coursestartdatefield=$("#coursestartdate"),
        courseenddatefield=$("#courseenddate"),
        coursecurrentlyattendingfield=$("#trainingcurrentlyattending"),
        coursegradeattainedfield=$("#gradeattained"),
        coursecertificateexpiresfield=$("#certificateexpires"),
        coursecertificateexpirydatefield=$("#certificateexpirydate"),
        coursedetailsnotifications=$("#coursedetailsnotifications"),
        coursenotifications=$("#coursenotifications"),
        employeecoursestable=$("#trainingstable"),
        saveemployeetrainingbutton=$("#savestafftraining"),
        certificatenofield=$("#certificatenumber"),
        certificateattachmentfield=$("#certificateattachment")

    // get course levels
    getcourselevels(courselevelfield,'choose')
    setDatePicker(coursestartdatefield,true,false)
    setDatePicker(courseenddatefield,false,false)
    setDatePicker(coursecertificateexpirydatefield,false,true)

    coursecurrentlyattendingfield.on("change",()=>{
        const status=coursecurrentlyattendingfield.val()
        if(status==0){
            coursecertificateexpiresfield.prop("disabled",false)
            // coursecertificateexpirydatefield.prop("disabled",false)
            certificatenofield.prop("disabled",false)
            certificateattachmentfield.prop("disabled",false)
            coursegradeattainedfield.prop("disabled",false)
        }else{
            coursecertificateexpiresfield.prop("disabled",true)
            // coursecertificateexpirydatefield.prop("disabled",true)
            certificatenofield.prop("disabled",true)
            certificateattachmentfield.prop("disabled",true)
            coursegradeattainedfield.prop("disabled",true)
        }
    })

    coursecertificateexpiresfield.on("change",function(){
        const status=coursecertificateexpiresfield.val()
        if(status==1){
            coursecertificateexpirydatefield.prop("disabled",false)
        }else{
            coursecertificateexpirydatefield.prop("disabled",true)
            coursecertificateexpirydatefield.val("")
        }
    })


    saveemployeetrainingbutton.on("click",()=>{
        const trainingid=courseidfield.val(),
            coursecategory=coursecategoryfield.val(),
            levelid=courselevelfield.val(),
            coursename=sanitizestring(coursenamefield.val()),
            coursemajor=sanitizestring(coursemajorfield.val()),
            institutionname=sanitizestring(courseschoolnamefield.val()),
            gradeattained=sanitizestring(coursegradeattainedfield.val()),
            startdate=sanitizestring(coursestartdatefield.val()),
            enddate=sanitizestring(courseenddatefield.val()),
            currentlyattending=coursecurrentlyattendingfield.val(),
            certificateexpires=coursecertificateexpiresfield.val(),
            certificateexpirydate=coursecertificateexpirydatefield.val(),
            certificatenumber=certificatenofield.val(),
            attachment = certificateattachmentfield[0].files[0],
            fileattached=certificateattachmentfield.val(),
            employeeid=employeeidfield.val()

        let errors=""
        // check for blank fields
        if(coursecategory==""){
            errors="Please select training category"
            coursecategoryfield.focus()
        }else if(levelid==""){
            errors="Please select training level"
            courselevelfield.focus()
        }else if(institutionname==""){
            errors="Please select training institution"
            courseschoolnamefield.focus()
        }else if(coursename==""){
            errors="Please provide training course name"
            coursenamefield.focus()
        }else if(coursemajor==""){
            errors="Please  provide course major"
            coursemajorfield.focus()
        }else if(startdate==""){
            errors="Please select course start date"
        }else if(currentlyattending==""){
            errors="Please select training current attendance option"
            coursecurrentlyattendingfield.focus()
        }else if(enddate==""){
            errors="Please select training end date"
        }else if(currentlyattending==0){
            if(certificatenumber==""){
                // This means the course has been completed
                errors="Please provide certificate number"
                certificatenofield.focus()
            }else if(gradeattained==""){
                errors="Please provide grade attained"
                coursegradeattainedfield.focus()
            }else if(fileattached=="" && trainingid==0){
                errors="Please select certificate file to upload"
                certificateattachmentfield.focus()
            }else if(certificateexpires==""){
                errors="Please select certificate expiration status"
            }else if(certificateexpires==1 && certificateexpirydate==""){
                errors="Please select certificate expiry date"
                coursecertificateexpiresfield.focus()
            }
        }else{
            //  set default values
            certificateexirydate=getTodaysDate()
        }

        if(errors==""){
            coursedetailsnotifications.html(showAlert("processing","Processing. Please wait ...",1))
            let fd = new FormData()
            // checks for nul  or udefined
            if (attachment) {
                fd.append("attachment", attachment)
            }

            fd.append("saveemployeetraining", true)
            fd.append("trainingid", trainingid)
            fd.append("employeeid", employeeid)
            fd.append("coursecategory", coursecategory)
            fd.append("levelid", levelid)
            fd.append("coursename", coursename)
            fd.append("coursemajor", coursemajor)
            fd.append("institutionname", institutionname)
            fd.append("gradeattained", gradeattained)
            fd.append("currentlyattending", currentlyattending)
            fd.append("certificateexpires", certificateexpires)
            fd.append("certificateexpirydate", certificateexpirydate)
            fd.append("certificatenumber", certificatenumber)
            fd.append("startdate", startdate)
            fd.append("enddate", enddate)

            $.ajax({
                url: "../controllers/employeeoperations.php",
                type: 'post',
                data: fd,
                contentType: false,
                processData: false,
                success: function (data) {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            notifications = "Employee training was saved successfully"
                            coursedetailsnotifications.html(showAlert("success", notifications))
                            // clearfields
                            clearemployeetrainingform()
                            coursecategoryfield.focus()
                            // refresh list
                            getemployeetrainingastable(employeeid)
                        } else if (data.status == "exists") {
                            coursedetailsnotifications.html(showAlert("info", `Employee training certificate number is already in use`))
                        }
                    } else {
                        notifications = `Sorry an error occured ${data}`
                        coursedetailsnotifications.html(showAlert("danger", notifications, 1))
                    }
                }
            })
        }else{
            coursedetailsnotifications.html(showAlert("info",errors))
        }
    })

    function clearemployeetrainingform(){
        courseidfield.val("0")
        coursecategoryfield.val("")
        courselevelfield.val("")
        coursenamefield.val("")
        coursemajorfield.val("")
        courseschoolnamefield.val("")
        coursegradeattainedfield.val("")
        coursestartdatefield.val("")
        courseenddatefield.val("")
        coursecurrentlyattendingfield.val("")
        coursecertificateexpiresfield.val("")
        coursecertificateexpirydatefield.val("")
        certificatenofield.val("")
        certificateattachmentfield.val("")
    }

    function getemployeetrainingastable(employeeid){
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeetrainings:true,
                employeeid
            },
            (data)=>{
                let results=""
                data.forEach((training,i)=>{
                    const icon=training.category=="academic"?"<i class='fad fa-diploma fa-lg fa-fw text-success'></i>":"<i class='fad fa-user-hard-hat fa-lg fa-fw text-primary'></i>",
                        continuing=training.currentlyattending==1?"<i class='fas fa-clock fa-lg fa-fw text-danger'></i>":"<i class='fas fa-check-circle fa-lg fa-fw text-success'></i>",
                        filename = training.certificateattachment !== "" ? training.certificateattachment.split('/').pop() : "";
                    results+=`<tr data-id='${training.trainingid}'><td>${Number(i+1)}</td>`
                    results+=`<td class='text-center'>${icon}</td>`
                    results+=`<td>${training.institutionname}</td>`
                    results+=`<td>${training.levelname}</td>`
                    results+=`<td>${training.coursename}</td>`
                    results+=`<td>${formatDate(training.startdate)}</td>`
                    results+=`<td>${formatDate(training.enddate)}</td>`
                    results+=`<td class='text-center'>${continuing}</td>`
                    results+=`<td>${training.gradeattained}</td>`
                    if(training.certificateattachment!==""){
                        results+=`<td class='text-center'><a href="${training.certificateattachment}"  download="${filename}"><i class="fal fa-cloud-download fa-lg fa-fw text-primary"></i></td>`
                    }else{
                        results+=`<td class='text-center'><i class="fal fa-cloud-download fa-lg fa-fw text-secondary"></i></td>`
                    }
                    results+=`<td>${training.certificateexpires==1?formatDate(training.certificateexpirydate):"Never"}</td>`
                    results+=`<td>${formatDate(training.dateadded)}</td>`
                    results+=`<td>${training.addedbyname}</td>`
                    results+=`<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results+=`<td><a href="#" class="delete"><i class="fal fa-trash fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                makedatatable(employeecoursestable,results)
            }
        )
    }

    // edit employee training details
    employeecoursestable.on("click",".edit",function(){
        const trainingid=$(this).closest("tr").attr("data-id")
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                gettrainingdetails:true,
                trainingid
            },
            (data)=>{
                data=data[0]
                courseidfield.val(data.trainingid)
                coursecategoryfield.val(data.category)
                courselevelfield.val(data.levelid)
                coursenamefield.val(data.coursename)
                coursemajorfield.val(data.coursemajor)
                courseschoolnamefield.val(data.institutionname)
                coursegradeattainedfield.val(data.gradeattained)
                coursestartdatefield.val(formatDate(data.startdate))
                courseenddatefield.val(formatDate(data.enddate))
                coursecurrentlyattendingfield.val(data.currentlyattending)
                coursecertificateexpiresfield.val(data.certificateexpires)
                coursecertificateexpirydatefield.val(data.certificateexpirydate)
                certificatenofield.val(data.certificateno)

                coursecurrentlyattendingfield.trigger("change")
                // show modal
                trainingdetailsmodal.modal("show")
                coursedetailsnotifications.html("")
            }
        )
    })

    // delete employee training
    employeecoursestable.on("click",".delete",function(){
        const parent=$(this).closest("tr"),
            trainingid=parent.attr("data-id"),
            coursename=parent.find("td").eq(4).text(),
            employeeid=employeeidfield.val()
        // confirm with bootbox
        bootbox.dialog({
            title: "Delete Employee Training",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete training course <strong>${coursename}</strong> for the employee`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete Permanently",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        coursenotifications.html(showAlert("processing","Processing. Please wait ...",1)) 
                        $.post(
                            "../controllers/employeeoperations.php",
                            {
                                deletetraining:true,
                                trainingid
                            },
                            (data)=>{
                                if(isJSON(data)){
                                    data=JSON.parse(data)
                                    if(data.status=="success"){
                                        coursenotifications.html(showAlert("success",`The employee training course <strong>${coursename}</strong> was deleted successfully`))
                                        // refresh the list 
                                        getemployeetrainingastable(employeeid)
                                    }
                                }else{
                                    coursenotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    // Disciplinary Cases
    const incidentidfield=$("#incidentid"),
        disciplinarydetailsmodal=$("#disciplinarydetailsmodal"),
        addnewdisciplinarycase=$("#addnewdisciplinarycase"),
        disciplinaryincidencedatefield=$("#disciplinaryincidentdate"),
        disciplinaryactiondatefield=$("#disciplinaryactiondate"),
        disciplinarycategoryfield=$("#disciplinarycategory"),
        disciplinaryactionfield=$("#disciplinaryaction"),
        disciplinarytypefield=$("#disciplinarytype"),
        displinarydetailsnotifications=$("#disciplinarydetailsnotifications"),
        disciplinarynotifications=$("#disciplinarynotifications"),
        savedisciplinarybutton=$("#savediscplinarycase"),
        disciplinaryattachment=$("#disciplinaryattachment"),
        disciplinecasestable=$("#disciplinecasestable")

    // set date picker controls
    setDatePicker(disciplinaryincidencedatefield,true,false)
    setDatePicker(disciplinaryactiondatefield,false,true)
    
    // set tinymce editor
    tinymce.init({
        selector:"#disciplinarynarration",
        height:350,
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

    addnewdisciplinarycase.on("click",()=>{
        displinarydetailsnotifications.html("")
        cleardisciplinarydetailsform()
        disciplinarydetailsmodal.modal("show")
    })

    // get disciplinary categories
    getdisciplinarycategoriess(disciplinarycategoryfield,'choose')

    // get disciplinary actions
    getdisciplinaryactions(disciplinaryactionfield,'choose')

    // get disciplinary types
    getdisciplinaryatypes(disciplinarytypefield,'choose')

    // save disciplinary case
    savedisciplinarybutton.on("click",()=>{
        const incidentid=incidentidfield.val(),
            employeeid=employeeidfield.val(),
            categoryid=disciplinarycategoryfield.val(),
            typeid=disciplinarytypefield.val(),
            actionid=disciplinaryactionfield.val(),
            incidentdate=sanitizestring(disciplinaryincidencedatefield.val()),
            actiondate=sanitizestring(disciplinaryactiondatefield.val()),
            incidentdescription=sanitizestring(tinymce.get("disciplinarynarration").getContent()),
            attachment=disciplinaryattachment[0].files[0]
        
        let errors=""
        // check for blank fields
        if(typeid==""){
            errors="Please select incident type"
            disciplinarytypefield.focus()
        }else if(categoryid==""){
            errors="Please select incident category"
            disciplinarycategoryfield.focus()
        }else if(incidentdate==""){
            errors="Please select incident date"
        }else if(actionid==""){
            errors="Please select action required"
            disciplinaryactionfield.focus()
        }else if(actiondate==""){
            errors="Please select action date"
        }else if(incidentdescription==""){
            errors="Please provide narration for the incidennt"
        }

        if(errors==""){
            fd =new FormData()
            if (attachment) {
                fd.append("attachment", attachment)
            }

            fd.append("savedisciplinarycase", true)
            fd.append("incidentid", incidentid)
            fd.append("employeeid", employeeid)
            fd.append("typeid", typeid)
            fd.append("categoryid", categoryid)
            fd.append("actionid", actionid)
            fd.append("incidentdate", incidentdate)
            fd.append("actiondate", actiondate)
            fd.append("incidentdescription", incidentdescription)

            displinarydetailsnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.ajax({
                url: "../controllers/employeeoperations.php",
                type: 'post',
                data: fd,
                contentType: false,
                processData: false,
                success: function (data) {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            notifications = "Employee disciplinary incident was saved successfully"
                            displinarydetailsnotifications.html(showAlert("success", notifications))
                            // clearfields
                            cleardisciplinarydetailsform()
                            // refresh list
                            getemployeedisciplinecasesastable(employeeid)
                        // } else if (data.status == "exists") {
                        //     displinarydetailsnotifications.html(showAlert("info", `The payroll item has already been attached to the employee`))
                        }
                    } else {
                        notifications = `Sorry an error occured ${data}`
                        displinarydetailsnotifications.html(showAlert("danger", notifications, 1))
                    }
                }
            })
        }else{
            displinarydetailsnotifications.html(showAlert("info",errors))
        }
    })

    function cleardisciplinarydetailsform(){
        incidentidfield.val("0")
        disciplinarycategoryfield.val("")
        disciplinarytypefield.val("")
        disciplinaryactionfield.val("")
        disciplinaryincidencedatefield.val("")
        disciplinaryactiondatefield.val("")
        tinymce.get("disciplinarynarration").setContent("")
        disciplinaryattachment.val("")
    }

    function getemployeedisciplinecasesastable(employeeid){
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeedisciplinarycases:true,
                employeeid
            },
            (data)=>{
                let results=""
                data.forEach((incident,i)=>{
                    results+=`<tr data-id='${incident.incidentid}'>`
                    results+=`<td>${Number(i+1)}</td>`
                    results+=`<td>${incident.typename}</td>`
                    results+=`<td>${incident.categoryname}</td>`
                    results+=`<td>${incident.actionname}</td>`
                    results+=`<td>${formatDate(incident.incidentdate)}</td>`
                    results+=`<td>${formatDate(incident.actiondate)}</td>`
                    results+=`<td>${incident.status}</td>`
                    results+=`<td>${incident.addedbyname}</td>`
                    results+=`<td>${formatDate(incident.dateadded)}</td>`
                    results+=`<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`    
                    results+=`<td><a href="#" class="process"><i class="fal fa-hourglass fa-lg fa-fw"></i></a></td>`
                    results+=`<td><a href="#" class="delete"><i class="fal fa-trash fa-lg fa-fw"></i></a></td></tr>`
                })
                makedatatable(disciplinecasestable,results)
            }
        )
    }

    // edit employee discipline case
    disciplinecasestable.on("click",".edit",function(){
        const incidentid=$(this).closest("tr").attr("data-id")
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getdisciplinarycasedetails:true,
                incidentid
            },
            (data)=>{
                data=data[0]
                incidentidfield.val(data.incidentid)
                disciplinarycategoryfield.val(data.categoryid)
                disciplinarytypefield.val(data.typeid)
                disciplinaryactionfield.val(data.actionid)
                disciplinaryincidencedatefield.val(formatDate(data.incidentdate))
                disciplinaryactiondatefield.val(formatDate(data.actiondate))
                tinymce.get("disciplinarynarration").setContent(data.incidentdescription)
                // clear any notifications
                displinarydetailsnotifications.html("")
                disciplinarydetailsmodal.modal("show")
            }
        )
    })

    // delete employee discipline case
    disciplinecasestable.on("click",".delete",function(){
        const parent=$(this).closest("tr"),
            incidentid=parent.attr("data-id"),
            employeeid=employeeidfield.val()
        // confirm with bootbox 
        bootbox.dialog({
            title: "Delete employee disciplinary",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete the selected disciplinary case permanently.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete Permanently",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        disciplinarynotifications.html(showAlert("process","Porcessing. Please wait ...",1))
                        $.post(
                            "../controllers/employeeoperations.php",
                            {
                                deletedisciplinecase:true,
                                incidentid
                            },
                            (data)=>{
                                if(isJSON(data)){
                                    data=JSON.parse(data)
                                    if(data.status=="success"){
                                        disciplinarynotifications.html(showAlert("success",`Employee's disciplinary case deleted successfully`))
                                        // refresh the list 
                                        getemployeedisciplinecasesastable(employeeid)
                                    }
                                }else{
                                    disciplinarynotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    // Employee Documents Operations
    const employeeattachmentidfield=$("#staffdocumentid"),
        employeeattachmentdocumentidfield=$("#staffdocument"),
        employeeattachmentdocumentexpiryfield=$("#staffdocumentexpires"),
        employeeattachmentdocumentexpirydatefield=$("#staffdocumentexpirydate"),
        employeeattachmentattachmentfield=$("#staffdocumentattachment"),
        employeeattachmentnarrationfield=$("#staffdocumentnarration"),
        employeeattachmentnotificationdetails=$("#staffdocumentdetailsnotifications"),
        employeeattachmentnotifications=$("#staffdocumentsnotifications"),
        employeeattachmentstable=$("#staffdocumentstable"),
        employeeatatchmentavebutton=$("#saveemployeedcoument")

    // populate attachable documents
    getemployeeattachabledocuments(employeeattachmentdocumentidfield,'choose')
    
    // set datepicker for expiry date
    setDatePicker(employeeattachmentdocumentexpirydatefield,false,true)


    // disable or enable expiry date selection
    employeeattachmentdocumentidfield.on("change",()=>{
        const status=employeeattachmentdocumentidfield.find("option:selected").attr("data-expires")
        if(status==1){
            employeeattachmentdocumentexpiryfield.val(1)
            employeeattachmentdocumentexpirydatefield.prop("disabled",false)
        }else{
            employeeattachmentdocumentexpiryfield.val(0)
            employeeattachmentdocumentexpirydatefield.prop("disabled",true)
            employeeattachmentdocumentexpirydatefield.val("")
        }
    })

    // listen to save button
    employeeatatchmentavebutton.on("click",()=>{
        const id=employeeattachmentidfield.val(),
            documentid=employeeattachmentdocumentidfield.val(),
            employeeid=employeeidfield.val(),
            documentexpires= employeeattachmentdocumentexpiryfield.val(),
            expirydate=sanitizestring(employeeattachmentdocumentexpirydatefield.val()),
            documentattached=employeeattachmentattachmentfield.val(),
            attachment=employeeattachmentattachmentfield[0].files[0],
            narration=sanitizestring(employeeattachmentnarrationfield.val()),
            override=true
        let errors=""

        // check for blank fields
        if(documentid==""){
            errors="Please select document being attached"
            employeeattachmentdocumentidfield.focus()
        }else if(documentexpires==1 && expirydate==""){
            errors=`Please select ${employeeattachmentdocumentidfield.find("option:selected").text()}'s expiry date`
        }else if(documentattached==""){
            errors="Please select document attachment"
            employeeattachmentattachmentfield.focus()  
        }

        if(errors==""){
            employeeattachmentnotificationdetails.html(showAlert("processing",`Processing. Please wait ...`,1))
            const documentname=employeeattachmentdocumentidfield.find("option:selected").text()
            fd=new FormData()

            if (attachment) {
                fd.append("attachment", attachment)
            }

            fd.append("saveemployeeattachment", true)
            fd.append("id", id)
            fd.append("employeeid", employeeid)
            fd.append("documentid", documentid)
            fd.append("documentexpires", documentexpires)
            fd.append("expirydate", expirydate)
            fd.append("narration", narration)
            fd.append("override", override)

            $.ajax({
                url: "../controllers/employeeoperations.php",
                type: 'post',
                data: fd,
                contentType: false,
                processData: false,
                success: function (data) {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            notifications = `Employee <strong>${documentname}'s</strong> attachment was saved successfully`
                            employeeattachmentnotificationdetails.html(showAlert("success", notifications))
                            // clearfields
                            clearemployeedocumentattachmentform()
                            // refresh list
                            getemployeedocumentsastable(employeeid)
                        } else if (data.status == "exists") {
                            employeeattachmentnotificationdetails.html(showAlert("info", `Sorry, employee's ${documentname} already attached, choose overwrite to replace!`))
                        }
                    } else {
                        notifications = `Sorry an error occured ${data}`
                        employeeattachmentnotificationdetails.html(showAlert("danger", notifications, 1))
                    }
                }
            })
        }else{
            employeeattachmentnotificationdetails.html(showAlert("info",errors))
        }
    })

    function clearemployeedocumentattachmentform(){
        employeeattachmentidfield.val("0")
        employeeattachmentdocumentidfield.val("")
        employeeattachmentdocumentexpiryfield.val("")
        employeeattachmentdocumentexpirydatefield.val("")            
        employeeattachmentattachmentfield.val("")
        employeeattachmentnarrationfield.val("")
    }   

    function getemployeedocumentsastable(employeeid){
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeedocumentattachments:true,
                employeeid
            },
            (data)=>{
                let results=""
                data.forEach((document,i)=>{
                    const filename=document.attachment.split("/").pop()
                    results+=`<tr data-id=${document.id}>`
                    results+=`<td>${Number(i+1)}</td>`
                    results+=`<td>${document.documentname}</td>`
                    results+=`<td>${document.narration}</td>`
                    results+=`<td>${document.expires==1?formatDate(document.expirydate):'&lt;Never&gt;'}</td>`
                    if(data.attachment==""){
                        results+=`<td><i class="fal fa-cloud-download text-secondary fa-lg fa-fw"></i></td>`
                    }else{
                        results+=`<td><a href="${document.attachment}" download="${filename}"><i class="fal fa-cloud-download fa-lg fa-fw"></i></a></td>`
                    }
                    results+=`<td>${formatDate(document.dateadded)}</td>`
                    results+=`<td>${document.addedbyname}</td>`
                    // edit and delete buttons
                    results+=`<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                    results+=`<td><a href="#" class="delete"><i class="fal fa-trash fa-lg fa-fw text-danger"></i></a></td></tr>`
                })
                makedatatable(employeeattachmentstable,results)
            }
        )
    }
    

    // liste to edit the employee attachment
    employeeattachmentstable.on("click",".edit",function(){
        const id=$(this).closest("tr").attr("data-id")
            // employeeid=employeeidfield.val()
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeedocumentdetails:true,
                id
            },
            (data)=>{
                data=data[0]
                employeeattachmentidfield.val(data.id)
                employeeattachmentdocumentidfield.val(data.documentid)
                employeeattachmentdocumentexpiryfield.val(data.expires)
                employeeattachmentdocumentexpirydatefield.val(formatDate(data.expirydate))       
                employeeattachmentnarrationfield.val(data.narration)   
                // trigger document selection field
                employeeattachmentdocumentidfield.trigger("change")
                // clear notifications if any
                employeeattachmentnotificationdetails.html("")
                // show the modal
                documentdetaislmodal.modal("show")
            }
        )
    })

    // listen to delete employee document
    employeeattachmentstable.on("click",".delete",function(){
        const parent=$(this).closest("tr"),
            id=parent.attr("data-id"),
            documentname=parent.find("td").eq(1).text(),
            employeeid=employeeidfield.val()

        // confirm with bootbox
        bootbox.dialog({
            title: "Delete employee document",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Delete employee document <strong>${documentname}</strong> permanently.`,
            buttons: {
                success: {
                    label: "No, Keep",
                    className: "btn-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete Permanently",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        $.post(
                            "../controllers/employeeoperations.php",
                            {
                                deleteemployeedoucmentattachment:true,
                                id
                            },
                            (data)=>{
                                if(isJSON(data)){
                                    data=JSON.parse(data)
                                    if(data.status=="success"){
                                        employeeattachmentnotifications.html(showAlert("success",`Employee <strong>${documentname}</strong> was deleted successfully`))
                                        // refresh the list
                                        getemployeedocumentsastable(employeeid)
                                    }
                                }else{
                                    employeeattachmentnotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }
        })
    })

    const employeesleavesapplicationstable=$("#employeesleavesapplicationstable")
    // get employees leave applications
    function getemployeesleavesapplications(leavetypeid=0){
        // console.log("Processing all employee leaves")
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeeleaveapplications:true,
                leavetypeid
            },
            (data)=>{
                let results=""
                console.log(data)
                data.forEach((leave, i) => {
                    const filename = leave.attachment !== "" ? leave.attachment.split('/').pop() : "";
                    results += `<tr data-id=${leave.applicationid}><td>${Number(i + 1)}</td>`
                    results += `<td>${leave.staffno}</td>`
                    results += `<td>${leave.firstname} ${leave.middlename} ${leave.lastname}</td>`
                    results += `<td>${leave.leavename}</td>`
                    results += `<td>${formatDate(leave.dateadded)}</td>`
                    results += `<td>${formatDate(leave.startdate)}</td>`
                    results += `<td>${formatDate(leave.enddate)}</td>`
                    results += `<td>${leave.daystaken}</td>`
                    // results += `<td>${leave.narration}</td>`
                    results += `<td>${leave.relievername}</td>`
                    results += `<td>${titleCase(leave.status)}</td>`
                    if (leave.attachment !== "") {
                        results += `<td class='text-center'><a href="${leave.attachment}" download="${filename}"><i class="fal fa-cloud-download fa-lg fa-fw"></i></a></td>`
                    } else {
                        results += `<td class='text-center'><i class="fal fa-cloud-download fa-lg fa-fw text-secondary"></i></td>`
                    }

                    if(leave.status.includes("pending")){
                        results += `<td><a href="#" class="edit"><i class="fal fa-edit fa-lg fa-fw"></i></a></td>`
                        results += `<td><a href="#" class="process"><i class="fal fa-hourglass-half fa-lg fa-fw"></i></a></td>`
                        // results += `<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw"></i></a></td>`
                    }else{
                        results += `<td><i class="fal fa-edit fa-lg fa-fw text-secondary"></i></td>`
                        results += `<td><i class="fal fa-hourglass-half fa-lg fa-fw text-secondary"></i></td>`
                        // results += `<td><i class="fal fa-trash-alt fa-lg fa-fw text-secondary"></i></td>`   
                    }
                    
                    results += `<td><a href="#" class="timeline"><i class="fal fa-history fa-lg fa-fw"></i></a></td></tr>`

                })
                makedatatable(employeesleavesapplicationstable,results,15)   
            }
        )
    }

    const contractdetailsmodal=$("#contractdetailsmodal"),
        addnewcontractbutton=$("#addnewcontract"),
        contractstartdatefield=$("#contractstartdate")
        
    setDatePicker(contractstartdatefield,false,false)    

    addnewcontractbutton.on("click",()=>{
        contractdetailsmodal.modal("show")
    })

    const staffleaveapplicationhalfdayfield=$("#staffleaveapplicationhalfday"),
        staffleaveapplicationshifthalffield=$("#staffleaveapplicationshifthalf"),
        staffleaveapplicationstarttimefield=$("#staffleavestarttime"),
        staffleaveapplicationendtimefield=$("#staffleaveendtime")

    staffleaveapplicationhalfdayfield.on("change",()=>{
        const status=staffleaveapplicationhalfdayfield.val()
        if(status==1){
            staffleaveapplicationshifthalffield.prop("disabled",false)
        }else{
            staffleaveapplicationshifthalffield.prop("disabled",true)
        }
    })

    staffleaveapplicationhalfdayfield.on("change",function(){
        const startdate=sanitizestring(staffleavestartdatefield.val())
        if(startdate==""){
            staffleavedetailsnotifications.html(showAlert("info","Please select leave start date first"))
            staffleavestartdatefield.addClass("is-invalid text-danger").focus()
            $(this).val("")
        }else{
            if(staffleaveapplicationhalfdayfield.val()!=""){ 
                // get shift times
                staffleaveapplicationstarttimefield.val("")  
                staffleaveapplicationendtimefield.val("")
            }else{
                staffleaveapplicationstarttimefield.val("")  
                staffleaveapplicationendtimefield.val("")
            }
            staffleaveenddatefield.prop("disabled",(staffleaveapplicationhalfdayfield.val()==1?true:false))
            if(staffleaveapplicationhalfdayfield.val()==1){
                staffleavedaystakenlabel.html("0.5")
            }
        }
    })

    
    staffleaveapplicationshifthalffield.on("change",function(){
        const employeeid=employeeidfield.val(),
            date=sanitizestring(staffleavestartdatefield.val()),
            shifthalf=$(this).val()
        let errors=""

        if(date==""){
            errors="Please select leave date"
            staffleavedetailsnotifications.html(showAlert("info","Please select leave start date first"))
            staffleavestartdatefield.addClass("text-danger is-invalid").focus()
        }else{
            if(shifthalf==""){
                staffleaveapplicationstarttimefield.val("")
                staffleaveapplicationendtimefield.val("")
            }else{
                $.getJSON(
                    "../controllers/attendanceoperations.php",
                    {
                        getshiftstartandendhalftimes:true,
                        employeeid,
                        date,
                        shifthalf
                    },
                    (data)=>{
                        data=data[0]
                        staffleaveapplicationstarttimefield.val(data.starts)
                        staffleaveapplicationendtimefield.val(data.ends)
                    }
                )
            }
        }
    })

    // edit existing leave application
    staffleaveapplicationstable.on("click", ".edit", function () {
        const applicationid = $(this).closest("tr").attr("data-id")
        // check status first
        const statusPromise = getleaveapplicationstatus(applicationid)
        // Use the promise to handle the result
        statusPromise.done(function(status) {
            if(status.includes("pending")){
                $.getJSON(
                    "../controllers/leaveoperations.php",
                    {
                        getleaveapplicationdetails: true,
                        applicationid
                    },
                    (data) => {
                        data = data[0]
                        // staffleaveapplicationidfield.val(data.applicationid)
                        staffleavetypefiled.val(data.leavetypeid),
                        staffleavetypefiled.trigger("change")
                        staffleavestartdatefield.val(formatDate(data.startdate))
                        staffleaveenddatefield.val(formatDate(data.enddate))
                        staffleavestartdatefield.trigger("change")
                        staffleavedaystakenlabel.html(data.daystaken)
                        staffleavenarrationfield.val(data.narration)
                        staffleaveattachmentfield.val("")
                        staffleaveapplicationidfield.val(data.applicationid)
                        staffleaveapplicationhalfdayfield.val(data.halfdayapplication)
                        staffleaveapplicationhalfdayfield.trigger("change")
                        staffleaveapplicationshifthalffield.val(data.shifthalf)
                        staffleaveapplicationshifthalffield.trigger("change")
                        staffleaveapplicationstarttimefield.val(data.starttime)
                        staffleaveapplicationendtimefield.val(data.endtime)

                        const employeeid = employeeidfield.val()

                        getemployeedepartmentcolleagues(staffleaverelieverfield, employeeid, 'choose').done(() => {
                            getemployeesupervisors(staffleavesupervisorfield, employeeid, 'choose').done(() => {
                                staffleaverelieverfield.val(data.relieverid)
                                staffleavesupervisorfield.val(data.supervisorid)
                            })
                        })

                        // show leave application details modal
                        leavedetailsmodal.modal("show")
                        staffleavedetailsnotifications.html("")
                    }
                )
            }else{
                employeeleavesnotifications.html(showAlert("info",`Leave application status is <strong>${titleCase(status)}</strong> hence cannot be edited`))
            }
        })       
    })

    // Process leave application
    staffleaveapplicationstable.on("click", ".process", function () {
        const applicationid = $(this).closest("tr").attr("data-id")
        const statusPromise = getleaveapplicationstatus(applicationid)
        
        statusPromise.done(function(status){
            if(status.includes("pending")){
                // show modal
                leaveapprovalmodal.modal("show")
                // get approval level statuses
                $.getJSON(
                    "../controllers/leaveoperations.php",
                    {
                        getleaveapplicationapprovalstatuses: true,
                        applicationid
                    },
                    (data) => {
                        let results = "", currentlevel = false
                        data.forEach((level, i) => {
                            const approvallevel = level.approvallevel == "supervisor" ? "Supervisor" : level.approvallevel == "hrmanager" ? "Human Resource Manager" : "Senior Level Management"
                            if (level.done == 1) {
                                results += `<div data-id="${level.approvalid}" data-currentlevel="${currentlevel}"  class="mb-2 text-success">
                                    <i class='fal text-success fa-check-circle fa-lg fa-fw'></i>
                                    ${approvallevel}
                                </div>`
                            }else if (level.done == 0 && currentlevel == false) {
                                currentlevel = true
                                results += `<div data-id="${level.approvalid}" data-currentlevel="${currentlevel}" data-applicationid="${level.applicationid}" id="currentlevel" class="mb-2 text-success font-weight-bold">
                                    <i class='fas text-success fa-check-circle fa-lg fa-fw'></i>
                                    ${approvallevel}
                                </div>`
                            }else {
                                results += `<div data-id="${level.approvalid}" data-currentlevel="${currentlevel}" class="mb-2">
                                    <i class='fal text-secondary fa-clock fa-lg fa-fw'></i>
                                    ${approvallevel}
                                </div>`
                            }
                        })
                        approvalleveldiv.html(results) 
                        // reset approval and narration fields
                        leaveapprovalstatus.val("")
                        leaveapprovalnarration.val("")
                    }
                )
            }else{
                employeeleavesnotifications.html(showAlert("info",`Leave application status is <strong>${titleCase(status)}</strong> hence cannot be edited`))
            }
        }) 
    })

    const leavetimelinemodal=$("#leavetimelinemodal"),
        leavtimelinedetails=$("#leavetimelineactivities")

    // Display leave timeline
    staffleaveapplicationstable.on("click",".timeline",function(){
        const applicationid=$(this).closest("tr").attr("data-id")
        // get leave timeline details
        $.getJSON(
            "../controllers/leaveoperations.php",
            {
                getleaveapplicationtimeline:true,
                applicationid
            },
            (data)=>{
                let results=""
                data.forEach((activity)=>{
                    results+=`
                        <li class="${activity.activity=="Application"?"current-time":"" } ${activity.status=="approved"?"completed": activity.status=="cancelled"?"danger":""}">
                            <span class="time">
                                ${activity.date===null?"-":activity.date}
                                <small>${activity.time===null?"-":activity.time}</small>
                            </span>
                            <span class="bubble"></span>
                            <span class="stacked-text">
                                ${activity.activity}
                                <span class="subdued ${activity.status=='approved'?" text-success": activity.status=="cancelled"?" text-danger":""} font-weight-bold">${titleCase(activity.status)}</span>
                                <span class="subdued">${activity.user}</span>
                                <span class="subdued">${activity.narration}</span>
                            </span>
                        </li>
                    `
                })
                leavtimelinedetails.html(results)
            }
        )
        // show leave time line modal
        leavetimelinemodal.modal("show")
    })

    const leaveapprovalmodal = $("#leaveapprovalmodal"),
        approvalleveldiv = $("#leaveprocessingstatuses"),
        saveleaveprocessing = $("#saveleaveprocessing"),
        leaveapprovalstatus = $('#leaveapprovalstatus'),
        leaveapprovalnarration = $('#leaveapprovalnarration'),
        employeeleavesnotifications=$("#employeeleavenotifications"),
        leaveprocessingnotifications=$("#leaveprocessingnotifications")

    saveleaveprocessing.on('click',  ()=> {
        // event.preventDefault();
        const leave=$('#currentlevel'),
            approvallevelid=leave.attr("data-id"),
            applicationid=leave.attr("data-applicationid"),
            status=leaveapprovalstatus.val(),
            narration=sanitizestring(leaveapprovalnarration.val())
        let errors = ''
           
        if ( status == "") {
            errors="Please select leave approval status";
            leaveapprovalstatus.focus()
        }
        if (errors=="") {
            leaveprocessingnotifications.html(showAlert("processing","Processing. Please wait ..."))
            $.post(
                "../controllers/leaveoperations.php",
                {
                    approveleaveapplication:true,
                    applicationid,
                    approvallevelid,
                    status,
                    narration
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if(data.status=="success"){
                            // unload modal
                            leaveapprovalmodal.modal("hide")
                            // refresh list
                            const employeeid=employeeidfield.val()
                            getemployeeleavesastable(employeeid)
                            // show notification
                            employeeleavesnotifications.html(showAlert("success",`Leave application processing was completed successful`))
                            leaveprocessingnotifications.html("")
                        }
                    }else{
                        leaveprocessingnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            leaveprocessingnotifications.html(showAlert("info", errors))
        }
    })

})