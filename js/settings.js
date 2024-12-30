$(document).ready(function(){
    const currentmenu=$("#settings")
    setactivemenu(currentmenu)
    getloggedinuser()

    const documentdetailsmodal=$("#uplodabledocumentsmodal"),
        documentdetailsnotifications=$("#documentdetailsnotifications"),
        addnewdocumentbutton=$("#addnewuploadabledocument"),
        documentappliestofield=$("#documentappliesto"),
        documentnamefield=$("#documentname"),
        directoryfield=$("#directory")

    addnewdocumentbutton.on("click",()=>{
        documentdetailsmodal.modal("show")
    })
})