$(document).ready(function(){
    const currentmenu=$("#payslips")
    setactivemenu(currentmenu)
    getloggedinuser()

    const payslipstartmonth=$("#payslipstartmonth"),
        payslipstartyear=$("#payslipstartyear"),
        payslipendmonth=$("#payslipsendmonth"),
        payslipendyear=$("#payslipsendyear"),
        filterpayslipsbutton=$("#filterpayslips"),
        payslipstable=$("#payslipstable")

    populatemonths(payslipstartmonth)
    populatemonths(payslipendmonth)
    populateyears(payslipstartyear)
    populateyears(payslipendyear)

    filterpayslipsbutton.on("click",()=>{
        const startmonth=payslipstartmonth.val(),
            endmonth=payslipendmonth.val(),
            startyear=payslipstartyear.val(),
            endyear=payslipendyear.val()
        $.getJSON(
            "../controllers/employeeoperations.php",
            {
                getemployeepayslips:true,
                startmonth,
                endmonth,
                startyear,
                endyear
            },
            (data)=>{
                let results=""
                data.forEach((payslip,i)=>{
                    // <a href="#" class='payslip' data-staffno=${employee[key]} data-month=${month} data-year=${year}>
                    results+=`<tr><td>${Number(i+1)}</td>`
                    results+=`<td>${payslip.month}</td>`
                    results+=`<td>${payslip.year}</td>`
                    results+=`<td>${$.number(payslip.totalpayments,2)}</td>`
                    results+=`<td>${$.number(payslip.totaldeductions,2)}</td>`
                    results+=`<td>${$.number(payslip.netsalary,2)}</td>`
                    results+=`<td>${payslip.paymentcenter}</td>`
                    // Download Icon
                    results+=`<td><a href="#" class='payslip' data-staffno=${payslip.staffno} data-month=${payslip.month} data-year=${payslip.year}><i class="fal fa-print fa-lg fa-fw"></i></a></td></tr>`
                })
                payslipstable.find("tbody").html(results)
            }
        )
    })

    // print payslip
    payslipstable.on("click",".payslip",function(){
        const link = $(this),
            staffno = link.attr("data-staffno"),
            month = link.attr("data-month"),
            year = link.attr("data-year"),
            url = `../generateddocs/employeepayslip.php?staffno=${staffno}&month=${month}&year=${year}`
        // open the payslip in a new window
        window.open(url, "_blank")
    })

})