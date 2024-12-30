$(document).ready(function(){
    const currentmenu=$("#recruitment")
    setactivemenu(currentmenu)
    getloggedinuser()

    const requisitiondetailsmodal=$("#requisitiondetailsmodal"),
        addnewrequisitionbutton=$("#addnewrequest"),
        filterrequisitiondepartmentfield=$("#filterrequisitiondepartment"),
        filterrequisitionstartdatefield=$("#filterrequisitionstartdate"),
        filterrequisitionedndatefield=$("#filterrequisitionenddate"),
        requisitiondepartmentfield=$("#requisitiondepartment"),
        requisitionpositionfield=$("#requisitionposition"),
        requisitionemploymenttypefield=$("#requisitionemploymenttype"),
        requisitionrequireddatefield=$("#requisitionrequireddate")

    getdepartments(filterrequisitiondepartmentfield)
    getdepartments(requisitiondepartmentfield,'choose')
    getjobpositions(requisitionpositionfield,'choose')
    getemploymentterms(requisitionemploymenttypefield,'choose')

    setDatePicker(filterrequisitionstartdatefield,false,false)
    setDatePicker(filterrequisitionedndatefield,false,false)
    setDatePicker(requisitionrequireddatefield,false,true)

    tinymce.init({
        selector:"#requisitionnarration",
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


    addnewrequisitionbutton.on("click",function(){
        requisitiondetailsmodal.modal("show")
    })

    const jobapplicantdetailsmodal=$("#jobapplicantdetailsmodal"),
        addnewjobapplicationbutton=$("#addnewapplication"),
        applicantdobfield=$("#applicantdob")

    setDatePicker(applicantdobfield)

    addnewjobapplicationbutton.on("click",()=>{
        jobapplicantdetailsmodal.modal("show")
    })

    const applicantselectionmodal=$("#applicantselectionmodal"),
        changeselectionstatusbutton=$("#changeapplicantstatus")

    changeselectionstatusbutton.on("click",function(){
        applicantselectionmodal.modal("show")
    })

    const interviewpaneldetailsmodal=$("#interviewpaneldetailsmodal"),
        addinterviewpanelbutton=$("#addnewinterviewpanel"),
        interviewpanelistfield=$("#panelpanelist")

    // get all panelist
    getallemployees(interviewpanelistfield)

    addinterviewpanelbutton.on("click",()=>{
        interviewpaneldetailsmodal.modal("show")
    })

    const applicantscheduledetailsmodal=$("#applicantscheduledetailsmodal"),
        addnewinterviewschedulebutton=$("#addnewinterviewschedule"),scheduletimefield=$("#scheduletime")

    scheduletimefield.datetimepicker({
        dateFormat: 'dd-M-yy' ,                
        timeFormat: 'HH:mm'
    })

    addnewinterviewschedulebutton.on("click",()=>{
        applicantscheduledetailsmodal.modal("show")
    })

    const applicantinterviewscoremodal=$("#applicantinterviewscoremodal"),
        addnewinterviewscorebutton=$("#addnewinterviewscore")
        
    addnewinterviewscorebutton.on("click",()=>{
        applicantinterviewscoremodal.modal("show")
    }) 
})