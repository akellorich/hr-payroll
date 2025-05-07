$(document).ready(() => {
    const currentmenu = $("#payroll")
    setactivemenu(currentmenu)

    const inputfield = $("input"),
        selectfield = $("select"),
        payrollstartdatefield=$("#payrollstartdate"),
        payrollenddatefield=$("#payrollenddate"),
        payrollnotifications=$("#payrollnotifications")

    // getexistingbanksastable()
    // getbankbranchesastable()
    // getemploymenttermsastable()
    // getjobgroupsastable()
    // getnotchesastable()
  
    setDatePicker(payrollstartdatefield,false,false)
    setDatePicker(payrollenddatefield,false,false)

    // get existing leave applications for all employees

    // get existing employees
    // beginfilteremployeesbutton.trigger("click")

    // hide any errors or notificatioon when input field gets typed into
    inputfield.on("input", function() {
        $(this).removeClass("is-invalid text-danger")
        importemppayitemsnotifications.html("")
        // holidaydetailsnotifications.html("")
        // leaveflowdetailsnotifications.html("")
        // leaveapprovalnotifications.html("")
    })

    selectfield.on("change", () => {
        inputfield.trigger("input")
    })

    const newpayrollprocessingbutton = $("#newpayrollprocessing"),
        payrollprocessingmodal = $("#payrollprocessingmodal"),
        payrollprocessingmonthfield = $("#payrollmonth"),
        payrollprocessiingyearfield = $("#payrollyear")

    newpayrollprocessingbutton.on("click", () => {
        validateuserprivilege('3x002').done(function(data) {
        if(data==0){
            payrollnotifications.html(showAlert("danger","You do not have permission to process payroll"))
        }else{
            payrollprocessingmodal.modal("show")
        }
    })
       
    })

    populatemonths(payrollprocessingmonthfield).done(()=>{
        populateyears(payrollprocessiingyearfield).done(()=>{
            getpayrolldates()
        })
   
    })

    function getpayrolldates(){
        const startdate=getFirstDayOfMonth(payrollprocessingmonthfield.val(),payrollprocessiingyearfield.val()),
            enddate=getLastDayOfMonth(payrollprocessingmonthfield.val(),payrollprocessiingyearfield.val())
            payrollstartdatefield.val(formatDate(startdate))
            payrollenddatefield.val(formatDate(enddate))
    }
    
    payrollprocessingmonthfield.on("change",()=>{
        getpayrolldates()
    })

    payrollprocessiingyearfield.on("change",()=>{
        getpayrolldates()
    })

    // process the payroll 
    const payrolltaxlabelfield = $("#payrolltaxlabel"),
        processpayrollbutton = $("#processpayroll"),
        payrollprocessingdetailsnotification = $("#payrollprocessingdetailsnotifications"),
        processedpayrollstable = $("#processedpayrollstable"),
        payrollprocessingnotifications = $("#payrollprocessingnotifications")

        // Import employee pay items 
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
        validateuserprivilege('3x005').done(function(data){
            if(data==0){
                payrollnotifications.html(showAlert("danger","You do not have permission to close payroll period"))
            }else{
                // Confirm with bootbox
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
            }
        })
    })


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

    
    const importemployeepayrollitemsmodal = $("#importemployeepayrollitemsmodal"),
        importemployeepayitemsbutton = $("#importemployeepayrollitems")

    importemployeepayitemsbutton.on("click", () => {
        importemployeepayrollitemsmodal.modal("show")
    })
    
})

