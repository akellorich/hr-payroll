$(document).ready(() => {
    const currentmenu = $("#payroll")
    setactivemenu(currentmenu)

    const inputfield = $("input"),
        selectfield = $("select"),
        banknotifications = $("#banknotifications")

    getexistinganksastable()
    getbankbranchesastable()
    getemploymenttermsastable()
    getjobgroupsastable()
    getnotchesastable()

    // get existing leave applications for all employees
    getemployeesleavesapplications()

    // get existing employees
    // beginfilteremployeesbutton.trigger("click")

    const events = [
        {
            title: 'All Day Event',
            start: '2024-06-01'
        },
        {
            title: 'Long Event',
            start: '2024-06-07',
            end: '2024-06-10'
        },
        {
            groupId: '999',
            title: 'Repeating Event',
            start: '2024-06-09T16:00:00'
        },
        {
            groupId: '999',
            title: 'Repeating Event',
            start: '2024-06-16T16:00:00'
        },
        {
            title: 'Conference',
            start: '2024-06-11',
            end: '2024-06-13'
        },
        {
            title: 'Meeting',
            start: '2024-06-12T10:30:00',
            end: '2024-06-12T12:30:00'
        },
        {
            title: 'Lunch',
            start: '2024-06-12T12:00:00'
        },
        {
            title: 'Meeting',
            start: '2024-06-12T14:30:00'
        },
        {
            title: 'Birthday Party',
            start: '2024-06-13T07:00:00'
        },
        {
            title: 'Click for Google',
            url: 'https://google.com/',
            start: '2024-06-28'
        }
    ]

    const calendarEl = $('#leavecalendar')[0]
    const calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth',
        initialDate: '2024-06-07',
        headerToolbar: {
            left: 'prev,next today',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay'
        },
        events
    });

    calendar.render();

    // resfresh calendar size on display of the hidden tab
    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        if (e.target.id === 'leavesettings-tab' || e.target.id == "leavedashboard") {
            // Refresh the calendar size when the tab becomes visible
            calendar.updateSize();
        }
    })

    // hide any errors or notificatioon when input field gets typed into
    inputfield.on("input", () => {
        bankdetailsnotifications.html("")
        branchnotificationdetails.html("")
        employmenttermdetailsnotifications.html("")
        holidaydetailsnotifications.html("")
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
        employeenotifications.html("")
        employeepayrollitemdetailsnotifications.html("")
        employeepayrollitemsnotifications.html("")
        importemppayitemsnotifications.html("")
        payrollgroupitemdetailsnotifications.html("")
        leaveflowdetailsnotifications.html("")
        leaveapprovalnotifications.html("")
        staffleavedetailsnotifications.html("")
        leaveprocessingnotifications.html("")
        employeeebeneficiarydetailsnotifications.html("")
        internalexperiencedetailsnotifications.html("")
        externalexperiencedetailsnotification.html("")
        coursedetailsnotifications.html("")
        displinarydetailsnotifications.html("")
        employeeattachmentnotificationdetails.html("")
    })

    selectfield.on("change", () => {
        inputfield.trigger("input")
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
    const payrollitembracketedfield = $("#payrollitembracketed"),
        payrollitembracketedpercentagefield = $('#payrollitempercentage'),
        payrollitembracketeditemfield = $("#payrollitembracketeditem"),
        bracketeddetails = $("#bracketeddetails")

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

    const newpayrollprocessingbutton = $("#newpayrollprocessing"),
        payrollprocessingmodal = $("#payrollprocessingmodal"),
        payrollprocessingmonthfield = $("#payrollmonth"),
        payrollprocessiingyearfield = $("#payrollyear")

    newpayrollprocessingbutton.on("click", () => {
        payrollprocessingmodal.modal("show")
    })

    populatemonths(payrollprocessingmonthfield)
    populateyears(payrollprocessiingyearfield)

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
        employmenttermdetailsnottiifcations = $("#employmenttermdetailsnotifications")

    jobgroupnotchselectioncheckbox.on("click", () => {
        console.log(jobgroupnotchselectioncheckbox.prop("checked"))
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
        console.log(dependantexperienceselectioncheckbox.prop("checked"))
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

    const leavetypedetailsmodal = $("#leavetypedetailsmodal"),
        addnewleavetypebutton = $("#addnewleavetype")

    addnewleavetypebutton.on("click", () => {
        leavetypedetailsmodal.modal("show")
    })

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

    const payrollcreditordetailsmodal = $("#payrollcreditordetailsmodal"),
        addnewpayrollcreditorbutton = $("#addnewcreditor")

    addnewpayrollcreditorbutton.on("click", () => {
        creditordetailsnotifications.html("")
        creditornotifications.html("")
        payrollcreditordetailsmodal.modal("show")
    })


    const importemployeepayrollitemsmodal = $("#importemployeepayrollitemsmodal"),
        importemployeepayitemsbutton = $("#importemployeepayrollitems")

    importemployeepayitemsbutton.on("click", () => {
        importemployeepayrollitemsmodal.modal("show")
    })

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
        positionfield = $("#employeeposition")

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

    getdepartmentsastable()
    // save departments
    const departmentidfield = $("#departmentid"),
        departmentnamefield = $("#departmentname"),
        departmenthodfield = $("#departmenthead"),
        departmentextensionfield = $("#departmentextension"),
        departmentnotifications = $("#departmentnotifications"),
        departmentstable = $("#departmentstable"),
        savedepartmentbutton = $("#savedepartmentbutton")

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
            positionid = positionfield.val()
        let errors = ""
        // check for blank fields

        if (salutationid == "") {
            errors = "Please select employee's <strong>salutation</strong>"
            employeesalutationfield.focus()
        } else if (iddocumentid == "") {
            errors = "Please select employee's <strong>identification document</strong>"
            employeeiddocumentfield.focus()
        } else if (iddocreferenceno == "") {
            errors = `Please provide employee's <strong>${documentname}</strong> number.`
            employeeiddocreferencenofield.focus()
        } else if (employeeiddocumentfield.find("option:selected").attr("data-expires") == 1 && iddocexpirydate == "") {
            errors = `Please provide employee's <strong>${documentname}</strong> expiry date`
        } else if (firstname == "") {
            errors = "Please provide employee's <strong>first name</strong>"
            employeefirstnamefield.focus()
        } else if (middlename == "") {
            errors = "Please provide employee's <strong>middle name</strong>"
            employeemiddlenamefield.focus()
        } else if (religionid == "") {
            errors = "Please select employee's <strong>religion</strong>"
            employeereligionfield.focus()
        } else if (gender == "") {
            errors = "Please select employee's <strong>gender</strong>"
            employeegenderfield.focus()
        } else if (dateofbirth == "") {
            errors = "Please select employee's <strong>birth date</strong>"
            employeedobfield.focus()
        } else if (disabled == "") {
            errors = "Please select employee's <strong>disability status</strong>"
            employeehasdisabilityfield.focus()
        } else if (disabled == 1 && disabilitytype == "") {
            errors = "Please select employee <strong>disability type</strong>"
            employeedisabilitytypefield.focus()
        } else if (disabled == 1 && disabilitydescription == "") {
            errors = "Please <strong>describe</strong> employee's disability"
            employeedisabilitydescriptionfield.focus()
        } else if (disabled == 1 && disabilitycertificateno == "") {
            errors = "Please provide <strong>Disability Certificate Number</strong>"
            employeedisabilitycertificatenofield.focus()
        } else if (pinno == "") {
            errors = "Please provide employee's <strong>PIN number</strong>"
            employeepinnofield.focus()
        } else if (nhifno == "") {
            errors = "Please provide employee's <strong>NHIF number</strong>"
            employeenhiffield.focus()
        } else if (nssfno == "") {
            errors = "Please provide employees <strong>NSSF number</strong>"
            employeenssfnofield.focus()
        } else if (onpayroll == "") {
            errors = "Please select employee's <strong>payroll status</strong>"
            employeeonpayrollfield.focus()
        } else if (onpayroll == 1 && fixedpaye == "") {
            errors = "Please select employee's <strong>fixed paye status</strong>"
            employeefixedpayefield.focus()
        } else if (mobile == "") {
            errors = "Please provide employee's <strong>mobile</strong>"
            employeemobilefield.focus()
        } else if (!validatefielddata(mobile, "mobile")) {
            errors = "Invalid <strong>mobile</strong> number format"
            employeemobilefield.focus()
        } else if (emailaddress == "") {
            errors = "Please provide employee's <strong>email address</strong>"
            employeeemailaddressfield.focus()
        } else if (!validatefielddata(emailaddress, "email")) {
            errors = "Invalid <strong>email address</strong> format"
            employeeemailaddressfield.focus()
        } else if (alternativemobile !== "" && !validatefielddata(alternativemobile, "mobile")) {
            errors = "Invalid <strong>alternative mobile</strong> number format"
            employeealternatemobilefield.focus()
        } else if (alternativeemailaddress !== "" && !validatefielddata(alternativeemailaddress, "email")) {
            errors = "Invalid <strong>alternative email address</strong> format"
            employeeemailaddressfield.focus()
        } else if (generatestaffno != 1 && staffno == "") {
            errors = "Please provide employee's <strong>staff no</strong>"
            employeestaffnofield.focus()
        } else if (categoryid == "") {
            errors = "Please select employee's <strong>category</strong>"
            employeecategoryfield.focus()
        } else if (termid == "") {
            errors = "Please select employee's <strong>employment term</strong>"
            employeeemploymenttermfield.focus()
        } else if (departmentid == "") {
            errors = "Please select employee's <strong>department</strong>"
            employeedepartmentfield.focus()
        } else if (employmentdate == "") {
            errors = "Please select employee's <strong>employment date</strong>"
            employeeemploymentdatefield.focus()
        } else if (status == "") {
            errors = "Please select employment <strong>status</strong>"
            employeestatusfield.focus()
        } else if (status != "active" && separationdate == "") {
            errors = "Please select employee's <strong>separation date</strong>"
            employeeseparationdatefield.focus()
        } else if (status != "active" && separationreason == "") {
            errors = "Please select employee <strong>separation reason</strong>"
            employeeseparationreasonfield.focus()
        } else if (positionid == "") {
            errors = "Please select employee's <strong>position</strong>"
            positionfield.focus()
        } else if (jobgroupid == "") {
            errors = "Please select employee's <strong>job group</strong>"
            employeejobgroupfield.focus()
        } else if (notchid == "") {
            errors = "Please select employee's <strong>notch</strong>"
            employeenotchfield.focus()
        } else if (bankbranchid == "") {
            errors = "Please select employee's <strong>bank and branch</strong>"
            if (employeebankfield.val() == "") {
                employeebankfield.focus()
            } else {
                employeebankbranchfield.focus()
            }
        } else if (accountnumber == "") {
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
                    salutationid
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

    // process the payroll 
    const payrolltaxlabelfield = $("#payrolltaxlabel"),
        processpayrollbutton = $("#processpayroll"),
        payrollprocessingdetailsnotification = $("#payrollprocessingdetailsnotifications"),
        processedpayrollstable = $("#processedpayrollstable"),
        payrollprocessingnotifications = $("#payrollprocessingnotifications")

    // get applicable tax brackets they can vary from period to period
    gettaxlabels(payrolltaxlabelfield, 'choose')
    // get processed payrolls
    getprocessedpayrolls()

    processpayrollbutton.on("click", () => {
        const month = payrollprocessingmonthfield.find("option:selected").text(),
            year = payrollprocessiingyearfield.val(),
            taxlabel = payrolltaxlabelfield.find("option:selected").text()

        let errors = ""
        console.log("processing button clicked")

        if (taxlabel == "") {
            errors = "Please select tax label first"
        }

        if (errors == "") {
            payrollprocessingdetailsnotification.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.post(
                "../controllers/payrolloperations.php",
                {
                    processpayroll: true,
                    month,
                    year,
                    taxlabel
                },
                (data) => {
                    if (isJSON(data)) {
                        data = JSON.parse(data)
                        if (data.status == "success") {
                            payrollprocessingdetailsnotification.html(showAlert("success", `Payroll for <strong> ${month} ${year}</strong> has been processed successfully`))
                            // refresh payroll list
                            getprocessedpayrolls()
                        } else if (data.status == "open") {
                            payrollprocessingdetailsnotification.html(showAlert("info", `Previous payroll period has not been closed.`))
                        } else if (data.status == "closed") {
                            payrollprocessingdetailsnotification.html(showAlert("info", `This payroll processing period has already been closed.`))
                        }
                    } else {
                        payrollprocessingdetailsnotification.html(showAlert("danger", `Sorry an error occured ${data}`))
                    }
                }
            )
        } else {
            payrollprocessingdetailsnotification.html(showAlert("info", errors))
        }
    })

    function getprocessedpayrolls() {
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getprocessedpayrolls: true
            },
            (data) => {
                let results = ""
                data.forEach((payroll, i) => {
                    const netsalary = payroll.grosssalary - payroll.deductions
                    results += `<tr data-id='${payroll.payrollid}'>`
                    results += `<td>${Number(i + 1)}</td>`
                    results += `<td>${formatDate(payroll.dateadded)}</td>`
                    results += `<td>${payroll.month}</td>`
                    results += `<td>${payroll.year}</td>`
                    results += `<td>${$.number(payroll.employees)}</td>`
                    results += `<td>${$.number(payroll.grosssalary, 2)}</td>`
                    results += `<td>${$.number(payroll.deductions, 2)}</td>`
                    results += `<td>${$.number(netsalary)}</td>`
                    results += `<td>${payroll.addedbyname}</td>`
                    results += `<td>${titleCase(payroll.status)}</td>`
                    results += `<td><a href="#" class="viewregister"><i class="fad fa-chart-bar fa-lg fa-fw"></i></a></td>`
                    if (payroll.status == "open") {
                        results += `<td><a href="#" class="closeperiod"><i class="fad fa-sign-out fa-lg fa-fw text-danger"></i></a></td></tr>`
                    } else {
                        results += `<td>&nbsp;</td></tr>`
                    }
                })
                makedatatable(processedpayrollstable,results,15)
            }
        )
    }

    // close payroll period
    processedpayrollstable.on("click", ".closeperiod", function () {
        const parent = $(this).closest("tr"),
            payrollid = parent.attr("data-id"),
            payrollperiod = parent.find("td").eq(2).text() + " " + parent.find("td").eq(3).text()

        // confirm with bootbox
        bootbox.dialog({
            title: "Close Payroll Period",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Confirm closure for <strong>${payrollperiod}</strong>. This will be irreversible!`,
            buttons: {
                success: {
                    label: "No, Leave Open",
                    className: "btn-outline-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Close Period",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        payrollprocessingnotifications.html(showAlert("processing", "Processing. Please wait ..."))
                        $.post(
                            "../controllers/payrolloperations.php",
                            {
                                closepayrollperiod: true,
                                payrollid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {
                                        payrollprocessingnotifications.html(showAlert("success", `Payroll period <strong>${payrollperiod}</strong> was closed successfully`))
                                        // refresh list
                                        getprocessedpayrolls()
                                    }
                                } else {
                                    payrollprocessingnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }


        })
    })

    // payroll reports
    const filterreportmonthfield = $("#filterreportmonth"),
        filterreportyearfield = $("#filterreportyear"),
        filterreportsearchbutton = $("#filterreport"),
        filterreporttable = $("#payrollreport"),
        filterreportnotifications = $("#filterreportnotifications"),
        filterreportname = $("#reportname"),
        filterreportbanksfield = $("#filterpayrollbanks"),
        filterpayrollbanksdiv = $("#filterreportbanks"),
        filterthirdpartydiv = $("#filterthirdparties"),
        filterthirdpartyvendors = $("#filterpayrollthirdpaties"),
        filternormalemployeesdiv = $("#normalemployees"),
        filterdisabledemployeesdiv = $("#disabilityemployees"),
        filterpayrollregisterreporttype = $("#payrollregisterreporttype")

    populatemonths(filterreportmonthfield)
    populateyears(filterreportyearfield)
    getbanks(filterreportbanksfield)
    getcreditors(filterthirdpartyvendors)

    const changesdiv = $("#payrollchangesdetails"),
        entrantsdiv = $("#entrantdetails"),
        exitsdiv = $("#existsdetails")

    let itemcolcount = 0

    filterpayrollregisterreporttype.on("change", () => {
        filterreporttable.html("")
    })

    // get payroll reports
    filterreportsearchbutton.on("click", () => {
        const month = filterreportmonthfield.find("option:selected").text(),
            year = filterreportyearfield.val(),
            reportname = filterreportname.val(),
            reporttype = filterpayrollregisterreporttype.val()

        if (reportname == "payrollregister") {
            // get report type
            const payload = reporttype == "detailed" ? { month, year, getpayrollregisterdetailed: true } : { month, year, getpayrollregistersummary: true }
            filterreportnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.getJSON(
                "../controllers/payrolloperations.php",
                payload,
                (data) => {
                    // generate table headings
                    let thead = "<thead><th>#</th>", results = "<tbody>", tfoot = ""
                    // use the first object to extract all table headings
                    Object.keys(data[0]).forEach((key, i) => {
                        // console.log(key, data[key]);
                        thead += `<th ${Number(i + 1) > 2 ? " class='text-right'" : ''}>${key}</th>`
                    })
                    thead += `</thead>`
                    // loop through all objects extracting the data
                    data.forEach((employee, counter) => {
                        results += `<tr><td>${$.number(counter + 1)}</td>`
                        Object.keys(employee).forEach((key, i) => {
                            // console.log(key)
                            if (key == "Staff Number") {
                                link = `<a href="#" class='payslip' data-staffno=${employee[key]} data-month=${month} data-year=${year}>${employee[key]}</a>`
                                results += `<td ${Number(i + 1) > 2 ? " class='text-right'" : ''}>${link}</td>`
                            } else {
                                results += `<td ${Number(i + 1) > 2 ? " class='text-right'" : ''}>${employee[key]}</td>`
                            }
                        })
                        results += `</tr>`
                    })

                    results += `</tbody>`
                    filterreporttable.html(`${thead}${results}`)

                    // perform totals for each collumn
                    tfoot = `<tfoot><th colspan='3'>TOTALS: </th>`
                    const cols = filterreporttable.find("thead th").length

                    for (let i = 3; i < cols; i++) {
                        let rowtotal = 0
                        filterreporttable.find("tbody tr").each(function () {
                            rowtotal += parseFloat($(this).find("td").eq(i).text().replace(",", ""))
                        })
                        tfoot += `<th class='text-right'>${$.number(rowtotal, 2)}</th>`
                    }

                    tfoot += `</tfoot>`

                    // add totals row at the footer of the table
                    $(tfoot).appendTo(filterreporttable)

                    filterreportnotifications.html(showAlert("success", "Processing Done!"))
                    hidereportfilternotifications()
                }
            )
        } else if (reportname == "statutoryremittances") {
            const itemid = filterstatutoryremittanceadvisesfield.val(),
                itemname = filterstatutoryremittanceadvisesfield.find("option:selected").text().toUpperCase()
            let errors = ""

            if (itemid == 0) {
                errors = "Please select a statutory item first!"
                filterstatutoryremittanceadvisesfield.focus()
            }

            if (errors == "") {
                filterreportnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
                if (itemname == "PAYE") {
                    $.getJSON(
                        "../controllers/payrolloperations.php",
                        {
                            getpayeremittanceadvise: true,
                            month,
                            year,
                            itemid
                        },
                        (data) => {
                            let thead = "<thead><th>#</th>", results = "<tbody>", tfoot = ""
                            // use the first object to extract all table headings
                            Object.keys(data[0]).forEach((key, i) => {
                                // console.log(i)
                                thead += `<th ${i == 4 ? " class='text-right'" : ''}>${key}</th>`
                            })
                            thead += `</thead>`
                            // loop through all objects extracting the data
                            data.forEach((employee, counter) => {
                                results += `<tr><td>${$.number(counter + 1)}</td>`
                                Object.keys(employee).forEach((key, i) => {
                                    results += `<td ${i == 4 ? " class='text-right'" : ''}>${employee[key]}</td>`
                                })
                                results += `</tr>`
                            })

                            results += `</tbody>`
                            filterreporttable.html(`${thead}${results}`)

                            // perform totals for PAYE collumn
                            tfoot = `<tfoot><th colspan='5' class="text-right">TOTAL: </th>`
                            let rowtotal = 0
                            filterreporttable.find("tbody tr").each(function () {
                                rowtotal += parseFloat($(this).find("td").eq(5).text().replace(",", ""))
                            })
                            tfoot += `<th class='text-right'>${$.number(rowtotal, 2)}</th></tfoot>`
                            $(tfoot).appendTo(filterreporttable)

                            filterreportnotifications.html(showAlert("success", "Processing Done!"))
                            hidereportfilternotifications()
                        }
                    )
                } else if (itemname == "NSSF") {
                    $.getJSON(
                        "../controllers/payrolloperations.php",
                        {
                            getnssfremittanceadvise: true,
                            month,
                            year,
                            itemid
                        },
                        (data) => {
                            let thead = "<thead><th>#</th>", results = "<tbody>", tfoot = ""
                            // use the first object to extract all table headings
                            Object.keys(data[0]).forEach((key, i) => {
                                thead += `<th ${i >= 5 ? " class='text-right'" : ''}>${key}</th>`
                            })
                            thead += `</thead>`
                            // loop through all objects extracting the data
                            data.forEach((employee, counter) => {
                                results += `<tr><td>${$.number(counter + 1)}</td>`
                                Object.keys(employee).forEach((key, i) => {
                                    results += `<td ${i >= 5 ? " class='text-right'" : ''}>${employee[key]}</td>`
                                })
                                results += `</tr>`
                            })

                            results += `</tbody>`
                            filterreporttable.html(`${thead}${results}`)

                            // perform totals for NSSF collumn
                            tfoot = `<tfoot><th colspan='7' class="text-right">TOTALS: </th>`
                            const cols = filterreporttable.find("thead th").length

                            for (let i = 7; i < cols; i++) {
                                let rowtotal = 0
                                filterreporttable.find("tbody tr").each(function () {
                                    rowtotal += parseFloat($(this).find("td").eq(i).text().replace(",", ""))
                                })
                                tfoot += `<th class='text-right'>${$.number(rowtotal, 2)}</th>`
                            }

                            tfoot += `</tfoot>`

                            // add totals row at the footer of the table
                            $(tfoot).appendTo(filterreporttable)

                            filterreportnotifications.html(showAlert("success", "Processing Done!"))
                            hidereportfilternotifications()
                        }
                    )
                } else if (itemname == "NHIF") {
                    $.getJSON(
                        "../controllers/payrolloperations.php",
                        {
                            getnhifremittance: true,
                            month,
                            year,
                            itemid
                        },
                        (data) => {
                            let thead = "<thead><th>#</th>", results = "<tbody>", tfoot = ""
                            // use the first object to extract all table headings
                            Object.keys(data[0]).forEach((key, i) => {
                                thead += `<th ${i == 5 ? " class='text-right'" : ''}>${key}</th>`
                            })
                            thead += `</thead>`
                            // loop through all objects extracting the data
                            data.forEach((employee, counter) => {
                                results += `<tr><td>${$.number(counter + 1)}</td>`
                                Object.keys(employee).forEach((key, i) => {
                                    results += `<td ${i == 5 ? " class='text-right'" : ''}>${employee[key]}</td>`
                                })
                                results += `</tr>`
                            })

                            results += `</tbody>`
                            filterreporttable.html(`${thead}${results}`)

                            // perform totals for NHIF collumn
                            tfoot = `<tfoot><th colspan='6' class="text-right">TOTAL: </th>`
                            let rowtotal = 0
                            filterreporttable.find("tbody tr").each(function () {
                                rowtotal += parseFloat($(this).find("td").eq(6).text().replace(",", ""))
                            })
                            tfoot += `<th class='text-right'>${$.number(rowtotal, 2)}</th></tfoot>`
                            $(tfoot).appendTo(filterreporttable)

                            filterreportnotifications.html(showAlert("success", "Processing Done!"))
                            hidereportfilternotifications()
                        }
                    )
                } else {
                    //  get statutory remittance advise in standard format
                    $.getJSON(
                        "../controllers/payrolloperations.php",
                        {
                            getstatutoryremittanceadvise: true,
                            month,
                            year,
                            itemid
                        },
                        (data) => {
                            let thead = "<thead><th>#</th>", results = "<tbody>", tfoot = ""
                            // use the first object to extract all table headings
                            Object.keys(data[0]).forEach((key, i) => {
                                thead += `<th ${i == 4 ? " class='text-right'" : ''}>${key}</th>`
                            })
                            thead += `</thead>`
                            // loop through all objects extracting the data
                            data.forEach((employee, counter) => {
                                results += `<tr><td>${$.number(counter + 1)}</td>`
                                Object.keys(employee).forEach((key, i) => {
                                    results += `<td ${i == 4 ? " class='text-right'" : ''}>${employee[key]}</td>`
                                })
                                results += `</tr>`
                            })

                            results += `</tbody>`
                            filterreporttable.html(`${thead}${results}`)

                            // perform totals for NHIF collumn
                            tfoot = `<tfoot><th colspan='5' class="text-right">TOTAL: </th>`
                            let rowtotal = 0
                            filterreporttable.find("tbody tr").each(function () {
                                rowtotal += parseFloat($(this).find("td").eq(5).text().replace(",", ""))
                            })
                            tfoot += `<th class='text-right'>${$.number(rowtotal, 2)}</th></tfoot>`
                            $(tfoot).appendTo(filterreporttable)

                            filterreportnotifications.html(showAlert("success", "Processing Done!"))
                            hidereportfilternotifications()
                        }
                    )
                }
            } else {
                filterreportnotifications.html(showAlert("info", errors))
            }
        } else if (reportname == "bankremittances") {
            const bankid = filterreportbanksfield.val()
            filterreportnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.getJSON(
                "../controllers/payrolloperations.php",
                {
                    getpayrollremittanceadvise: true,
                    month,
                    year,
                    bankid
                },

                (data) => {
                    let thead = "<thead><th>#</th>", results = "<tbody>", tfoot = ""
                    // use the first object to extract all table headings
                    Object.keys(data[0]).forEach((key, i) => {
                        thead += `<th ${i == 7 ? " class='text-right'" : ''}>${key}</th>`
                    })
                    thead += `</thead>`
                    // loop through all objects extracting the data
                    data.forEach((employee, counter) => {
                        results += `<tr><td>${$.number(counter + 1)}</td>`
                        Object.keys(employee).forEach((key, i) => {
                            results += `<td ${i == 7 ? " class='text-right'" : ''}>${employee[key]}</td>`
                        })
                        results += `</tr>`
                    })

                    results += `</tbody>`
                    filterreporttable.html(`${thead}${results}`)

                    // perform totals for NHIF collumn
                    tfoot = `<tfoot><th colspan='8' class="text-right">TOTAL: </th>`
                    let rowtotal = 0
                    filterreporttable.find("tbody tr").each(function () {
                        rowtotal += parseFloat($(this).find("td").eq(8).text().replace(",", ""))
                    })
                    tfoot += `<th class='text-right'>${$.number(rowtotal, 2)}</th></tfoot>`
                    $(tfoot).appendTo(filterreporttable)

                    filterreportnotifications.html(showAlert("success", "Processing Done!"))
                    hidereportfilternotifications()
                }
            )
        } else if (reportname == "thirdpatyremittances") {
            getthirdpartyremittancenavbar(month, year).done(() => {
                // loop through all third parties and get their items
                $("#thirdpartynavbar a").each(function () {
                    const creditorid = $(this).attr("data-id")
                    let creditoritems = `<div class='pt-3'></div><table class='table table-sm table-striped table-hover' id='creditor${creditorid}table'><thead><th>#</th>`
                    $.getJSON(
                        "../controllers/payrolloperations.php",
                        {
                            getthirdpartyremittanceadvise: true,
                            month,
                            year,
                            creditorid
                        },
                        (creditordata) => {
                            Object.keys(creditordata[0]).forEach((key, i) => {
                                creditoritems += `<th ${i > 2 ? " class='text-right'" : ''}>${key}</th>`
                            })
                            creditoritems += `</thead><tbody>`

                            creditordata.forEach((item, i) => {
                                creditoritems += `<tr><td>${$.number(i + 1)}</td>`
                                Object.keys(item).forEach((key, i) => {
                                    creditoritems += `<td ${i > 2 ? " class='text-right'" : ''}>${item[key]}</td>`
                                })
                                creditoritems += `</tr>`
                            })
                            creditoritems += "</tbody></table>"

                            // locate id with creditor mark and populate the data
                            $(`#creditor${creditorid}`).html(creditoritems)
                            // perform table totals

                            const filterreporttable = $(`#creditor${creditorid} table`)

                            let tfoot = `<tfoot><th colspan='4'>TOTALS: </th>`
                            const cols = filterreporttable.find("thead th").length

                            for (let i = 4; i < cols; i++) {
                                let rowtotal = 0
                                filterreporttable.find("tbody tr").each(function () {
                                    rowtotal += parseFloat($(this).find("td").eq(i).text().replace(",", ""))
                                })
                                tfoot += `<th class='text-right'>${$.number(rowtotal, 2)}</th>`
                            }

                            tfoot += `</tfoot>`
                            // add totals row at the footer of the table
                            $(tfoot).appendTo(filterreporttable)
                        }
                    )
                })
            })
        } else if (reportname == "payrollchanges") {
            // get payroll changes
            getpayrollchangesitems(month, year).done(() => {
                // reset table tbody content
                changesdiv.find("table tbody tr").remove()
                $.getJSON(
                    "../controllers/payrolloperations.php",
                    {
                        getpayrollchangesemployees: true,
                        month,
                        year
                    },
                    (data) => {
                        // console.log(data)
                        let previousemployeeid = "",
                            employeecounter = 0
                        // const changesdiv.find("table thead th").length
                        // console.log(itemcolcount)
                        data.forEach(employee => {
                            let currentcol = 0, results = ""
                            // get colum with current item as heading
                            changesdiv.find("table thead th").each(function (i) {
                                if ($(this).text() == employee.itemname) {
                                    const position = $(this).attr("data-position")
                                    currentcol = 2 + (position * 2) - 1
                                }
                            })

                            if (employee.staffno != previousemployeeid) {
                                // add the staff to the list
                                employeecounter++
                                results += `<tr data-staffno='${employee.staffno}'><td>${$.number(employeecounter)}</td>`
                                results += `<td>${employee.staffno}</td>`
                                results += `<td>${employee.employeename}</td>`

                                // add remaining collumns
                                // itemcolcount=itemcolcount/2
                                for (let i = 0; i < itemcolcount; i++) {
                                    results += `<td class='text-right table-danger'></td><td class='text-right table-success'></td>`
                                }

                                results += "</tr>"
                                $(results).appendTo(changesdiv.find("table tbody"))

                                previousemployeeid = employee.staffno
                            }

                            const currentrow = changesdiv.find(`table tbody tr[data-staffno='${employee.staffno}'] td`)
                            currentrow.eq(currentcol).text($.number(employee.previousamount))
                            currentrow.eq(currentcol + 1).text($.number(employee.currentamount))
                        })
                    }
                )
            })

            // get entrants
            $.getJSON(
                "../controllers/payrolloperations.php",
                {
                    getpayrollentarnts: true,
                    month,
                    year
                },
                (data) => {
                    if (data.length > 0) {
                        let results = `<div class='pt-3'></div><table class='table table-striped table-sm table-hover'><thead><th>#</th>`
                        // add table headings
                        Object.keys(data[0]).forEach((key, i) => {
                            results += `<th ${i > 1 ? " class='text-right'" : ''}>${key}</th>`
                        })
                        results += `</thead><tbody>`
                        data.forEach((entrant, i) => {
                            results += `<tr><td>${$.number(i + 1)}</td>`
                            Object.keys(entrant).forEach((key, i) => {
                                results += `<td ${i > 1 ? " class='text-right'" : ''}>${entrant[key]}</td>`
                            })
                            results += `</tr>`
                        })
                        results += "</tbody></table>"
                        entrantsdiv.html(results)
                        // perform table totals
                        const entrantstable = entrantsdiv.find("table")

                        let tfoot = `<tfoot><th colspan='3'>TOTALS: </th>`
                        const cols = entrantstable.find("thead th").length

                        for (let i = 3; i < cols; i++) {
                            let rowtotal = 0
                            entrantstable.find("tbody tr").each(function () {
                                rowtotal += parseFloat($(this).find("td").eq(i).text().replace(",", ""))
                            })
                            tfoot += `<th class='text-right'>${$.number(rowtotal, 2)}</th>`
                        }

                        tfoot += `</tfoot>`
                        // add totals row at the footer of the table
                        $(tfoot).appendTo(entrantstable)

                    } else {
                        entrantsdiv.html(`<div class='pt-3'></div>` + showAlert("success", `Sorry there are no entrants for specified period`))
                    }
                }
            )

            // get exits
            $.getJSON(
                "../controllers/payrolloperations.php",
                {
                    getpayrollexits: true,
                    month,
                    year
                },
                (data) => {
                    if (data.length > 0) {
                        let results = `<div class='pt-3'></div><table class='table table-striped table-sm table-hover'><thead><th>#</th>`
                        // add table headings
                        Object.keys(data[0]).forEach((key, i) => {
                            results += `<th ${i > 1 ? " class='text-right'" : ''}>${key}</th>`
                        })
                        results += `</thead><tbody>`
                        data.forEach((exit, i) => {
                            results += `<tr><td>${$.number(i + 1)}</td>`
                            Object.keys(exit).forEach((key, i) => {
                                results += `<td ${i > 1 ? " class='text-right'" : ''}>${exit[key]}</td>`
                            })
                            results += `</tr>`
                        })
                        results += "</tbody></table>"
                        exitsdiv.html(results)
                        // perform table totals
                        const exitstable = exitsdiv.find("table")

                        let tfoot = `<tfoot><th colspan='3'>TOTALS: </th>`
                        const cols = exitstable.find("thead th").length

                        for (let i = 3; i < cols; i++) {
                            let rowtotal = 0
                            exitstable.find("tbody tr").each(function () {
                                rowtotal += parseFloat($(this).find("td").eq(i).text().replace(",", ""))
                            })
                            tfoot += `<th class='text-right'>${$.number(rowtotal, 2)}</th>`
                        }

                        tfoot += `</tfoot>`
                        // add totals row at the footer of the table
                        $(tfoot).appendTo(exitstable)

                    } else {
                        exitsdiv.html(`<div class='pt-3'></div>` + showAlert("success", `Sorry there are no exits for specified period`))
                    }
                }
            )

        } else if (reportname == "paymentsummary" || reportname == "deductionsummary") {
            const summary = reportname.replace("summary", "")
            let overalltotal = 0
            $.getJSON(
                "../controllers/payrolloperations.php",
                {
                    getpayrollsummary: true,
                    summary,
                    month,
                    year
                },
                (data) => {
                    let results = `<thead><th>#</th><th>Item Name</th><th class='text-right'>Employees</th><th class='text-right'>Amount</th></thead><tbody>`
                    data.forEach((item, i) => {
                        overalltotal += Number(item.total)
                        results += `<tr><td>${$.number(i + 1)}</td>`
                        results += `<td>${item.itemname}</td>`
                        results += `<td class='text-right'>${$.number(item.employees)}</td>`
                        results += `<td class='text-right'>${$.number(item.total, 2)}</td></tr>`
                    })
                    results += `</tbody></tfoot><th colspan='3' class='text-right'>TOTAL:</th><th class='text-right'>${$.number(overalltotal, 2)}</th></tfoot>`
                    filterreporttable.html(results)
                    filterreportnotifications.html(showAlert("success", "Processing Done!"))
                    hidereportfilternotifications()
                }
            )
        } else if (reportname == "p9deductioncard") {
            filterreportnotifications.html(showAlert("processing", "Processing. Please wait ...", 1))
            $.getJSON(
                "../controllers/payrolloperations.php",
                {
                    getp9deductionsummary: true,
                    year
                },
                (data) => {
                    let results = `
                        <thead>
                            <th><input type='checkbox' id='selectallp9cards'></th>
                            <th>#</th>
                            <th>Staff Number</th>
                            <th>PIN Number</th>
                            <th>Full Name</th>
                            <th>Gross Salary</th>
                            <th>Chargeable Pay</th>
                            <th>Tax Charged</th>
                            <th>Reliefs</th>
                            <th>PAYE Tax</th>
                            <th>&nbsp;</th>
                        </thead>
                        <tbody>
                        `
                    data.forEach((employee, i) => {
                        results += `<tr data-id='${employee.employeeid}'>`
                        results += `<td><input type='checkbox' id='emp ${employee.employeeid}' class="p9card"></td>`
                        results += `<td>${$.number(i + 1)}</td>`
                        results += `<td>${employee.staffno}</td>`
                        results += `<td>${employee.employeepin}</td>`
                        results += `<td>${employee.employeename}</td>`
                        results += `<td>${$.number(employee.gross)}</td>`
                        results += `<td>${$.number(employee.chargeablepay)}</td>`
                        results += `<td>${$.number(employee.taxcharged)}</td>`
                        results += `<td>${$.number(employee.relief)}</td>`
                        results += `<td>${$.number(employee.paye)}</td>`
                        results += `<td><a href="#" class="print"><i class="fal fa-print fa-lg fa-fw"></i></a></td></tr>`
                    })
                    filterreporttable.html(results)
                    filterreportnotifications.html(showAlert("success", "Processing Done!"))
                    hidereportfilternotifications()
                }
            )
        } else if (reportname == "p10deductionsummary") {
            $.getJSON(
                "../controllers/payrolloperations.php",
                {
                    getp10certificateemployees: true,
                    month,
                    year
                },
                (data) => {
                    const normalemployees = data.filter(person => person.disabled == 0)
                    const disabledemployees = data.filter(person => person.disabled == 1)

                    let normalemployeeslist = ""
                    normalemployees.forEach(employee => {
                        normalemployeeslist += `
                        <tr>
                            <td>${employee.pinno}</td>
                            <td>${employee.names}</td>
                            <td>Resident</td>
                            <td>Primary</td>
                            <td>${$.number(employee.Basic)}</td>
                            <td>${$.number(employee.House)}</td>
                            <td>${$.number(employee.Commuter)}</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td>${$.number(employee.Arrears)}</td>
                            <td>${$.number(employee.OtherAllowance)}</td>
                            <td></td>
                            <td>0</td>
                            <td>0</td>
                            <td></td>
                            <td>0</td>
                            <td>Benefit Not Given</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>${$.number(employee.NSSF)}</td>
                            <td></td>
                            <td>0</td>
                            <td>0</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>${$.number(employee.PersonalRelief)}</td>
                            <td>0</td>
                            <td></td>
                            <td>${$.number(employee.PAYE)}</td>
                        </tr>
                        `
                    })
                    filternormalemployeesdiv.find("table tbody").html(normalemployeeslist)

                    let disabledemployeeslist = ""
                    disabledemployees.forEach(employee => {
                        disabledemployeeslist += `
                            <tr>
                                <td>${employee.pinno}</td>
                                <td>${employee.names}</td>
                                <td>Resident</td>
                                <td>Primary</td> 
                                <td>${employee.certificateno}</td>
                                <td>${$.number(employee.Basic)}</td>
                                <td>${$.number(employee.House)}</td>
                                <td>${$.number(employee.Commuter)}</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>${$.number(employee.Arrears)}</td>
                                <td>${$.number(employee.OtherAllowance)}</td>
                                <td></td>
                                <td>0</td>
                                <td>0</td>
                                <td></td>
                                <td>0</td>
                                <td>Benefit Not Given</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>${$.number(employee.NSSF)}</td>
                                <td></td>
                                <td>0</td>
                                <td>0</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>${$.number(employee.PersonalRelief)}</td>
                                <td>0</td>
                                <td></td>
                                <td>${$.number(employee.PAYE)}</td>
                            </tr> 
                        `
                    })
                    filterdisabledemployeesdiv.find("table tbody").html(disabledemployeeslist)
                }
            )
        }
    })

    // select all p9 cards shown on the list
    filterreporttable.on("click", "#selectallp9cards", function () {
        const status = $(this).prop("checked")
        filterreporttable.find(".p9card").each(function () {
            $(this).prop("checked", status)
        })
    })

    // untick select all if any other checkbox is changed
    filterreporttable.on("click", ".p9card", function () {
        $("#selectallp9cards").prop("checked", false)
    })

    // listen to print p9 card
    filterreporttable.on("click", ".print", function () {
        const employeeid = $(this).closest("tr").attr("data-id"),
            year = filterreportyearfield.val(),
            url = "../generateddocs/p9deductioncard.php?employeeid=" + employeeid + "&year=" + year
        window.open(url, "_blank")
    })

    function getpayrollchangesitems(month, year) {
        const dfd = $.Deferred()
        let results = `<table class='table table-striped table-sm table-hover'>
            <thead>
                <tr>
                <th rowspan='2'>#</th>
                <th rowspan='2'>Staff Number</th>
                <th rowspan='2'>Employee Names</th>
            `
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getpayrollchangesitems: true,
                month,
                year
            },
            (data) => {
                let rows = 3
                if (data.length > 0) {
                    data.forEach((item, i) => {
                        results += `<th colspan='2' class='text-center' data-position='${i + 1}'>${item.itemname}</th>`
                        rows++
                    })
                    // Add an extra row for previous and current 
                    results += `</tr>`
                    results += `<tr>`
                    for (let i = 3; i < rows; i++) {
                        results += `<th class='text-right table-danger' >Prev</th>`
                        results += `<th class='text-right table-success'>Current</th>`
                    }
                    results += `</tr>`
                    results += `</thead><tbody></tbody></table>`
                    changesdiv.html(`<div class='pt-3'></div>` + results)
                    // console.log(data.length)
                    // console.log(itemcolcount)
                    itemcolcount = data.length
                    dfd.resolve()
                }else{
                    changesdiv.html(`<div class="pt-3"></div>`+showAlert("success",`Sorry there were no changes for the specified period`))  
                }
            }
        )
        return dfd.promise()
    }

    // export report
    const exportreportbutton = $("#exportreport"),
        printreportbutton = $("#printreport")

    exportreportbutton.on("click", () => {
        const month = filterreportmonthfield.find("option:selected").text(),
            year = filterreportyearfield.val(),
            reportname = filterreportname.val(),
            documentname = filterreportname.find("option:selected").text() + month + " " + year

        if (reportname == "thirdpatyremittances") {
            const tableids = [], tablenames = []
            $("#thirdpartynavbar a").each(function () {
                const tableid = `creditor${$(this).attr("data-id")}table`,
                    creditorname = $(this).text()
                tableids.push(tableid)
                tablenames.push(creditorname)
            })
            // console.log(tableids,tablenames)
            exportMultipleTables(tableids, tablenames, documentname)
        } else if (reportname == "payrollregister" || reportname == "paymentsummary" || reportname == "deductionsummary") {
            const tableid = "payrollreport"
            const documentname = `${filterreportname.find("option:selected").text()}_${filterreportmonthfield.find("option:selected").text()}_${filterreportyearfield.find("option:selected").text()}`
            const sheetname = documentname.replace("_", " ").slice(0, 31) // excel does not allow more than 31 characters on the worksheet name
            exporttable(tableid, sheetname, documentname)
        } else if (reportname == "p10deductionsummary") {
            const tableids = ["normalemployeestable", "disabledemployeestable", "arrearsemployeestable"],
                tablenames = ["Normal", "Disability", "Arrears"],
                documentname = "P10 CSV Import Format " + month + "_" + year
            exportMultipleTables(tableids, tablenames, documentname)
        }
    })

    printreportbutton.on("click", () => {
        const reportname = filterreportname.val()
        if (reportname == "payrollregister" || reportname == "paymentsummary" || reportname == "deductionsummary") {
            const tableid = "payrollreport",
                title = `${filterreportname.find("option:selected").text()}_${filterreportmonthfield.find("option:selected").text()}_${filterreportyearfield.find("option:selected").text()}`
            printtable(tableid, title)
        }
    })

    function printtable(tableid, title) {
        const table = document.getElementById(tableid);
        if (table) {
            const newWin = window.open("");
            newWin.document.write(`<html><head><title>${title}</title>`);
            newWin.document.write('</head><body>');
            newWin.document.write('<h1>Report Content</h1>');
            newWin.document.write(table.outerHTML);
            newWin.document.write('</body></html>');
            newWin.document.close();
            newWin.print();
        }
    }

    const filterstatutoryremittanceadvisesfield = $("#statutoryremittanceadvises"),
        filterpayrollregisteroptions = $("#filterpayrollregister"),
        filterstatutoryremittancesoptions = $("#filterstatutoryremittances"),
        filterpayrollchangesreport = $("#payrollchangesreport"),
        filterp10report = $("#p10format")

    getstatutoryitems(filterstatutoryremittanceadvisesfield, 'choose')

    filterreportname.on("change", () => {
        // clear any report on display
        filterreportmonthfield.prop("disabled", false)
        filterreporttable.html("")
        const reportname = filterreportname.val()
        if (reportname == "payrollregister") {
            filterpayrollregisteroptions.show()
            filterstatutoryremittancesoptions.hide()
            filterpayrollbanksdiv.hide()
            filterthirdpartydiv.hide()
            payrollchangestabs("hide")
            filterp10report.hide()
        } else if (reportname == "statutoryremittances") {
            filterpayrollregisteroptions.hide()
            filterpayrollbanksdiv.hide()
            filterstatutoryremittancesoptions.show()
            payrollchangestabs("hide")
            filterthirdpartydiv.hide()
            filterp10report.hide()
        } else if (reportname == "bankremittances") {
            filterpayrollbanksdiv.show()
            filterpayrollregisteroptions.hide()
            filterstatutoryremittancesoptions.hide()
            filterthirdpartydiv.hide()
            payrollchangestabs("hide")
            filterp10report.hide()
        } else if (reportname == "thirdpatyremittances") {
            filterpayrollbanksdiv.hide()
            filterpayrollregisteroptions.hide()
            filterstatutoryremittancesoptions.hide()
            filterthirdpartydiv.show()
            payrollchangestabs("hide")
            filterp10report.hide()
        } else if (reportname == "payrollchanges") {
            filterpayrollbanksdiv.hide()
            filterpayrollregisteroptions.hide()
            filterstatutoryremittancesoptions.hide()
            filterthirdpartydiv.hide()
            filterp10report.hide()
            payrollchangestabs("show")
        } else if (reportname == "paymentsummary" || reportname == "deductionsummary") {
            filterpayrollregisteroptions.hide()
            filterstatutoryremittancesoptions.hide()
            filterpayrollbanksdiv.hide()
            filterthirdpartydiv.hide()
            payrollchangestabs("hide")
            filterp10report.hide()
        } else if (reportname == "p9deductioncard") {
            // filterreporttable.show()
            filterreportmonthfield.prop("disabled", true)
            filterpayrollregisteroptions.hide()
            filterstatutoryremittancesoptions.hide()
            filterpayrollbanksdiv.hide()
            filterthirdpartydiv.hide()
            payrollchangestabs("hide")
            filterp10report.hide()
        } else if (reportname == "p10deductionsummary") {
            filterp10report.show()
            filterpayrollregisteroptions.hide()
            filterstatutoryremittancesoptions.hide()
            filterpayrollbanksdiv.hide()
            filterthirdpartydiv.hide()
        }
    })

    function payrollchangestabs(status) {
        if (status == "show") {
            filterpayrollchangesreport.show()
        } else {
            filterpayrollchangesreport.hide()
        }
    }


    function hidereportfilternotifications() {
        // hide notification after 3 seconds
        setTimeout(() => {
            filterreportnotifications.html("")
        }, 3000)
    }

    // click on staffno on payroll register to show payslip
    filterreporttable.on("click", ".payslip", function () {
        const link = $(this),
            staffno = link.attr("data-staffno"),
            month = link.attr("data-month"),
            year = link.attr("data-year"),
            url = `../generateddocs/employeepayslip.php?staffno=${staffno}&month=${month}&year=${year}`
        // open the payslip in a new window
        window.open(url, "_blank")
    })

    function getthirdpartyremittancenavbar(month, year) {
        dfd = $.Deferred()
        const filtercreditors = filterthirdpartyvendors.val()
        $.getJSON(
            "../controllers/payrolloperations.php",
            {
                getpayrollmonthcreditors: true,
                month,
                year
            },
            (data) => {

                let thirdpartynavbar = `<nav class="nav-justified ">
                        <div class="nav nav-tabs " id="thirdpartynavbar" role="tablist">`,
                    navcontent = `<div class="tab-content text-left" id="nav-tabContent">`

                if (filtercreditors != 0) {
                    data = data.filter(creditor => creditor.creditorid == filtercreditors)
                }

                data.forEach((creditor, i) => {
                    thirdpartynavbar += `<a class="nav-item nav-link ${i == 0 ? "active" : ""}" data-id=${creditor.creditorid} id="nav-${creditor.creditorid}" data-toggle="tab" href="#creditor${creditor.creditorid}" role="tab" aria-controls="pop1" aria-selected="true">${creditor.shortname}</a>`
                    navcontent += `<div class="tab-pane fade ${i == 0 ? 'show active' : ''}" id="creditor${creditor.creditorid}" role="tabpanel" aria-labelledby="pop1-tab">
                            <div class="pt-3"></div>
                            <h4>${creditor.shortname}</h4>
                        </div>`
                })

                navcontent += `</div>`;
                thirdpartynavbar += `</div></nav>`

                filterreporttable.html(`${thirdpartynavbar} ${navcontent}`)

                dfd.resolve()
            }
        )
        return dfd.promise()
    }

    const importemployeepayrollitemsbutton = document.querySelector("#importpayrollitemsfile"),//$("#importpayrollitemsfile"),
        importemployeepayrollitemstable = $("#importemployeepayrollitemstable"),
        importemppayrollitemstaffcolfield = $("#importpayrollitemstaffnumbercol"),
        importemppayrollitemamountfield = $("#importpayrollitemamountcol"),
        importpayrollitemcategoryfield = $("#importpayrollitemcategory"),
        importemployeepayrollitemfield = $("#importpayrollitem"),
        importemppayrollitemperiodicfield = $("#importpayrollitemperiodic"),
        importemppayrollitemdurationfield = $("#importpayrollitemduration"),
        importemppayrollitemstartdatefield = $("#importpayrollitemstartdate"),
        importemppayitemsnotifications = $("#importemppayitemsnotifications"),
        importemppayrollitemoverwritefield = $("#employeeimportoverwritepayrollitem"),
        saveimportemppayrollitemsbutton = $("#saveimportemployeepayrollitems")

    setDatePicker(importemppayrollitemstartdatefield)

    importpayrollitemcategoryfield.on("change", () => {
        const category = importpayrollitemcategoryfield.val()
        if (category == "") {
            importemployeepayrollitemfield.html("<option value=''><&lt;Choose&gt;</option>")
        } else {
            getpayrollitems(importemployeepayrollitemfield, category, 'choose')
        }
    })

    importemployeepayrollitemsbutton.addEventListener("change", () => {
        const reader = new FileReader()
        reader.readAsArrayBuffer(importemployeepayrollitemsbutton.files[0])
        reader.onload = function (e) {
            const data = new Uint8Array(reader.result)
            const work_book = XLSX.read(data, { type: 'array' })
            const sheet_name = work_book.SheetNames
            const sheet_data = XLSX.utils.sheet_to_json(work_book.Sheets[sheet_name[0]], { header: 1 })

            let tabledata = "<thead><th>Ser.</th>",
                selectablecollumns = "<option value=''>&lt;Choose&gt;</option>"
            if (sheet_data.length > 0) {
                // add table headings
                sheet_data[0].forEach((key, i) => {
                    selectablecollumns += `<option value='${key}'>${key}</option>`
                    tabledata += `<th>${key}</th>`
                })
                // add collumn for delete icon
                tabledata += `<th>&nbsp;</th>`

                importemppayrollitemstaffcolfield.html(selectablecollumns)
                importemppayrollitemamountfield.html(selectablecollumns)

                tabledata += `</thead><tbody>`
                // remove the heading collumn
                sheet_data.shift()
                sheet_data.forEach((item, i) => {
                    tabledata += `<tr data-id=""><td>${$.number(i + 1)}</td>`
                    item.forEach((key) => {
                        tabledata += `<td>${key}</td>`
                    })
                    // add delete button
                    tabledata += `<td><a href="#" class="delete"><i class="fal fa-trash-alt fa-lg fa-fw text-danger"></i></a></td>`
                    // add extra collum for import status notification
                    tabledata += `<td class="text-primary"><i class='fal fa-hourglass-half fa-lg fa-fw'</i></td>`
                    tabledata += `</tr>`
                })

                tabledata += "</tbody>"
                importemployeepayrollitemstable.html(tabledata)
            }
        }
    })

    // listen to remove employee import payroll item
    importemployeepayrollitemstable.on("click", ".delete", function () {
        $(this).closest("tr").remove()
    })

    let missingemployees = false,
        invalidamount = false

    saveimportemppayrollitemsbutton.on("click", () => {
        const payrollitemid = importemployeepayrollitemfield.val(),
            periodic = importemppayrollitemperiodicfield.val(),
            duration = Number(importemppayrollitemdurationfield.val()),
            startdate = importemppayrollitemstartdatefield.val() == "" ? getTodaysDate() : importemppayrollitemstartdatefield.val(),
            rows = importemployeepayrollitemstable.find("thead th").length,
            payrollitemcategory = importpayrollitemcategoryfield.val(),
            payrollitemname = importemployeepayrollitemfield.find("option:selected").text(),
            overwrite = importemppayrollitemoverwritefield.prop("checked") ? 1 : 0,
            importexcelfile = $("#importpayrollitemsfile")

        let staffcollumn = importemppayrollitemstaffcolfield.val(),
            amountcollumn = importemppayrollitemamountfield.val(),
            errors = ""

        importemppayitemsnotifications.html("")

        // check if all fields have been selected
        // check if import file field is blank
        if (importexcelfile.val() === "") {
            errors = "Please choose a file from which to import the data"
            importexcelfile.focus()
        } else if (staffcollumn == "") {
            errors = "Please select collumn with <strong>Staff Number</strong>"
            importemppayrollitemstaffcolfield.focus()
        } else if (amountcollumn == "") {
            errors = "Please select collumn with <strong>Amount</strong>"
            importemppayrollitemamountfield.focus()
        } else if (payrollitemcategory == "") {
            errors = "Please select payroll item category"
            importpayrollitemcategoryfield.focus()
        } else if (payrollitemid == "") {
            errors = "Please select <strong>Payroll Item</strong>"
            importemployeepayrollitemfield.focus()
        } else if (periodic == 1 && duration == 0) {
            errors = "Please select correct <strong>Duration</strong>"
            importemppayrollitemdurationfield.val()
        }

        if (errors == "") {
            // get collumns with staff number and amount field
            importemployeepayrollitemstable.find("thead th").each(function (i) {
                const row = $(this)
                if (row.text() == amountcollumn) {
                    amountcollumn = i
                }

                if (row.text() == staffcollumn) {
                    staffcollumn = i
                }
            })

            // check all staff numbers
            checkstaffnumbers(staffcollumn).then(() => {

                missingemployees = false
                invalidamount = false

                importemployeepayrollitemstable.find("tbody tr").each(function () {
                    console.log($(this).attr("data-id"))
                    if ($(this).attr("data-id") === "") {
                        missingemployees = true
                    }
                })

                // console.log(missingemployees)
                if (missingemployees == true) {
                    importemppayitemsnotifications.html(showAlert("info", `Invalid staff numbers highlighted. Please check then try again`))
                } else {
                    importemployeepayrollitemstable.find("tbody tr").each(function () {
                        // importemployeepayrollitemstable.find("tr").each(function(){
                        const currentrow = $(this)
                        const amount = currentrow.find("td").eq(amountcollumn).text()
                        // console.log(amount)
                        if (!parseFloat(amount)) {
                            invalidamount = true
                            currentrow.find("td").addClass('text-danger')
                            // make cell content editable
                            currentrow.find("td").eq(amountcollumn)
                                .attr("contenteditable", true)
                                .addClass("editable-cell")
                        } else {
                            currentrow.find("td").removeClass('text-danger')
                            currentrow.find("td").eq(amountcollumn).attr("contenteditable", false)
                        }
                    })

                    if (invalidamount) {
                        importemppayitemsnotifications.html(showAlert("info", `Amounts highlighted are incorrect, please correct then try again`))
                    } else {
                        if (importemployeepayrollitemstable.find("tr").length == 0) {
                            importemppayitemsnotifications.html(showAlert("info", `There are no employees on the grid for importation!`))
                        } else {
                            let payload = []
                            importemployeepayrollitemstable.find("tbody tr").each(function () {
                                const row = $(this),
                                    employeeid = row.attr("data-id"),
                                    amount = row.find("td").eq(amountcollumn).text().replace(",", "")
                                payload.push({
                                    "employeeid": employeeid, "payrollitemid": payrollitemid, "amount": amount, "startdate": startdate,
                                    "duration": duration, "applyrelief": 0, "targetamount": 0, "periodic": periodic
                                })
                            })

                            payload = JSON.stringify(payload)

                            $.post(
                                "../controllers/employeeoperations.php",
                                {
                                    savegroupedemployeepayrollitems: true,
                                    payload,
                                    overwrite
                                },
                                (data) => {
                                    if (isJSON(data)) {
                                        let overallsuccess = true
                                        data = JSON.parse(data)
                                        data.forEach((item) => {
                                            const row = importemployeepayrollitemstable.find('tr[data-id="' + item.employeeid + '"]'),
                                                exists = `<i class='fas fa-info-circle fa-lg fa-fw text-primary'></i>`,
                                                success = `<i class='fas fa-check-circle fa-lg fa-fw text-success'></i>`
                                            if (item.status == "success") {
                                                row.find("td").eq(rows).html(success)
                                            } else if (item.status == "exists") {
                                                overallsuccess = false
                                                row.find("td").eq(rows).html(exists)
                                            }
                                        })
                                        if (overallsuccess) {
                                            importemppayitemsnotifications.html(showAlert("success", `<strong>${payrollitemname}</strong> imported successfully for <strong>${data.length}</strong> staff members.`))
                                        } else {
                                            importemppayitemsnotifications.html(showAlert("info", `Payroll items imported succesfully. Check status icon for more info`))
                                        }
                                    } else {
                                        importemppayitemsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                    }
                                }
                            )
                        }
                    }
                }
            })
        } else {
            importemppayitemsnotifications.html(showAlert("info", errors))
        }
    })

    function checkstaffnumbers(staffcollumn) {
        const dfd = $.Deferred(),
            promises = []
        importemployeepayrollitemstable.find("tbody tr").each(function () {
            const emprow = $(this),
                staffno = emprow.find("td").eq(staffcollumn).text().trim()


            const promise = $.getJSON(
                "../controllers/employeeoperations.php",
                {
                    getstafffrompayrollno: true,
                    staffno
                }).done(function (data) {
                    if (data.length > 0) {
                        data = data[0]
                        emprow.attr("data-id", data["employeeid"])
                        emprow.find("td").removeClass("text-danger")
                        // remove editable property if previously applied
                        emprow.find("td").eq(staffcollumn).attr("contenteditable", false)
                    } else {
                        emprow.attr("data-id", "")
                        emprow.find("td").addClass("text-danger")

                        // make cell editable
                        emprow.find("td").eq(staffcollumn)
                            .attr("contenteditable", true)
                            .addClass("editable-cell")
                    }
                })
            promises.push(promise);
        })

        $.when.apply($, promises).then(function () {
            dfd.resolve();
        })

        return dfd.promise();
    }

    function resetprocessingcollumtopending() {
        const rows = importemployeepayrollitemstable.find("thead th").length
        importemployeepayrollitemstable.find("tbody tr").each(function () {
            $(this).find("td").eq(rows).html(`<i class="fal fa-hourglass-half fa-lg fa-fw"></i>`)
        })
    }

    importemployeepayrollitemfield.on("change", () => {
        if (importemployeepayrollitemfield.val() != "") {
            resetprocessingcollumtopending()
        }
    })

    importemppayrollitemamountfield.on("change", () => {
        importemployeepayrollitemfield.trigger("change")
    })

    // save payroll item groups
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

    // save leave approvalflow
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
            enddate = sanitizestring(staffleaveenddatefield.val()),
            daystaken = staffleavedaystakenlabel.html(),
            relieverid = staffleaverelieverfield.val(),
            supervisorid = staffleavesupervisorfield.val(),
            narration = sanitizestring(staffleavenarrationfield.val()),
            attachment = staffleaveattachmentfield[0].files[0],
            applicationid = staffleaveapplicationidfield.val(),
            leavebalance=staffleavebalancelabel.html()
        let errors = "", notifications=""

        // check for blank fileds
        if (leavetypeid == "") {
            errors = "Please select leave type"
            staffleavetypefiled.focus()
        } else if (startdate == "") {
            errors = "Please select leave start date"
            staffleavestartdatefield.focus()
        } else if (canbesplit == 0 && enddate == "") {
            errors = "Please select leave end date"
            staffleaveenddatefield.focus()
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

    const leaveapprovalmodal = $("#leaveapprovalmodal"),
        approvalleveldiv = $("#leaveprocessingstatuses"),
        saveleaveprocessing = $("#saveleaveprocessing"),
        leaveapprovalstatus = $('#leaveapprovalstatus'),
        leaveapprovalnarration = $('#leaveapprovalnarration'),
        employeeleavesnotifications=$("#employeeleavenotifications"),
        leaveprocessingnotifications=$("#leaveprocessingnotifications")

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

    const leavetimelinemodal=$("#leavetimelinemodal"),
        leavtimelinedetails=$("#leavetimelineactivities")

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

})

