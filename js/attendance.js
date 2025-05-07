$(document).ready(function(){

    const currentmenu=$("#attendance")
    setactivemenu(currentmenu)
    getloggedinuser()

    const presabsdepartmentfield=$("#presabsdepartment"),
        presabsmonthfield=$("#presabsmonth"),
        presabsyearfield=$("#presabsyear"),
        presabstable=$("#presabscalendar"),
        attendancedepartmentfield=$("#attendancedepartment"),
        attendancestartdatefield=$("#attendancestartdate"),
        attendanceenddatefield=$("#attendanceenddate"),
        attendancedatefield=$("#attendanceimportdate"),
        attendanceoverwriteexistingcheckbox=$("#attendanceoverwriteexisting"),
        importattendancebutton=$("#importattendancedata"),
        importattendancemodal=$("#attendancedatamodal"),
        chooseimportdatabutton=document.querySelector("#chooseimportattendancedata"),
        importattendancetable=$("#importattendancetable"),
        importattendancestaffnocolfield=$("#importattendancestaffcollumn"),
        importattendanceclockinfield=$("#importattendanceclokintime"),
        importattendanceclockoutfield=$("#importattendanceclokouttime"),
        importattendancedatefield=$("#attendanceimportdate"),
        saveimportattendancebutton=$("#saveimportattendancedata"),
        importattendancenotifications=$("#importattendancenotifications"),
        shiftdetailsmodal=$("#shiftdetailsmodal"),
        addnewshiftbutton=$("#addnewshift"),
        inputfield=$("input"),
        selectfield=$("select"),
        validatedatabutton=$("#validatedata"),
        removeinvaliddatabutton=$("#removeinvaliddata"),
        attendancedaterangefield=$("#attendancedaterange"),
        filterattendancebutton=$("#fiterattendance"),
        attendancetable=$("#attendancetable"),
        filterattendancestatus=$("#filterattendancestatus"),
        attendancenotifications=$("#attendancenotifications")
        const attendanceactiondepartmentfield=$("#attendanceactiondepartment"),
        attendanceactionunitfield=$("#attendanceactionunit"),
        attendanceactionsectionfield=$("#attendanceactionsection"),
        attendanceactionstartdatefield=$("#attendanceactionstartdate"),
        // attendanceactionenddatefield=$("#attendanceactionenddate"),
        attendanceactionnotifications=$("#attendanceactionnotifications"),
        attendanceactionsemployeestable=$("#attendanceactionsemployeestable"),
        filterattendanceactionsbutton=$("#filterattendanceactions"),
        exceptionsfilter=$("#exceptionsfilter"),
        togglecompleteexceptionscheckbox=$("#completeexceptionsselection"),
        filterbuttons=$(".exceptionsfilterbutton"),
        selectallattendanceactioncheckbox=$("#selectallattendanceaction"),
        markpresentmodal=$("#markpresentmodal"),
        markpresentbutton=$("#markpresent"),
        markpresentnotifications=$("#markpresentnotifications"),
        markpresentclockinfield=$("#markpresentclockin"),
        markpresentclockoutfield=$("#markpresentclockout"),
        savemarkpresentbutton=$("#savemarkpresent"),
        attendanceactionviewselectedonly=$("#attendanceactionviewselectedonly"),
        markclockinbutton=$("#markclockin"),
        markclockintimemodal=$("#markclockintimemodal"),
        markclockintimefield=$("#markclockintime"),
        markclockintimenotifications=$("#markclockintimenotifications"),
        saveclockintimebutton=$("#saveclockintime"),
        markclockoutbutton=$("#markclockout"),
        markclockouttimemodal=$("#markclockouttimemodal"),  
        markclockouttimefield=$("#markclockouttime"),
        markclockouttimenotifications=$("#markclockouttimenotifications"),
        saveclockouttimebutton=$("#saveclockouttime"),
        buttoncomponent=$("button"),
        actionbutton=$(".actionbutton"),
        // Attendance Leave Application
        attendanceleaveapplicationmodal=$("#attendanceleaveapplicationmodal"),
        attendancenewleaveapplicationbutton=$("#applyleave"),
        attendanceemployeeleavetypefield=$("#leavetype"),
        halfdayapplicationfield=$("#halfdayapplication"),
        shifthalffield=$("#shifthalf"),
        attendanceleaveapplicationdate=$("#leavedate"),
        leaveapplicationnarrationfield=$("#leaveapplicationnarration"),
        saveleaveapplicationbutton=$("#saveleaveapplication"),
        attendanceleaveapplicationnotifications=$("#attendanceleaveapplicationnotifications")


    getdepartments(presabsdepartmentfield,'choose')

    populatemonths(presabsmonthfield).done(()=>{
        populateyears(presabsyearfield).done(()=>{
            filldaysofthemonth()
        })
    })

    getdepartments(attendancedepartmentfield)
    getleavetypes(attendanceemployeeleavetypefield,'choose')
    setDatePicker(attendancestartdatefield)
    setDatePicker(attendanceenddatefield)
    setDatePicker(importattendancedatefield)

    // fill in days of the month
    function filldaysofthemonth(){
        const month=presabsmonthfield.find("option:selected").text(),
            leapyear=presabsyearfield.val()%4==0?true:false

        let days=getdaysinmonth(month,leapyear)

        let calendardays=""
        for(let i=1;i<=days;i++){
            // console.log(i.toString().length)
            calendardays+=`<th class='date'>${i.toString().length==1?"0"+i:i}</th>`
        }

        // remove previousl added dates
        presabstable.find("thead tr th.date").remove()

        $(calendardays).appendTo( presabstable.find("thead tr"))
    }

    inputfield.on("input",()=>{
        importattendancenotifications.html("")
        staffshiftdetailsnotifications.html("")
        otdetailsnotifications.html("")
        overtimerequisitionnotifications.html("")
        lockimportattendancedatanotifications.html("")
        attendancenotifications.html("")
        attendanceactionnotifications.html("")
        attendanceleaveapplicationnotifications.html("")
    })

    inputfield.on("change",()=>{
        inputfield.trigger("input")
    })

    buttoncomponent.on("click",()=>{
        inputfield.trigger("input")
    })

    halfdayapplicationfield.on("change",function(){
        const value=$(this).val()
        shifthalffield.prop("disabled",value!=1?true:false)  
    })

    

    actionbutton.on("click",function(){
        const buttonid=$(this).attr("id")   
        if(attendanceactionsemployeestable.find("tbody input[type='checkbox']:checked").length==0){
            attendanceactionnotifications.html(showAlert("info","Please select at least an employee to perform the action"))
        }else{
            if(buttonid=="markpresent"){
                markpresentmodal.modal("show")  
            }else if(buttonid=="markclockin"){
                markclockintimemodal.modal("show")
            }else if(buttonid=="markclockout"){
                markclockouttimemodal.modal("show")
            }else if(buttonid=="applyleave"){
                attendanceleaveapplicationmodal.modal("show")
                attendanceleaveapplicationdate.val(attendanceactionstartdatefield.val())
            }
            // add mark absent later
        }
    })

    selectfield.on("change",()=>{
        inputfield.trigger("input")
    })

    attendancedaterangefield.on("change",function(){
        const option=Number($(this).val())
        if(option==3){
            attendancestartdatefield.prop("disabled",false)
            attendanceenddatefield.prop("disabled",false)
            attendancestartdatefield.focus()
        }else{
            attendancestartdatefield.prop("disabled",true).val("")
            attendanceenddatefield.prop("disabled",true).val("")
        }
    })

    presabsmonthfield.on("change",()=>{
        filldaysofthemonth()
    })

    presabsyearfield.on("change",()=>{
        filldaysofthemonth()
    })

    importattendancebutton.on("click",()=>{
        importattendancemodal.modal("show")
    })

    chooseimportdatabutton.addEventListener("change",function(){
        const reader=new FileReader()
        reader.readAsArrayBuffer(chooseimportdatabutton.files[0])
        reader.onload=function(e){
            const data=new Uint8Array(reader.result)
            const work_book=XLSX.read(data,{type:'array',cellDates: true, raw:false})
            const sheet_name=work_book.SheetNames
            const sheet_data=XLSX.utils.sheet_to_json(work_book.Sheets[sheet_name[0]],{header:1,defval: '' })
            if(sheet_data.length>0){
                // console.log(sheet_data)
                let rows=""

                cols=sheet_data[0]
                let colnames="",
                    colnamesoption="<option value=''>&lt;Choose&gt;</option>"

                cols.forEach((col)=>{
                    colnames+=`<th>${col}</th>`
                    colnamesoption+=`<option value'${col}'>${col}</option>`
                })

                colnames+=`<th>&nbsp;</th>` // placeholder for delete button / icon
                importattendancetable.find("thead").html(colnames)

                // load data to select dropdowns
                importattendancestaffnocolfield.html(colnamesoption)
                importattendanceclockinfield.html(colnamesoption)
                importattendanceclockoutfield.html(colnamesoption)

                // remove the column heading
                sheet_data.shift()

                sheet_data.forEach((attendance,index)=>{
                    rows+=`<tr data-employeeid='' data-invalidcheckin=false invalidcheckout=false>`
                    attendance.forEach((t,i)=>{
                        // check if date/time is returned
                        time=extractTime(t)
                        // console.log(time)
                        rows+=`<td>${time==null?t:time}</td>`
                    })
                    // add delete button
                    rows+="<td class='text-right'><a href='javascript void(0)' class='delete'><span><i class='fal fa-trash-alt fa-lg mt-1'></i></span></a><td></tr>"
                    rows+=`</tr>`
                })
                importattendancetable.find("tbody").html(rows)
            }
        }
    })


    saveimportattendancebutton.on("click",()=>{
        const attendancedate=sanitizestring(attendancedatefield.val()),
            overwrite=attendanceoverwriteexistingcheckbox.prop("checked")?1:0

        let employees=[]

        attendancedatefield.removeClass("is-invalid text-danger")

        if(attendancedate==""){
            errors="Please select attendance date"
            attendancedatefield.addClass("is-invalid text-danger")
            importattendancenotifications.html(showAlert("info",errors))
            attendancedatefield.focus()
        }else{
            validatedata().done(()=>{
                if(importattendancetable.find("tbody tr td.text-danger").length==0){
                    const clockinfieldname=importattendanceclockinfield.find("option:selected").text(),
                        clockoutfieldname=importattendanceclockoutfield.find("option:selected").text(),
                        tablecols=importattendancetable.find("thead th").length-1

                    let clockinfield,
                        clockoutfield
                        
                    for(let i=0;i<=tablecols;i++){
                        if(importattendancetable.find("thead th").eq(i).text()===clockinfieldname){
                            clockinfield=i
                        }
                        if(importattendancetable.find("thead th").eq(i).text()===clockoutfieldname){
                            clockoutfield=i
                        }
                    }

                    importattendancetable.find("tbody tr").each(function(){
                        const row=$(this),
                            employeeid=row.data("employeeid"),
                            clockin=row.find(`td:eq(${clockinfield})`).text().trim(),
                            clockout=row.find(`td:eq(${clockoutfield})`).text().trim()
                        employees.push({"employeeid":employeeid,"clockin":clockin,"clockout":clockout})
                    })

                    importattendancenotifications.html(showAlert("processing","Processing. Please wait ...",1))
                    employees=JSON.stringify(employees)
                    $.post(
                        "../controllers/attendanceoperations.php",
                        {
                            saveattendance:true,
                            attendancedate,
                            overwrite,
                            employees
                        },
                        (data)=>{
                            if(isJSON(data)){
                                data=JSON.parse(data)
                                if(data.status=="success"){
                                    importattendancenotifications.html(showAlert("success",`Attendance data saved successfully`))
                                    // clear attendance fields
                                    clearimportattendancefields()
                                }
                            }else{
                                importattendancenotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                            }
                        }
                    )
                }
            })
        }    
    })

    function clearimportattendancefields(){
        const choose="<option value=''>&lt;Choose&gt;</option>"
        attendancedatefield.val("")
        importattendanceclockinfield.html(choose)
        importattendanceclockoutfield.html(choose)
        importattendancestaffnocolfield.html(choose)        
        importattendancetable.html("")
        chooseimportdatabutton.val("")
        attendanceoverwriteexistingcheckbox.prop("checked",true)
    }

    filterattendancebutton.on("click",function(){
            const  status=filterattendancestatus.val()
            let startdate,enddate,errors=''

            attendancestartdatefield.removeClass("is-invalid text-danger")
            attendanceenddatefield.removeClass("is-invalid text-danger")

            if(attendancedaterangefield.val()==0){
                startdate="01-Jan-2024"
                enddate="31-Dec-2100"
            }else if(attendancedaterangefield.val()==3){
                startdate=sanitizestring(attendancestartdatefield.val())
                enddate=sanitizestring(attendanceenddatefield.val())
            }
            // console.log(status,startdate,enddate,errors)
            if(startdate==""){
                attendancestartdatefield.addClass("is-invalid text-danger")
                errors="Please select start date"
            }else if(enddate==""){
                attendanceenddatefield.addClass("is-invalid text-danger")
                errors="Please select end date"
            }
            if(errors==""){
                filterattendancedata(status,startdate,enddate)
            }else{
                attendancenotifications.html(showAlert("info",errors))
                if(attendancestartdatefield.hasClass("is-invalid")){
                    attendancestartdatefield.focus()
                }else if(attendanceenddatefield.hasClass("is-invalid")){
                    attendanceenddatefield.focus()
                }
            }
    })

    function filterattendancedata(status,startdate,enddate){
        const dfd=$.Deferred()
        attendancenotifications.html(showAlert("processing","Processing. Please wait ...",1))
        $.getJSON(
            "../controllers/attendanceoperations.php",
            {
                getattendance:true,
                status,
                startdate,
                enddate
            },
            (data)=>{
                let results=''
                data.forEach((attendance,i)=>{
                    results+=`<tr data-id=${attendance.attendanceid}>`
                    results+=`<td>${$.number(Number(i+1))}</td>`
                    results+=`<td>${formatDate(attendance.date)}</td>`
                    results+=`<td>${attendance.units}</td>`
                    results+=`<td>${attendance.units-attendance.lockedunits}</td>`
                    results+=`<td>${attendance.lockedunits}</td>`
                    results+=`<td>${$.number(attendance.employees)}</td>`
                    results+=`<td>${titleCase(attendance.status)}</td>`
                    results+=`<td>${attendance.dateadded}</td>`
                    results+=`<td>${attendance.addedbyname}</td>`
                    results+=`<td class='text-center'><a href='#' class='lock'><i class='fal fa-lock-alt fa-fw fa-lg'></i></a></td>`
                    results+=`<td class='text-center'><a href='#' class='process'><i class='fal fa-hourglass fa-fw fa-lg'></i></a></td>`
                    results+=`<td class='text-center'><a href='#' class='closedate'><i class='fal fa-sign-out-alt fa-fw fa-lg'></i></a></td></tr>`
                })
                makedatatable(attendancetable,results,15)
                attendancenotifications.html("") 
                dfd.resolve()
            }
        )
        return dfd.promise()
    }

    const attendanceunitslockmodal=$("#attendanceunitlockmodal"),
        attendanceunittable=$("#attendanceunittable"),
        selectallattendanceunits=$("#selectallattendanceunits"),
        lockattendancedataimportbutton=$("#lockattendancedataimport"),
        lockimportattendancedatanotifications=$("#lockimportattendancedatanotifications")
        
    // lock attendace from import
    attendancetable.on("click",".lock",function(){
        const attendanceid=$(this).closest("tr").data("id")
        attendanceunittable.attr("data-attendanceid",attendanceid)
        lockimportattendancedatanotifications.html("")
        $.getJSON(
            "../controllers/attendanceoperations.php",
            {
                getattendanceunits:true,
                attendanceid
            },
            (data)=>{
                let results=""
                data.forEach((unit,i)=>{
                    console.log(unit)
                    if(unit.status=='unlocked'){
                        results+=`<tr data-id=${unit.unitid}>`
                        results+=`<td><input type='checkbox' data-id=${unit.unitid}></td>`
                        results+=`<td>${$.number(i+1)}</td>`
                        results+=`<td>${unit.unitcode}</td>`
                        results+=`<td>${unit.unitname}</td></tr>`  
                    }
                })
                console.log(results)
                attendanceunittable.find("tbody").html(results)
                attendanceunitslockmodal.modal("show")
            }
        )
    })

    lockattendancedataimportbutton.on("click",()=>{
        const attendanceid=attendanceunittable.data("attendanceid")
        let units=[]
        attendanceunittable.find("tbody :checked").each(function(){
            units.push($(this).data("id"))
        })

        if(units.length>0){
            units=JSON.stringify(units)
            $.post(
                "../controllers/attendanceoperations.php",
                {
                    lockattendancedataimport:true,
                    attendanceid,
                    units
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if(data.status=="success"){
                            attendanceunitslockmodal.modal("hide")
                            const status=filterattendancestatus.val(),
                                startdate=attendancedaterangefield.val()!==3?'01-Jan-2024':sanitizestring(attendancestartdatefield.val()),
                                enddate=attendancedaterangefield.val()!==3?'31-Dec-2100':sanitizestring(attendanceenddatefield.val())
                            filterattendancedata(status,startdate,enddate).done(()=>{
                                attendancenotifications.html(showAlert("success",`Attendance for selected units locked successfully against data importation`))
                            })  
                            attendanceunittable.attr("data-attendanceid","")
                        }
                    }else{
                        lockimportattendancedatanotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                    }
                }
            )
        }else{
            lockimportattendancedatanotifications.html(showAlert("info",`Please check at least a unit to lock against data importation!`))
        }
    })

    selectallattendanceunits.on("click",function(){
        const status=$(this).prop("checked")
        attendanceunittable.find("tbody input[type='checkbox']").each(function(){
            $(this).prop("checked",status)
        })
    })

    attendanceunittable.on("click","tbody input[type='checkbox']",function(){
        selectallattendanceunits.prop("checked",false)
        lockimportattendancedatanotifications.html("")
    })

    addnewshiftbutton.on("click",()=>{
        shiftdetailsmodal.modal("show")
    })

    const filterovertimeunitfield=$("#filterovertimeunit"),
        filterotdepartmentfield=$("#filterovertimedepartment"),
        filterotstartdatefield=$("#filterovertimestartdate"),
        filterotenddatefield=$("#filterovertimeenddate"),
        filterovertimeshift=$("#filterovertimeshift"),
        filterovertimedaterangecheckbox=$("#filterovertimedaterange"),
        filterovertimerequisitonsbutton=$("#filterovertime"),
        fiterovertimerequisitionstable=$("#fiterovertimerequisitionstable"),
        overtimerequisitionnotifications=$("#overtimerequisitionnotifications"),
        otapplicationdetailsmodal=$("#otapplicationdetailsmodal"),
        addnewotrequestbutton=$("#addnewotrequest"),
        otrequeststartdatefield=$("#otrequeststartdate"),
        otrequestenddatefield=$("#otrequestenddate"),
        otdepartmentfield=$("#otdepartment"),
        otemployeeslist=$("#otemployeeslist"),
        otselectallemployeescheckbox=$("#selectallotemployees"),
        otshiftfield=$("#otshift"),
        otdurationfield=$("#otduration"),
        otnarrationfield=$("#otnarration"),
        otdetailsnotifications=$("#otdetailsnotifications"),
        saveotrequestbutton=$("#saveotrequestbutton"),
        otunitfield=$("#otunit"),
        getotemployeesbutton=$("#getotemployees"),
        requisitionidfield=$("#requisitionidfield")

    filterovertimerequisitonsbutton.on("click",function(){
        overtimerequisitionnotifications.html(showAlert("processing","Processing. Please wait ...",1))
        
        const unitid=filterovertimeunitfield.val(),
            departmentid=filterotdepartmentfield.val(),
            shiftid=filterovertimeshift.val()

        filterotstartdatefield.removeClass("is-invalid tetx-danger")
        filterotenddatefield.removeClass("is-invalid text-danger")

        let startdate,enddate
        
        if(filterovertimedaterangecheckbox.prop("checked")){
            startdate='01-Jan-2024'
            enddate='31-Dec-2100'
        }else{
            startdate=sanitizestring(filterotstartdatefield.val())
            enddate=sanitizestring(filterotenddatefield.val())
        }

        if(startdate==""){
            filterotstartdatefield.addClass("is-invalid tetx-danger")
            overtimerequisitionnotifications.html(showAlert("info",`Please select filter start date`))
            filterotstartdatefield.focus()
        }else if(enddate==""){
            filterotenddatefield.addClass("is-invalid text-danger")
            overtimerequisitionnotifications.html(showAlert("info",`Please select filter end date`))
            filterotenddatefield.focus()
        }else{
            // console.log(unitid,departmentid,shiftid,startdate,enddate)
            $.getJSON(
                "../controllers/attendanceoperations.php",
                {
                    getovertimerequisitions:true,
                    unitid,
                    departmentid,
                    shiftid,
                    startdate,
                    enddate
                },
                (data)=>{
                    let results=""
                    data.forEach((request,i)=>{
                        results+=`<tr data-id=${request.requisitionid}>`
                        results+=`<td>${$.number(i+1)}</td>`
                        results+=`<td>${request.unitname}</td>`
                        results+=`<td>${request.departmentname}</td>`
                        results+=`<td>${formatDate(request.startdate)} - ${formatDate(request.enddate)}</td>`
                        results+=`<td>${$.number(request.employees)}</td>`
                        results+=`<td>${request.duration}</td>`
                        results+=`<td>${request.shiftname}</td>`
                        results+=`<td>${titleCase(request.status)}</td>`
                        results+=`<td>${formatDate(request.dateadded)}</td>`
                        results+=`<td>${request.addedbyname}</td>`
                        results+=`<td><a href='#' class='edit'><i class='fal fa-edit fa-lg fa-fw'></i></a></td>`
                        results+=`<td><a href='#' class='approve'><i class='fal fa-check-circle fa-lg fa-fw'></i></a></td>`
                        results+=`<td><a href='#' class='cancel'><i class='fal fa-times-circle fa-lg fa-fw'></i></a></td></tr>`
                    })
                    makedatatable(fiterovertimerequisitionstable,results,15)
                    overtimerequisitionnotifications.html("")
                }
            )
        }
    })

    getunits(filterovertimeunitfield,'all')
    getdepartments(filterotdepartmentfield)
    getdepartments(otdepartmentfield,'choose')
    getshifts(filterovertimeshift,'all')
    getshifts(otshiftfield,'choose')
    getunits(otunitfield,'choose')

    setDatePicker(filterotstartdatefield)
    setDatePicker(filterotenddatefield)
    setDatePicker(otrequeststartdatefield,false,true)
    setDatePicker(otrequestenddatefield,false,true)

    filterovertimedaterangecheckbox.on("change",function(){
        const status=$(this).val()
        filterotstartdatefield.prop("disabled",status)
        filterotenddatefield.prop("disabled",status)
    })

    addnewotrequestbutton.on("click",function(){
        otapplicationdetailsmodal.modal("show")
    })

    saveotrequestbutton.on("click",()=>{

        const requisitionid=requisitionidfield.val(),
            departmentid=otdepartmentfield.val(),
            shiftid=otshiftfield.val(),
            startdate=sanitizestring(otrequeststartdatefield.val()),
            enddate=sanitizestring(otrequestenddatefield.val()),
            duration=sanitizestring(otdurationfield.val()),
            narration=sanitizestring(otnarrationfield.val()),
            unitid=otunitfield.val()

        let employees=[],
            errors=""

        otemployeeslist.find("tbody input[type='checkbox']:checked").each(function(){
            const item=$(this)
            // if (item.prop("checked")){
                employees.push(item.attr("id"))
            // }
        })

        otrequeststartdatefield.removeClass("is-invalid text-danger")
        otrequeststartdatefield.removeClass("is-invalid text-danger")

        // check for blank fields
        if(unitid==""){
            errors="Please select unit"
            otunitfield.focus()
        }else if(departmentid==""){
            errors="Please select department making request"
            otdepartmentfield.focus()
        }else if(shiftid==""){
            errors="Please select applicable shift for the request"
            otshiftfield.focus()
        }else if(duration=="" || Number(duration)<=0){
            errors="Please select duration for the request"
            otdurationfield.focus()
        }else if(startdate==""){
            errors="Please select start date"
            otrequeststartdatefield.addClass("is-invalid text-danger")
        }else if(enddate==""){
            errors="Please select end date"
            otrequestenddatefield.addClass("is-invalid text-danger")
        }else if(employees.length==0){
            errors="Please check at least an employee"
        }

        if(errors==""){
            employees=JSON.stringify(employees)
            otdetailsnotifications.html(showAlert("processing","Processing. Please wait ...",1))
            $.post(
                "../controllers/attendanceoperations.php",
                {
                    saveovertimerequisition:true,
                    requisitionid,
                    unitid,
                    departmentid,
                    shiftid,
                    duration,
                    startdate,
                    enddate,
                    narration,
                    employees
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if(data.status=="success"){
                            otdetailsnotifications.html(showAlert("success",`Overtime requisition saved successfully.`))
                            // clear fields
                            clearovertimerequestfields()
                            // refresh list
                        }
                    }else{
                        otdetailsnotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                    }
                }
            )
        }else{
            otdetailsnotifications.html(showAlert("info",errors)) 
            if(otrequeststartdatefield.hasClass("is-invalid")){
                otrequeststartdatefield.focus()
            }else if(otrequestenddatefield.hasClass("is-invalid")){
                otrequestenddatefield.focus()
            }
        }
    })

    const staffshiftdetailsmodal=$("#staffshiftdetailsmodal"),
        addnewstaffshiftbutton=$("#addnewstaffshift"),
        staffshiftdetailsdepartment=$("#staffshiftdetailsdepartment"),
        staffshiftdetailsdatefield=$("#staffshiftdetailsdate"),
        staffdetailsshiftnamefield=$("#staffdetailsshiftname"),
        staffshiftdetailstable=$("#staffshiftdetailstable"),
        selectallstaffshiftemployeescheckbox=$("#selectallstaffshiftemployees")

    getdepartments(staffshiftdetailsdepartment,'all')
    setDatePicker(staffshiftdetailsdatefield,false,false)
    getshifts(staffdetailsshiftnamefield)

    addnewstaffshiftbutton.on("click",()=>{
        clearshiftfields()
        staffshiftdetailsmodal.modal("show")
    })

    selectallstaffshiftemployeescheckbox.on("click",function(){
        const status=selectallstaffshiftemployeescheckbox.prop("checked")
        staffshiftdetailstable.find("tbody input[type='checkbox']").prop("checked",status)
    })

    // add editable fields to the list
    const shiftdetailstable=$("#shiftdetailstable")

    shiftdetailstable.find("tbody tr").each(function(){

        const cell=$(this).find("td")

        const selectbox=`<select class='form-control form-control-sm'>
            <option value='workingday'>Working Day</option>
            <option value='offday'>Off Day</option>
        </select>`

        const timepicker=`<input type='text' class='timepicker form-control form-control-sm' />`

        cell.eq(2).html(selectbox).css('width','250px')
        cell.eq(3).html(timepicker).css('width','200px')
        cell.eq(4).html(timepicker).css('width','200px')
        cell.eq(5).html(`<input type="number" class='form-control form-control-sm' />`).css('width','100px')
    })

    $(".timepicker").each(function(){
        $(this).datetimepicker({
            timeOnly:true,
            // dateFormat: 'dd-M-yy' ,                
            timeFormat: 'HH:mm'
        })
    })

    shiftdetailstable.on("change","select",function(){
        const row=$(this).closest("tr")
        if($(this).val()=="offday"){
            const cols=row.find("td")
            // cols.eq(2).find("select").val(detail.status)
            cols.eq(3).find("input[type='text']").val("00:00")
            cols.eq(4).find("input[type='text']").val("00:00")
            cols.eq(5).find("input[type='number']").val("0") 
        }
    })

    const shiftnamefield=$("#shiftname"),
        saveshiftmasterfield=$("#saveshiftmaster"),
        shifttypefield=$("#shifttype"),
        shiftdetailsnotifications=$("#shiftdetailsnotifications"),
        shiftidfield=$("#shiftid"),
        defaultshiftfield=$("#defaultshift")

    let errors=""

    saveshiftmasterfield.on("click",function(){
        const shiftname=sanitizestring(shiftnamefield.val()),
            shifttype=shifttypefield.val(),
            shiftid=shiftidfield.val(),
            defaultshift=defaultshiftfield.val()
            
        let errors="",
            shiftdetails=[]

        if(shiftname==""){
            errors="Please provide shift name"
            shiftnamefield.focus()
        }else if(shifttype==""){
            errors="Please select shift type"
            shifttypefield.focus()
        }else{
            shiftdetailstable.find("tbody tr").each(function(){
                const row=$(this),
                    shiftdetailsid=row.data("shiftdetailsid"),
                    cols=row.find("td")
                // check if start time is selected
                const starttimefield=cols.eq(3).find("input[type='text']"),
                    endtimefield=cols.eq(4).find("input[type='text']"),
                    breakfield=cols.eq(5).find("input[type='number']"),
                    status=cols.eq(2).find("select").val(),
                    weekday=cols.eq(1).text()
                    
                let starttime=starttimefield.val(),
                    endtime=endtimefield.val(),
                    breakduration=breakfield.val()

                starttimefield.removeClass("is-invalid text-danger")
                endtimefield.removeClass("is-invalid text-danger")

                if(status=="offday"){
                    starttime="00:00"
                    endtime="00:00"
                    breakduration="0"
                }

                if(starttime==""){
                    errors="Please select start time for highligted entry"
                    starttimefield.addClass("is-invalid text-danger")
                }else if(endtime==""){
                    errors="Please select end time for highlighted entry"
                    endtimefield.addClass("is-invalid text-danger")
                }else if(breakduration==""){
                    errors="Please provide break duration"
                    breakfield.focus()
                    return false
                }else{
                    shiftdetails.push({"shiftdetailsid":shiftdetailsid,"weekday":weekday,"status":status,"starttime":starttime,"endtime":endtime,"break":breakduration})
                }
            })
        }

        if(errors==""){
            shiftdetails=JSON.stringify(shiftdetails)
            shiftdetailsnotifications.html(showAlert("processing","Processing. Please wait ...",1))
            $.post(
                "../controllers/attendanceoperations.php",
                {
                    saveshiftmaster:true,
                    shiftid,
                    shiftname,
                    shifttype,
                    defaultshift,
                    shiftdetails,
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if(data.status=="success"){
                            shiftdetailsnotifications.html(showAlert("success",`Shift master saved successfully`))
                            clearshiftfields()
                            shiftnamefield.focus()
                            // refresh shifts list
                            getshiftmasterastable()
                        }else if(data.status=="exists"){
                            shiftdetailsnotifications.html(showAlert("info",`Another shift with similar name already exists`))
                        }
                    }else{
                        shiftdetailsnotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                    }
                }
            )
        }else{
            shiftdetailsnotifications.html(showAlert("info",errors))
        }
    })

    function clearshiftfields(){
        shiftnamefield.val("")
        shifttypefield.val(""),
        shiftidfield.val("0")

        shiftdetailstable.find("tbody tr").each(function(){
            const row=$(this),
                cols=row.find("td")
            row.data("shiftdetailsid","")    
            cols.eq(2).find("input[type='text']").val("workingday")
            cols.eq(3).find("input[type='text']").val("")
            cols.eq(4).find("input[type='text']").val("")
            cols.eq(5).find("input[type='number']").val("")
        })
    }

    const shiftstable=$("#shiftmastertable"),
        shiftsnotifications=$("#shiftnotifications")

    function getshiftmasterastable(){
        dfd=$.Deferred()
        shiftsnotifications.html(showAlert("processing","Processing. Please wait ...",1))
        $.getJSON(
            "../controllers/attendanceoperations.php",
            {
                getshiftmaster:true
            },
            (data)=>{
                let results=""
                data.forEach((shift,i)=>{
                    results+=`<tr data-id=${shift.shiftid}>`
                    results+=`<td>${$.number(i+1)}</td>`
                    results+=`<td>${shift.shiftname}</td>`
                    results+=`<td class='text-center'><i class='fas fa-lg fa-fw >${shift.shifttype=="day"?' fa-sun text-warning':' fa-moon text-secondary'}'></i></td>`
                    for(let i=0;i<=6;i++){
                        results+=`<td  class='text-center'>&nbsp;</td>`
                    }
                    results+=`<td><a href="#" class='edit'><i class='fal fa-edit fa-lg fa-fw'></i></a></td>`
                    results+=`<td><a href="#" class='delete'><i class='fal fa-trash-alt fa-lg fa-fw'></i></a></td>>/tr>`
                })

                shiftstable.find("tbody").html(results)
                
                $.getJSON(
                    "../controllers/attendanceoperations.php",
                    {
                        getallshiftdetails:true
                    },
                    (data)=>{
                        // console.log(data)
                        data.forEach((shift)=>{                           
                            shiftstable.find("tbody tr").each(function(){
                                const row=$(this)
                                if(shift.shiftid==row.data("id")){ 
                                    let i=0
                                    shiftstable.find("thead th").each(function(){
                                        if($(this).text()==shift.dayofweek){
                                            if(shift.status=="workingday"){
                                                row.find("td").eq(i).html("<i class='fas fa-check-circle fa-lg fa-fw text-success'></i>")
                                            }else{
                                                row.find("td").eq(i).html("<i class='fas fa-times-circle fa-lg fa-fw text-danger'></i>")
                                            }
                                        }else{
                                            i++
                                        }
                                    })
                                }
                            })
                           
                        })
                    }
                )
                shiftsnotifications.html("")
                dfd.resolve()
            }
        )
        return dfd.promise()
    }

    getshiftmasterastable()

    // edit shift
    shiftstable.on("click",".edit",function(){
        const shiftid=$(this).closest("tr").data("id")
        // get shift details
        $.getJSON(
            "../controllers/attendanceoperations.php",
            {
                getmastershiftdetails:true,
                shiftid
            },
            (data)=>{
                shiftdetails=data[0]
                shiftidfield.val(shiftdetails.shiftid)
                shiftnamefield.val(shiftdetails.shiftname)
                shifttypefield.val(shiftdetails.shifttype)
                defaultshiftfield.val(shiftdetails.defaultshift)
                data.forEach((detail)=>{
                    shiftdetailstable.find("tr").each(function(){
                        const targetRow=$(this)
                        if($(this).find("td").eq(1).text()==detail.dayofweek){  
                            const cols=targetRow.find("td")
                            cols.eq(2).find("select").val(detail.status)
                            cols.eq(3).find("input[type='text']").val(detail.starts)
                            cols.eq(4).find("input[type='text']").val(detail.ends)
                            cols.eq(5).find("input[type='number']").val(detail.break)
                            // exit inner loop
                            return false
                        }
                    })
                })

                shiftdetailsmodal.modal("show")
                shiftdetailsnotifications.html("")
            }
        )
    })
   
    shiftstable.on("click",".delete",function(){
        const row=$(this).closest("tr"),
            shiftid=row.data("id"),
            shiftname=row.find("td:eq(1)").text()
        // confirm deletion with bootbox
        bootbox.dialog({
            title: "Delete shift",
            message: `<i class='fal fa-question-circle fa-2x fa-fw text-primary'></i> Confirm deletion of shift <strong>${shiftname}</strong> from the system`,
            buttons: {
                success: {
                    label: "No, Keep the Shift",
                    className: "btn-outline-success btn-sm",
                    callback: function () {
                        $('.bootbox').modal('hide');
                    }
                },
                danger: {
                    label: "Yes, Delete Permanently",
                    className: "btn-danger btn-sm",
                    callback: function () {
                        shiftsnotifications.html(showAlert("processing", "Processing. Please wait ..."))
                        $.post(
                            "../controllers/attendanceoperations.php",
                            {
                                deleteshift: true,
                                shiftid
                            },
                            (data) => {
                                if (isJSON(data)) {
                                    data = JSON.parse(data)
                                    if (data.status == "success") {  
                                        // refresh list
                                        getshiftmasterastable().done(()=>{
                                            shiftsnotifications.html(showAlert("success", `Shift <strong>${shiftname}</strong> was deleted successfully`))
                                            // $('.bootbox').modal('hide');
                                        })
                                    }
                                } else {
                                    shiftsnotifications.html(showAlert("danger", `Sorry an error occured ${data}`))
                                }
                            }
                        )
                    }
                }
            }


        })
    })
    // save overtime application
    // otdepartmentfield.on("change",function(){

    // })
    
    function getotdepartmentunitemployees(){
        const unitid=otunitfield.val(),
            departmentid=otdepartmentfield.val()
        if(unitid==''|| departmentid==""){
            otemployeeslist.find("tbody tr").remove()
            otdetailsnotifications.html(showAlert("info",`Please select both unit and department first`))
        }else{
            $.getJSON(
                "../controllers/employeeoperations.php",
                {
                    filterstaffbyunitdepartmentsection:true,
                    unitid,
                    departmentid,
                    sectionid:0
                },
                (data)=>{
                    let results=""
                    data.forEach((employee,i)=>{
                        results+=`<tr data-id=${employee.employeeid}>`
                        results+=`<td><input type='checkbox' id=${employee.employeeid}></td>`
                        results+=`<td>${$.number(i+1)}</td>`
                        results+=`<td>${employee.staffno}</td>`
                        results+=`<td>${employee.firstname} ${employee.middlename} ${employee.lastname}`
                        results+=`<td>${employee.positionname}</td></tr>`
                    })
                    otemployeeslist.find("tbody").html(results) 
                }
            )
        }
        
    }

    getotemployeesbutton.on("click",()=>{
        getotdepartmentunitemployees() 
    })

    otselectallemployeescheckbox.on("click",function(){
        const status=$(this).prop("checked")
        // console.log(status)
        otemployeeslist.find("tbody input[type='checkbox']").prop("checked",status)
    })

    function clearovertimerequestfields(){
        requisitionidfield.val("0")
        otdepartmentfield.val("")
        otshiftfield.val("")
        otrequeststartdatefield.val("")
        otrequestenddatefield.val("")
        otdurationfield.val("")
        otnarrationfield.val("") 
        otemployeeslist.find("tbody tr").remove()
    }

    validatedatabutton.on("click",function(){
        validatedata()
    })

    function validatedata(){
        let invalidemployees=false, invalidcheckintime=false,invalidcheckouttime=false
        const dfd=$.Deferred()
        if(importattendancestaffnocolfield.val()==""){
            importattendancenotifications.html(showAlert("info","Please select collumn with staff number"))
            importattendancestaffnocolfield.focus()
        }else if(importattendanceclockinfield.val()==""){
            importattendancenotifications.html(showAlert("info","Please select collumn with clock-in time"))
            importattendanceclockinfield.focus()
        }else if(importattendanceclockoutfield.val()==""){
            importattendancenotifications.html(showAlert("info","Please select collumn with clock-out time"))
            importattendanceclockoutfield.focus()
        }else{
            importattendancenotifications.html(showAlert("processing","Processing. Please wait ...",1))
            $.getJSON(
                '../controllers/employeeoperations.php',
                {
                    getallemployees:true
                },
                (data)=>{
                    const tablecols=importattendancetable.find("thead th").length-1,
                        staffnocolname=importattendancestaffnocolfield.find("option:selected").text()
                    let staffnocol

                    for(let i=0;i<=tablecols;i++){
                        if(importattendancetable.find("thead th").eq(i).text()===staffnocolname){
                            staffnocol=i
                            break
                        }
                    }

                    importattendancetable.find("tbody tr").each(function(){
                        const row=$(this)
                            staffcol=row.find("td").eq(staffnocol)
                        for(let i=data.length-1;i>=0;i--){
                            if(data[i].staffno==row.find("td").eq(staffnocol).text()){
                                // remove the current array element to make smaller for the next search
                                // console.log(data[i].employeeid)
                                row.attr("data-employeeid",data[i].employeeid)
                                data.slice(i)
                                // exit inner loop
                               break
                            }
                        }  
                    })

                    // highlight all entries without employeeid field
                    importattendancetable.find("tbody tr").each(function(){
                        row=$(this)
                        if(row.data("employeeid")==""){
                            row.find("td").addClass("text-danger")
                            invalidemployees=true
                        }else{
                            row.find("td").removeClass("text-danger")
                        }
                    })

                    if(invalidemployees){
                        importattendancenotifications.html(showAlert("info",`Invalid staff number(s) for all highlighted employees`))   
                        // show remove invalid data
                        removeinvaliddatabutton.data("id","staffdetails").show()
                    }else{
                        // validate all clock in fields
                        const clockinfieldname=importattendanceclockinfield.find("option:selected").text()
                        let clockinfield
                        for(let i=0;i<=tablecols;i++){
                            if(importattendancetable.find("thead th").eq(i).text()===clockinfieldname){
                                clockinfield=i
                                break
                            }
                        }

                        importattendancetable.find("tbody tr").each(function(){
                            const row=$(this),
                            clockintime=row.find("td").eq(clockinfield).text()
                            // console.log(clockintime)
                            if(!isValidTime(clockintime) ){
                                row.attr("data-invalidcheckin",true)
                                row.find("td").addClass("text-danger")
                                invalidcheckintime=true
                            }   
                        })

                        if(invalidcheckintime){
                            importattendancenotifications.html(showAlert("info",`Invalid clock-in time for all highlighted employees`))   
                            // show remove invalid data
                            removeinvaliddatabutton.data("id","clockintime").show()
                        }else{
                            // validate clock out time
                            const clockoutfieldname=importattendanceclockoutfield.find("option:selected").text()
                            let clockoutfield
                            for(let i=0;i<=tablecols;i++){
                                if(importattendancetable.find("thead th").eq(i).text()===clockoutfieldname){
                                    clockoutfield=i
                                    break
                                }
                            }

                            importattendancetable.find("tbody tr").each(function(){
                                const row=$(this),
                                clockouttime=row.find("td").eq(clockoutfield).text()
                                if(!isValidTime(clockouttime) && clockouttime!=""){
                                    row.attr("data-invalidcheckout",true)
                                    row.find("td").addClass("text-danger")
                                    invalidcheckouttime=true
                                }   
                            })

                            if(invalidcheckouttime){
                                importattendancenotifications.html(showAlert("info",`Invalid clock-out time for all highlighted employees`))   
                                // show remove invalid data
                                removeinvaliddatabutton.data("id","clockouttime").show()
                            }else{
                                importattendancenotifications.html(showAlert("success",`All data checked and confirmed as OK`))
                                removeinvaliddatabutton.data("id","").hide()
                            }
                        } 
                        dfd.resolve() 
                    }
                }
            )
        } 
        return dfd.promise()
    }
    removeinvaliddatabutton.on("click",function(){
        importattendancenotifications.html("")
        const button=$(this)
        switch (button.data("id")) {
            case "staffdetails":
                // confirm with boot box
                importattendancetable.find("tr").filter(function() {
                    let empId = $(this).attr("data-employeeid");
                    return empId === undefined || empId === "";
                }).remove();
                break;
            case "clockintime":
                importattendancetable.find("tr").filter(function() {
                    let empId = $(this).attr("data-invalidcheckin");
                    return empId === undefined || empId === "";
                }).remove();
                break;
            case "clockouttime":
                importattendancetable.find("tr").filter(function() {
                    let empId = $(this).attr("data-invalidcheckout");
                    return empId === undefined || empId === "";
                }).remove();
                break
            default:
                break;
        }

        button.data("id","")
        button.hide()
    })

    const staffdetailsunitfield=$("#staffshiftdetailsunit"),
        staffdetailssectionfield=$("#staffshiftdetailssection"),
        savestaffshiftbutton=$("#savestaffshift"),
        staffshiftdetailsnotifications=$("#staffshiftdetailsnotifications")

    getunits(staffdetailsunitfield,'all')
    staffdetailssectionfield.html(`<option value='0'>&lt;All&gt;</option>`)

    staffdetailsunitfield.on("change",()=>{
        filterunitdepartmentsectionstaff()
    })

    staffshiftdetailsdepartment.on("change",function(){
        departmentid=$(this).val()
        getsections(staffdetailssectionfield,departmentid,'all').done(()=>{
            filterunitdepartmentsectionstaff()
        })
    })

    staffdetailssectionfield.on("change",()=>{
        filterunitdepartmentsectionstaff()
    })

    function filterunitdepartmentsectionstaff(){
        const unitid=staffdetailsunitfield.val(),
            departmentid=staffshiftdetailsdepartment.val(),
            sectionid=staffdetailssectionfield.val()
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                filterstaffbyunitdepartmentsection:true,
                unitid,
                departmentid,
                sectionid
            },
            (data)=>{
                let results=''
                data.forEach((employee,i)=>{
                    results+=`<tr data-id=${employee.employeeid}>`
                    results+=`<td><input type='checkbox' id=${employee.employeeid}/></td>`
                    results+=`<td>${$.number(i+1)}</td>`
                    results+=`<td>${employee.staffno}</td>`
                    results+=`<td>${employee.firstname} ${employee.middlename} ${employee.lastname}`
                    results+=`<td>${employee.positionname}</td>`
                    results+=`<td>${employee.shiftname}</td></tr>`
                })
                staffshiftdetailstable.find("tbody").html(results) 
            }
        )
    }

    savestaffshiftbutton.on("click",()=>{
        const shiftid=staffdetailsshiftnamefield.val(),
            savedstaff=staffshiftdetailstable.find(`tbody td input[type='checkbox']:checked`).length
           
        let errors='', employees=[]
        // check for errors
        if(shiftid==""){
            errors="Please select new shift"
            staffdetailsshiftnamefield.focus()
        }else if(savedstaff==0){
            errors="Please select at least a staff member first"
        }

        if(errors==""){
            staffshiftdetailsnotifications.html(showAlert("processing","Processing.Please wait ...",1))
            staffshiftdetailstable.find(`tbody td input[type='checkbox']:checked`).each(function(){
                const employeeid=$(this).closest("tr").data("id")
                employees.push(employeeid)
            })

            employees=JSON.stringify(employees)

            $.post(
                "../controllers/employeeoperations.php",
                {
                    changestaffshift:true,
                    shiftid,
                    employees
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                        if(data.status=="success"){
                            staffshiftdetailsnotifications.html(showAlert("success",`Employees shift changed successfully`))
                            // refresh window
                            filterunitdepartmentsectionstaff()
                        }
                    }else{
                        staffshiftdetailsnotifications.html(showAlert("danger",`Sorry an erro occured ${data}`))
                    }
                }
            )
        }else{
            staffshiftdetailsnotifications.html(showAlert("info",errors))
        }
    })

    // filter current staff shirt
    const filterstaffshiftunitfield=$("#filtershiftunit"),
        filterstaffshiftdepartmentfield=$("#filtershiftdepartment"),
        filterstaffshiftsection=$("#filtershiftsection"),
        filterstaffcurrentshiftbutton=$("#filterstaffshift"),
        filterstaffshifttable=$("#filterstaffshifttable"),
        staffshiftnotifications=$("#staffshiftnotifications")

    // get batch data
    getunits(filterstaffshiftunitfield,'all') 
    getdepartments(filterstaffshiftdepartmentfield,'all')

    filterstaffshiftdepartmentfield.on("change",function(){
        const departmentid=$(this).val()
        getsections(filterstaffshiftsection,departmentid,'all')
    })

    filterstaffcurrentshiftbutton.on("click",function(){
        const unitid=filterstaffshiftunitfield.val(),
            departmentid=filterstaffshiftdepartmentfield.val(),
            sectionid=filterstaffshiftsection.val()

        staffshiftnotifications.html(showAlert("processing","Processing. Please wait ...",1))

        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getovertimerequisitions:true,
                unitid,
                departmentid,
                sectionid
            },
            (data)=>{
                let results=''
                data.forEach((employee,i)=>{
                    results+=`<tr data-id=${employee.employeeid}>`
                    // results+=`<td><input type='checkbox' id=${employee.employeeid}/></td>`
                    results+=`<td>${$.number(i+1)}</td>`
                    results+=`<td>${employee.unitname}</td>`
                    results+=`<td>${employee.departmentname}</td>`
                    results+=`<td>${employee.sectionname}</td>`
                    results+=`<td>${employee.shiftname}</td>`
                    results+=`<td>${employee.staffno}</td>`
                    results+=`<td>${employee.firstname} ${employee.middlename} ${employee.lastname}</td>`
                    results+=`<td>${employee.positionname}</td></tr>`
                    
                })
                makedatatable(filterstaffshifttable,results,15) 
                staffshiftnotifications.html("")
            }
        )
    })

    // hide by default
    exceptionsfilter.hide()

    // markclockinbutton.on("click",function(){
    //     if(attendanceactionsemployeestable.find("tbody input[type='checkbox']:checked").length==0){
    //         attendanceactionnotifications.html(showAlert("info","Please select by ticking at least an employee first"))
    //     }else{ 
    //         markclockintimemodal.modal("show")
    //     }
    // })

    //  Clock out time modal
    // markclockoutbutton.on("click",function(){
    //     if(attendanceactionsemployeestable.find("tbody input[type='checkbox']:checked").length==0){
    //         attendanceactionnotifications.html(showAlert("info","Please select by ticking at least an employee first"))
    //     }else{ 
    //         markclockouttimemodal.modal("show")
    //     }
    // })

    // set datepickers
    setDatePicker(attendanceactionstartdatefield)
    // setDatePicker(attendanceactionenddatefield)

    // populate existing values from the system
    getunits(attendanceactionunitfield,'all')
    getdepartments(attendanceactiondepartmentfield,'all')

    // toggle eceptions filter
    togglecompleteexceptionscheckbox.on("click",function(){     
        console.log("Clicked")   
        if($(this).is(":checked")){
            exceptionsfilter.hide()
        }else{
            exceptionsfilter.show()
        }
    })

    filterbuttons.on("click",function(){
        const startdate=sanitizestring(attendanceactionstartdatefield.val()),
            enddate=sanitizestring(attendanceactionstartdatefield.val())
        let errors=""

        $this=$(this)
        //    reset all other buttons
        filterbuttons.each(function(){
            $(this).removeClass("btn-success").addClass("btn-outline-success")
        }) 
        
        // set currently selected button
        $this.toggleClass("btn-outline-success btn-success")

        // check selected button by id
        const buttonid=$this.prop("id")
        if(buttonid=="filterabsent"){
            $.getJSON(
                "../controllers/attendanceoperations.php",
                {
                    getattendanceabsentemployees:true,
                    startdate,
                    enddate
                },
                (data)=>{
                    let results=""
                    data.forEach((employee,i)=>{
                        results+=`<tr data-id='${employee.employeeid}'>`
                        results+=`<td><input type='checkbox' id=${employee.employeeid}></td>`
                        results+=`<td>${$.number(i+1)}</td>`
                        results+=`<td>${formatDate(employee.workdate)}</td>`
                        results+=`<td>${employee.unitname}</td>`
                        results+=`<td>${employee.departmentname}</td>`
                        results+=`<td>${employee.sectionname}</td>`
                        results+=`<td>${employee.staffno}</td>`
                        results+=`<td data-employeeid=${employee.employeeid}>${employee.firstname} ${employee.middlename} ${employee.lastname}</td>`
                        results+=`<td>${employee.idno}</td>`
                        results+=`<td data-shiftid='${employee.shiftid}'>${employee.shiftname}</td>`
                        results+=`<td>&nbsp;</td>`
                        results+=`<td>&nbsp;</td>`
                        results+=`<td>&nbsp;</td>`
                        results+=`<td>&nbsp;</td>`
                        results+=`<td>&nbsp;</td>`
                        results+=`<td>&nbsp;</td></tr>`
                    })
                    makedatatable(attendanceactionsemployeestable,results,10)
                }
            )
        }else if(buttonid=="filteronleave"){
            $.getJSON(
                "../controllers/attendanceoperations.php",
                {
                    getemployeesonleave:true,
                    workdate:startdate
                },
                (data)=>{
                    let results=""
                    data.forEach((employee,i)=>{
                        const approvedot=employee.otworked>employee.approvedot?employee.approvedot:employee.otworked
                        results+=`<tr data-id='${employee.employeeid}'>`
                        results+=`<td><input type='checkbox' id=${employee.employeeid}></td>`
                        results+=`<td>${$.number(i+1)}</td>`
                        results+=`<td>${formatDate(employee.workdate)}</td>`
                        results+=`<td>${employee.unitname}</td>`
                        results+=`<td>${employee.departmentname}</td>`
                        results+=`<td>${employee.sectionname}</td>`
                        results+=`<td>${employee.staffno}</td>`
                        results+=`<td data-employeeid=${employee.employeeid}>${employee.firstname} ${employee.middlename} ${employee.lastname}</td>`
                        results+=`<td>${employee.idno}</td>`
                        results+=`<td data-shiftid='${employee.shiftid}'>${employee.shiftname}</td>`
                        results+=`<td>${employee.clockin}</td>`
                        results+=`<td>${employee.clockout}</td>`
                        results+=`<td>${employee.leavename}</td>`
                        results+=`<td>${employee.approvedot}</td>`
                        results+=`<td>${employee.otworked>employee.approvedot?employee.otworked-employee.approvedot:0}</td>`
                        results+=`<td>${employee.losthours}</td></tr>`
                    })
                    makedatatable(attendanceactionsemployeestable,results,10)
                }
            )
        }else if(buttonid=="filterinvalidsignin"){
            $.getJSON(
                "../controllers/attendanceoperations.php",
                {
                    getinvalidclockinhours:true,
                    workdate:startdate
                },
                (data)=>{
                    let results=""
                    data.forEach((employee,i)=>{
                        // const approvedot=employee.otworked>employee.approvedot?employee.approvedot:employee.otworked
                        results+=`<tr data-id='${employee.employeeid}'>`
                        results+=`<td><input type='checkbox' id=${employee.employeeid}></td>`
                        results+=`<td>${$.number(i+1)}</td>`
                        results+=`<td>${formatDate(employee.workdate)}</td>`
                        results+=`<td>${employee.unitname}</td>`
                        results+=`<td>${employee.departmentname}</td>`
                        results+=`<td>${employee.sectionname}</td>`
                        results+=`<td>${employee.staffno}</td>`
                        results+=`<td data-employeeid=${employee.employeeid}>${employee.firstname} ${employee.middlename} ${employee.lastname}</td>`
                        results+=`<td>${employee.idno}</td>`
                        results+=`<td data-shiftid='${employee.shiftid}'>${employee.shiftname}</td>`
                        results+=`<td>${employee.clockin}</td>`
                        results+=`<td>${employee.clockout}</td>`
                        results+=`<td>&nbsp;</td>`
                        results+=`<td>&nbsp;</td>`
                        results+=`<td>&nbsp;</td>`
                        results+=`<td>&nbsp;</td></tr>`
                    })
                    makedatatable(attendanceactionsemployeestable,results,10)
                }
            )
        }else if(buttonid=="filterinvalidsignout"){
            $.getJSON(
                "../controllers/attendanceoperations.php",
                {
                    getinvalidclockouthours:true,
                    workdate:startdate
                },
                (data)=>{
                    let results=""
                    data.forEach((employee,i)=>{
                        // const approvedot=employee.otworked>employee.approvedot?employee.approvedot:employee.otworked
                        results+=`<tr data-id='${employee.employeeid}'>`
                        results+=`<td><input type='checkbox' id=${employee.employeeid}></td>`
                        results+=`<td>${$.number(i+1)}</td>`
                        results+=`<td>${formatDate(employee.workdate)}</td>`
                        results+=`<td>${employee.unitname}</td>`
                        results+=`<td>${employee.departmentname}</td>`
                        results+=`<td>${employee.sectionname}</td>`
                        results+=`<td>${employee.staffno}</td>`
                        results+=`<td data-employeeid=${employee.employeeid}>${employee.firstname} ${employee.middlename} ${employee.lastname}</td>`
                        results+=`<td>${employee.idno}</td>`
                        results+=`<td data-shiftid='${employee.shiftid}'>${employee.shiftname}</td>`
                        results+=`<td>${employee.clockin}</td>`
                        results+=`<td>${employee.clockout}</td>`
                        results+=`<td>&nbsp;</td>`
                        results+=`<td>&nbsp;</td>`
                        results+=`<td>&nbsp;</td>`
                        results+=`<td>&nbsp;</td></tr>`
                    })
                    makedatatable(attendanceactionsemployeestable,results,10)
                }
            )
        }else if(buttonid=="filterunapprovedot"){
            $.getJSON(
                "../controllers/attendanceoperations.php",
                {
                    getemployeeattendance:true,
                    startdate,
                    enddate,
                    unitid:0,
                    departmentid:0,
                    sectionid:0
                },
                (data)=>{
                    let results=""
                    data=data.filter((employee)=>employee.otworked>employee.approvedot)                    
                    data.forEach((attendance,i)=>{
                        const approvedot=attendance.otworked>attendance.approvedot?attendance.approvedot:attendance.otworked
                        results+=`<tr data-id='${attendance.employeeattendanceid}'>`
                        results+=`<td><input type='checkbox' id=${attendance.employeeattendanceid}'></td>`
                        results+=`<td>${$.number(i+1)}</td>`
                        results+=`<td>${attendance.date}</td>`
                        results+=`<td>${attendance.unitname}</td>`
                        results+=`<td>${attendance.departmentname}</td>`
                        results+=`<td>${attendance.sectionname}</td>`
                        results+=`<td data-employeeid=${attendance.employeeid}>${attendance.staffno}</td>`
                        results+=`<td>${attendance.firstname} ${attendance.middlename} ${attendance.lastname}</td>`
                        results+=`<td>${attendance.idno}</td>`
                        results+=`<td >${attendance.shiftname}</td>`
                        results+=`<td>${attendance.clockin}</td>`
                        results+=`<td>${attendance.clockout}</td>`
                        results+=`<td>${attendance.leave}</td>`
                        results+=`<td>${approvedot}</td>`
                        results+=`<td>${attendance.otworked>attendance.approvedot?attendance.otworked-attendance.approvedot:0}</td>`
                        results+=`<td>${attendance.losthours}</td></tr>`
                    })
                    makedatatable(attendanceactionsemployeestable,results,15)
                    attendanceactionnotifications.html("")
                }
            )
        }else if(buttonid=="filterlosthours"){
            $.getJSON(
                "../controllers/attendanceoperations.php",
                {
                    getemployeeattendance:true,
                    startdate,
                    enddate,
                    unitid:0,
                    departmentid:0,
                    sectionid:0
                },
                (data)=>{
                    let results=""
                    data=data.filter((employee)=>employee.losthours>0)                    
                    data.forEach((attendance,i)=>{
                        const approvedot=attendance.otworked>attendance.approvedot?attendance.approvedot:attendance.otworked
                        results+=`<tr data-id='${attendance.employeeattendanceid}'>`
                        results+=`<td><input type='checkbox' id=${attendance.employeeattendanceid}'></td>`
                        results+=`<td>${$.number(i+1)}</td>`
                        results+=`<td>${attendance.date}</td>`
                        results+=`<td>${attendance.unitname}</td>`
                        results+=`<td>${attendance.departmentname}</td>`
                        results+=`<td>${attendance.sectionname}</td>`
                        results+=`<td data-employeeid=${attendance.employeeid}>${attendance.staffno}</td>`
                        results+=`<td>${attendance.firstname} ${attendance.middlename} ${attendance.lastname}</td>`
                        results+=`<td>${attendance.idno}</td>`
                        results+=`<td >${attendance.shiftname}</td>`
                        results+=`<td>${attendance.clockin}</td>`
                        results+=`<td>${attendance.clockout}</td>`
                        results+=`<td>${attendance.leave}</td>`
                        results+=`<td>${approvedot}</td>`
                        results+=`<td>${attendance.otworked>attendance.approvedot?attendance.otworked-attendance.approvedot:0}</td>`
                        results+=`<td>${attendance.losthours}</td></tr>`
                    })
                    makedatatable(attendanceactionsemployeestable,results,15)
                    attendanceactionnotifications.html("")
                }
            )
        }else if(buttonid=="filterinactive"){
            $.getJSON(
                "../controllers/attendanceoperations.php",
                {
                    getinactiveattendanceemployees:true,
                    workdate:startdate
                },
                (data)=>{
                    let results=""
                    data.forEach((employee,i)=>{
                        const approvedot=employee.otworked>employee.approvedot?employee.approvedot:employee.otworked
                        results+=`<tr data-id='${employee.employeeid}'>`
                        results+=`<td><input type='checkbox' id=${employee.employeeid}></td>`
                        results+=`<td>${$.number(i+1)}</td>`
                        results+=`<td>${formatDate(employee.date)}</td>`
                        results+=`<td>${employee.unitname}</td>`
                        results+=`<td>${employee.departmentname}</td>`
                        results+=`<td>${employee.sectionname}</td>`
                        results+=`<td>${employee.staffno}</td>`
                        results+=`<td data-employeeid=${employee.employeeid}>${employee.firstname} ${employee.middlename} ${employee.lastname}</td>`
                        results+=`<td>${employee.idno}</td>`
                        results+=`<td data-shiftid='${employee.shiftid}'>${employee.shiftname}</td>`
                        results+=`<td>${employee.clockin}</td>`
                        results+=`<td>${employee.clockout}</td>`
                        results+=`<td>${employee.leavename}</td>`
                        results+=`<td>${approvedot}</td>`
                        results+=`<td>${employee.otworked>employee.approvedot?employee.otworked-employee.approvedot:0}</td>`
                        results+=`<td>${employee.losthours}</td></tr>`
                    })
                    makedatatable(attendanceactionsemployeestable,results,10)
                }
            )
        }
    })

    // check all items in the attendance action employees table
    selectallattendanceactioncheckbox.on("click",function(){
        const status=$(this).prop("checked")
        attendanceactionsemployeestable.find("tbody input[type='checkbox']").prop("checked",status)

        // attendanceactionsemployeestable.DataTable().rows().every(function() {
        //     $(this.node()).find(`tbody input[type='checkbox']`).prop("checked",status)
        // })
    })

    attendanceactiondepartmentfield.on("change",function(){
        const departmentid=$(this).val()
        getsections(attendanceactionsectionfield,departmentid,'all')
    })

    filterattendanceactionsbutton.on("click",()=>{
        getemployeeattendance()
    })

    function getemployeeattendance(){

        const startdate=sanitizestring(attendanceactionstartdatefield.val()),
            enddate=sanitizestring(attendanceactionstartdatefield.val()),
            unitid=attendanceactionunitfield.val(),
            departmentid=attendanceactiondepartmentfield.val(),
            sectionid=attendanceactionsectionfield.val()

        let errors=""

        attendanceactionstartdatefield.removeClass("is-invalid text-danger")
        attendanceenddatefield.removeClass("is-invalid text-danger")

        if(startdate==""){
            errors="Please select start date"
            attendanceactionstartdatefield.addClass("is-invalid text-danger")
        }
        
        // else if(enddate==""){
        //     errors="Please select end date"
        //     attendanceenddatefield.addClass("is-invalid text-danger")
        // }

        if(errors==""){
            attendanceactionnotifications.html(showAlert("processing","Processing please wait ...",1))
            $.getJSON(
                "../controllers/attendanceoperations.php",
                {
                    getemployeeattendance:true,
                    startdate,
                    enddate,
                    unitid,
                    departmentid,
                    sectionid
                },
                (data)=>{
                    let results=""
                    data.forEach((attendance,i)=>{
                        const approvedot=attendance.otworked>attendance.approvedot?attendance.approvedot:attendance.otworked
                        results+=`<tr data-id='${attendance.employeeattendanceid}'>`
                        results+=`<td><input type='checkbox' id=${attendance.employeeattendanceid}'></td>`
                        results+=`<td>${$.number(i+1)}</td>`
                        results+=`<td>${attendance.date}</td>`
                        results+=`<td>${attendance.unitname}</td>`
                        results+=`<td>${attendance.departmentname}</td>`
                        results+=`<td>${attendance.sectionname}</td>`
                        results+=`<td data-employeeid=${attendance.employeeid}>${attendance.staffno}</td>`
                        results+=`<td>${attendance.firstname} ${attendance.middlename} ${attendance.lastname}</td>`
                        results+=`<td>${attendance.idno}</td>`
                        results+=`<td >${attendance.shiftname}</td>`
                        results+=`<td>${attendance.clockin}</td>`
                        results+=`<td>${attendance.clockout}</td>`
                        results+=`<td>${attendance.leave}</td>`
                        results+=`<td>${approvedot}</td>`
                        results+=`<td>${attendance.otworked>attendance.approvedot?attendance.otworked-attendance.approvedot:0}</td>`
                        results+=`<td>${attendance.losthours}</td></tr>`
                    })
                    makedatatable(attendanceactionsemployeestable,results,15)
                    attendanceactionnotifications.html("")
                }
            )
        }else{
            attendanceactionnotifications.html(showAlert("info",errors))
            if(attendanceactionstartdatefield.hasClass("is-invalid")){
                attendanceactionstartdatefield.focus()
            }else if(attendanceenddatefield.hasClass("is-invalid")){
                attendanceenddatefield.focus()
            }
        }
    }   

    // mark selected employees as present
    savemarkpresentbutton.on("click",function(){
        const clockin=sanitizestring(markpresentclockinfield.val()),
            clockout=sanitizestring(markpresentclockoutfield.val())
           
        let errors="", employees=[], counter=0  

        markpresentclockinfield.removeClass("is-invalid text-danger")
        markpresentclockoutfield.removeClass("is-invalid text-danger")

        if(clockin==""){
            errors="Please select clock in time"
            markpresentclockinfield.addClass("is-invalid text-danger")
        }else if(clockout==""){
            errors="Please select clock out time"
            markpresentclockoutfield.addClass("is-invalid text-danger")
        }

        if(errors==""){
            // get all checked fields
            markpresentnotifications.html("")                   
            getotandlosthours().done(()=>{
                attendanceactionsemployeestable.find("tbody input[type='checkbox']:checked").each(function(){
                    const parent=$(this).closest("tr"),
                        employeeid=parent.find("td:eq(7)").data("employeeid"),
                        attendancedate=parent.find("td:eq(2)").text(),
                        clockin=parent.find("td:eq(10)").text(),
                        clockout=parent.find("td:eq(11)").text(),   
                        overtime=parent.find("td:eq(13)").text(),
                        losthours=parent.find("td:eq(15)").text()
                    employees.push({"employeeid":employeeid,"attendancedate":attendancedate,"clockin":clockin,"clockout":clockout,"overtime":overtime,"losthours":losthours})
                })
               
            
                markpresentnotifications.html(showAlert("processing","Processing. Please wait ...",1))
                $.post(
                    "../controllers/attendanceoperations.php",
                    {
                        saveemployeeattendancesheet:true,
                        operation:"markpresent",
                        employees:JSON.stringify(employees)
                    },
                    (data)=>{
                        if(isJSON(data)){
                            data=JSON.parse(data)
                            data.forEach((result)=>{
                                const row = attendanceactionsemployeestable.find("tbody tr").filter(function () {
                                    return $(this).find("td:eq(7)").attr("data-employeeid") == result.employeeid;
                                })
                                
                                if(row.length>0){
                                    if(result.status=="success"){
                                        row.find("td").addClass("text-success")
                                    }
                                }
                            })
                            markpresentnotifications.html(showAlert("success",`Selected employees were marked present successfully. Check colour code`))
                        }else{
                            markpresentnotifications.html(showAlert("danger",`Sorry an error occured ${data}`))
                        }      
                    }
                )
            })
        }else{
            markpresentnotifications.html(showAlert("info",errors))
            if(markpresentclockinfield.hasClass("is-invalid")){
                markpresentclockinfield.focus()
            }else if(markpresentclockoutfield.hasClass("is-invalid")){
                markpresentclockoutfield.focus()
            }
        }
    })


    function getotandlosthours(){
       const dfd=$.Deferred(),
            clockin=sanitizestring(markpresentclockinfield.val()),
            clockout=sanitizestring(markpresentclockoutfield.val()),
            promises=[]

        attendanceactionsemployeestable.find("tbody input[type='checkbox']:checked").each(function(){
            const parent=$(this).closest("tr"),
                shiftid=parent.find("td:eq(9)").data("shiftid"),
                workdate=parent.find("td:eq(2)").text()

            parent.find("td:eq(10)").text(clockin)
            parent.find("td:eq(11)").text(clockout)

            // get general lost hours for all items
            const promise = $.getJSON(
                "../controllers/attendanceoperations.php",
                {
                    getgeneralotandlosthours:true,
                    shiftid,
                    workdate,
                    clockin,
                    clockout
                }).done(function(data){
                    data=data[0]
                    parent.find("td:eq(15)").text(data.losthours)
                    parent.find("td:eq(13)").text(data.overtime)
                })

            promises.push(promise)
        })

        $.when.apply($, promises).then(function () {
            dfd.resolve();
        })

        return dfd.promise();
    }

    attendanceactionviewselectedonly.on("click",function(){
        const status=$(this).prop("checked")
        attendanceactionsemployeestable.find("tbody input[type='checkbox']").each(function(){
            // console.log($(this))
            const parent=$(this).closest("tr")
            if(status){
                if($(this).is(":checked")){
                    parent.show()
                }else{
                    parent.hide()
                }
            }else{
                parent.show()
            }
        })
    })

    saveclockintimebutton.on("click",function(){
        // get all checked trs
        const clockintime=sanitizestring(markclockintimefield.val())
        if(clockintime==""){
            markclockintimenotifications.html(showAlert("info","Please select clock in time"))
            markclockintimefield.focus()
        }else{
            attendanceactionsemployeestable.find("tbody input[type='checkbox']:checked").each(function(){
                const parent=$(this).closest("tr")
                parent.find("td:eq(10)").text(markclockintimefield.val())
                // calculate overtime lost time
            })
            getclockinotandlosthours()
        }
    })
    

    function getclockinotandlosthours(){
        const dfd=$.Deferred(),
            promises=[]
 
         attendanceactionsemployeestable.find("tbody input[type='checkbox']:checked").each(function(){
            const parent=$(this).closest("tr"),
                shiftid=parent.find("td:eq(9)").data("shiftid"),
                workdate=parent.find("td:eq(2)").text(),
                clockout=parent.find("td:eq(11)").text().replace("null",''),
                clockin=parent.find("td:eq(10)").text().replace("null",'') 

             parent.find("td:eq(10)").text(clockin)
            //  parent.find("td:eq(11)").text(clockout)
            if(clockout!="" && clockout!==null){
                 // get general lost hours for all items
                const promise = $.getJSON(
                    "../controllers/attendanceoperations.php",
                    {
                        getgeneralotandlosthours:true,
                        shiftid,
                        workdate,
                        clockin,
                        clockout
                    }).done(function(data){
                        data=data[0]
                        parent.find("td:eq(15)").text(data.losthours)
                        parent.find("td:eq(13)").text(data.overtime)
                    })
    
                promises.push(promise)
            }
             
        })
 
        $.when.apply($, promises).then(function () {
             dfd.resolve();
        })
 
        return dfd.promise();
    }

    // Save Clockout time
    saveclockouttimebutton.on("click",function(){
        // get all checked trs
        const clockouttime=sanitizestring(markclockouttimefield.val())
        // console.log('Check out time',clockouttime)
        if(clockouttime==""){
            markclockouttimenotifications.html(showAlert("info","Please Select Clock Out Time"))
            markclockouttimefield.focus()
        }else{         
            attendanceactionsemployeestable.find("tbody input[type='checkbox']:checked").each(function(){
                const parent=$(this).closest("tr")
                parent.find("td:eq(11)").text(clockouttime)
                // calculate overtime lost time
            })
            getclockoutotandlosthours()         
        }
    })

    function getclockoutotandlosthours(){
        const dfd=$.Deferred(),
            promises=[]

         attendanceactionsemployeestable.find("tbody input[type='checkbox']:checked").each(function(){
            const parent=$(this).closest("tr"),
                shiftid=parent.find("td:eq(9)").data("shiftid"),
                workdate=parent.find("td:eq(2)").text(),
                clockout=parent.find("td:eq(11)").text().replace("null",''),
                clockin=parent.find("td:eq(10)").text().replace("null",'') 

                //  parent.find("td:eq(10)").text(clockin)
                parent.find("td:eq(11)").text(clockout)
            
            if(clockin!="" && clockin!==null){
                 // get general lost hours for all items
                const promise = $.getJSON(
                    "../controllers/attendanceoperations.php",
                    {
                        getgeneralotandlosthours:true,
                        shiftid,
                        workdate,
                        clockin,
                        clockout
                    }).done(function(data){
                        data=data[0]
                        parent.find("td:eq(15)").text(data.losthours)
                        parent.find("td:eq(13)").text(data.overtime)
                    })
                promises.push(promise)
            }
             
        })
 
        $.when.apply($, promises).then(function () {
            markclockouttimenotifications.html(showAlert("success",`Clockout time for selected employees set successfully`))
            dfd.resolve();
        })
 
        return dfd.promise();
    }

    // save leave application
    saveleaveapplicationbutton.on("click", function(){
        // take the leave inputs with the new variables
        const leavetypeid=attendanceemployeeleavetypefield.val(),
            halfdayapplication=halfdayapplicationfield.val(),
            shifthalf=shifthalffield.val(),
            narration=sanitizestring(leaveapplicationnarrationfield.val()),
            startdate=attendanceleaveapplicationdate.val(),
            enddate=startdate,
            daystaken=shifthalf==1?0.5:1
            
        console.log(shifthalf)
        console.log(daystaken)

        let errors="",employees=[]

        attendanceactionsemployeestable.find("tbody input[type='checkbox']:checked").each(function(){
            const parent=$(this).closest("tr")
            employees.push(parent.data("id"))
        })

        // check for blank fields
        if(leavetypeid==""){
            errors="Please select leave type first"
            attendanceemployeeleavetypefield.focus()
        }else if(halfdayapplication==""){
            errors="Please select half day application mode first"
            halfdayapplicationfield.focus()
        }else if(!shifthalffield.prop("disabled")==1 && shifthalf==""){
            errors="Please select the shift half applicable first"
            shifthalffield.focus()
        }else if(narration==""){
            errors="Please provide narration for the leave application(s)"
            leaveapplicationnarrationfield.focus()
        }

        if(errors==""){
            attendanceleaveapplicationnotifications.html(showAlert("processing","Processing. Please wait ...",1))
            employees=JSON.stringify(employees)
            $.post(
                "../controllers/attendanceoperations.php",
                {
                    applyattendanceleaves:true,
                    leavetypeid,
                    halfdayapplication,
                    shifthalf,
                    narration,
                    employees,
                    startdate,
                    enddate,
                    daystaken
                },
                (data)=>{
                    if(isJSON(data)){
                        data=JSON.parse(data)
                            data.forEach((application)=>{
                            // find the employee from the list and show notification as appropriate
                            attendanceactionsemployeestable.find(`tbody tr[data-id="${application.employeeid}"] td`).addClass(application.status=="success"?'text-success':'text-primary')
                        })
                        // hide the modal
                        attendanceleaveapplicationmodal.modal("hide")
                        attendanceactionnotifications.html(showAlert("success",`Leave application for selected employees completed successfully. Check colour codes`))
                    }else{
                        attendanceleaveapplicationnotifications.html(showAlert("danger",`Sorry an error occured! ${data}`))
                    }
                    
                }
            )
        }else{
            attendanceleaveapplicationnotifications.html(showAlert("info",errors))
        }
    })
})