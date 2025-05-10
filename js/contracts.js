$(document).ready(function(){
    const currentmenu=$("#contracts")
    setactivemenu(currentmenu)
    getloggedinuser()

    const addnewcontractbutton = $("#addnewcontract"),
        contractdetailsmodal= $("#contractdetailsmodal"),
        singlemultipleemployeeselection = $("#singlemultipleemployeeselection"),
        singleemployeediv=$("#singleemployee"),
        multipleemployeediv=$("#multipleemployees")

    // multipleemployeediv.hide()
    // singleemployeediv.show()

    addnewcontractbutton.on("click",function(){
        contractdetailsmodal.modal("show")
    })

    // Toggle single multiple employee states
    singlemultipleemployeeselection.on("click",function(){
        if($(this).prop("checked")) {
            singleemployeediv.show()
            multipleemployeediv.hide()
        }else{
            singleemployeediv.hide()
            multipleemployeediv.show()
        }
    })

    const staffnofield=$("#staffno"),
        staffnamefield=$("#staffname"),
        idnofield=$("#idno"),
        departmentfield=$("#department"),
        positionfield=$("#position"),
        contracttypefield=$("#contracttype"),
        contractstartdatefield=$("#startdate"),
        contractenddatefield=$("#enddate"),
        contractpositionfield=$("#contractposition"),
        contractdepartmentfield=$("#contractdepartment"),
        contractunitfield=$("#contractunit")
    
    setDatePicker(contractstartdatefield,false,false)
    setDatePicker(contractenddatefield,false,true)
    getdepartments(contractdepartmentfield,'choose')
    getunits(contractunitfield,'choose')
    getjobpositions(contractpositionfield,'choose')
    getemploymentterms(contracttypefield,'choose')

    const multiplecontracttypefield=$("#multiplecontracttype"),
        multiplestartdatefield=$("#multiplestartdate"),   
        multipleenddatefield=$("#multipleenddate"),
        multipleunitfield=$("#multipleunit"),
        multipledepartmentfield=$("#multipledepartment"),
        multiplepositionfield=$("#multipleposition")

    setDatePicker(multiplestartdatefield,false,false)
    setDatePicker(multipleenddatefield,false,true)
    getdepartments(multipledepartmentfield,'all')
    getunits(multipleunitfield,'all')
    getjobpositions(multiplepositionfield,'all')
    getemploymentterms(multiplecontracttypefield,'choose')
})