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
        importattendancebutton=$("#importattendancedata"),
        importattendancemodal=$("#attendancedatamodal"),
        chooseimportdatabutton=document.querySelector("#chooseimportattendancedata"),
        importattendancetable=$("#importattendancetable"),
        importattendancestaffnocolfield=$("#importattendancestaffcollumn"),
        importattendanceclockinfield=$("#importattendanceclokintime"),
        importattendanceclocoutfield=$("#importattendanceclokouttime"),
        importattendancedatefield=$("#attendanceimportdate"),
        saveimportattendancebutton=$("#saveimportattendancedata"),
        importattendancenotifications=$("#importattendancenotifications"),
        shiftdetailsmodal=$("#shiftdetailsmodal"),
        addnewshiftbutton=$("#addnewshift"),
        inputfield=$("input"),
        selectfield=$("select")

    getdepartments(presabsdepartmentfield,'choose')

    populatemonths(presabsmonthfield).done(()=>{
        populateyears(presabsyearfield).done(()=>{
            filldaysofthemonth()
        })
    })

    getdepartments(attendancedepartmentfield)
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
    })

    selectfield.on("change",()=>{
        inputfield.trigger("input")
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
                importattendanceclocoutfield.html(colnamesoption)

                // remove the column heading
                sheet_data.shift()

                sheet_data.forEach((attendance,index)=>{
                    rows+=`<tr data-employeeid=''>`
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
        const staffnofied=importattendancestaffnocolfield.val()
        let errors=""

        if(staffnofied==""){
            errors="Please select staff no collumn"
            importattendancestaffnocolfield.focus()
        }

        if(errors==""){
            const staffnolabel=importattendancestaffnocolfield.find("option:selected").text()
            let i=0
            importattendancetable.find("thead th").each(function(){
                console.log(staffnolabel,$(this).text())
                if($(this).text()==staffnolabel){
                    return true
                }else{
                    i++
                }
            })

            console.log(i)

            $.getJSON(
                "../controllers/employeeoperations.php",
                {
                    getallemployees:true
                },
                (data)=>{
                    //  mark all as invalid first
                    importattendancetable.find("tbody tr").each(function(){
                        $(this).find("td").addClass("text-danger")
                    })

                    importattendancetable.find("tbody tr").each(function(){
                        row=$(this)
                        $this=row.find("td")
                        data.every((employee)=>{
                            if($this.eq(i).text()==employee.staffno){
                                row.attr("data-employeeid",employee.employeeid)
                                $this.removeClass("text-danger")
                                // exit inner (every) loop
                                return false
                            }
                            return true
                        })
                    })
                }
            )
        }else{
            importattendancenotifications.html(showAlert("info",errors))
        }
    })

    addnewshiftbutton.on("click",()=>{
        shiftdetailsmodal.modal("show")
    })

    const filterotdepartmentfield=$("#filterovertimedepartment"),
        filterotstartdatefield=$("#filterovertimestartdate"),
        filterotenddatefield=$("#filterovertimeenddate"),
        otapplicationdetailsmodal=$("#otapplicationdetailsmodal"),
        addnewotrequestbutton=$("#addnewotrequest"),
        otrequestdatefield=$("#otrequestdate"),
        otdepartmentfield=$("#otdepartment")

    getdepartments(filterotdepartmentfield)
    getdepartments(otdepartmentfield,'choose')

    setDatePicker(filterotstartdatefield)
    setDatePicker(filterotenddatefield)
    setDatePicker(otrequestdatefield)

    addnewotrequestbutton.on("click",function(){
        otapplicationdetailsmodal.modal("show")
    })

    const staffshiftdetailsmodal=$("#staffshiftdetailsmodal"),
        addnewstaffshiftbutton=$("#addnewstaffshift"),
        staffshiftdetailsdepartment=$("#staffshiftdetailsdepartment"),
        staffshiftdetailsdatefield=$("#staffshiftdetailsdate"),
        staffdetailsshiftnamefield=$("#staffdetailsshiftname"),
        staffshiftdetailstable=$("#staffshiftdetailstable"),
        selectallstaffshiftemployeescheckbox=$("#selectallstaffshiftemployees")

    getdepartments(staffshiftdetailsdepartment,'choose')
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

    staffshiftdetailsdepartment.on("change",function(){
        const departmentid=$(this).val()
        if(departmentid==""){
            staffshiftdetailstable.find("tbody tr").remove()
        }else{
            $.getJSON(
                "../controllers/employeeoperations.php",
                {
                    getdepartmentactiveemployees:true,
                    departmentid
                },
                (data)=>{
                    let results=""
                    data.forEach((employee,i)=>{
                        results+=`<tr data-id=${employee.employeeid}>`
                        results+=`<td><input type='checkbox' id=${employee.employeeid}/></td>`
                        results+=`<td>${$.number(i+1)}</td>`
                        results+=`<td>${employee.staffno}</td>`
                        results+=`<td>${employee.firstname} ${employee.middlename} ${employee.lastname}`
                        results+=`<td>${employee.positionname}</td></tr>`
                    })
                    staffshiftdetailstable.find("tbody").html(results) 
                }
            )
        }
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

    const shiftnamefield=$("#shiftname"),
        saveshiftmasterfield=$("#saveshiftmaster"),
        shifttypefield=$("#shifttype"),
        shiftdetailsnotifications=$("#shiftdetailsnotifications"),
        shiftidfield=$("#shiftid")

    let errors=""

    saveshiftmasterfield.on("click",function(){
        const shiftname=sanitizestring(shiftnamefield.val()),
            shifttype=shifttypefield.val(),
            shiftid=shiftidfield.val()
            
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
                    starttime=starttimefield.val(),
                    endtime=endtimefield.val(),
                    breakduration=breakfield.val(),
                    weekday=cols.eq(1).text()

                starttimefield.removeClass("is-invalid text-danger")
                endtimefield.removeClass("is-invalid text-danger")

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
        /*,
        staffshiftfield=$("#"),
        staffshiftstatusfield=$("#"),
        staffshiftdate=$("#")*/

    function getshiftmasterastable(){
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
                        console.log(data)
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
            }
        )
    }

    getshiftmasterastable()

    // save staff shift
    /*const*/

})