<?php
require_once dirname(__DIR__,1) . '/vendor/autoload.php';
require_once("../models/db.php");
require_once("../models/mail.php");
require_once("../models/employee.php");

// PDF and QR Code writers

use Mpdf\Mpdf;

$mpdf = new \Mpdf\Mpdf([
    'format' => 'A4-L', // A4 paper in landscape mode,
    'margin_top' => 2, // Set top margin (in millimeters)
    'margin_bottom' => 5, // Set bottom margin (in millimeters)
]);

$mail=new mail();
$db=new db();
$employee=new employee();

$year=$_GET['year'];
$employeeid=$_GET['employeeid'];

$data='
    <html>
    <head>
        <style>
            body {/*font-family: sans-serif;*/
                font-size: 10px;
            }
            p {	margin: 0pt; }
            .text-right{
                text-align:right;
            }

            .text-center{
                text-align:center;
            }

            table.items {
                margin-top:5px;
                border: 0.1mm solid #888;
            }
            td { 
                vertical-align: top; 
            }

            .items td {
                border-left: 0.1mm solid #888;
                border-right: 0.1mm solid #888;
            }

            table thead td { background-color: #EEEEEE;
                text-align: center;
                border: 0.1mm solid #888;
                font-variant: small-caps;
            }

            .items td.blanktotal {
                background-color: #EEEEEE;
                border: 0.1mm solid #888;
                background-color: #FFFFFF;
                border: 0mm none #888;
                border-top: 0.1mm solid #888;
                border-right: 0.1mm solid #888;
            }
            .items td.totals {
                text-align: right;
                border: 0.1mm solid #888;
            }
            .items td.cost {
                text-align: "." center;
            }

            .totals td{
                border-top: 1px solid #888; 
            }
           
            .logo{
                height:100px;
                /*width:100px;*/
            }

            .bold{
                font-weight: bold;
            }

            .watermark {
                color: #FF5533; /* Orangish */
                font-size:  10px;
            }

        </style>
    </head>
    <body>
    <!--mpdf
    <htmlpageheader name="myheader">
        <table width="100%" >
            <tr>
                <td width="100%"><img class="logo" src="../images/kralogo.png"></td>
            </tr>
            <tr>
                <td>
                    <strong>
                    ISO 9001:2000 CERTIFIED <br/>
                    DOMESTIC TAXES DEPARTMENT<br />
                    TAX DEDUCTION CARD FOR THE YEAR '.$year.'<br /><br/>
                    </strong>
                </td>
            </tr>
        </table>
    </htmlpageheader> 
   
    <htmlpagefooter name="myfooter"> 
        <style>
            #pagefooter{
                border-top: 1px solid #000000; 
                font-size: 9pt; 
                padding-top: 3mm; 
                display:flex; 
                justify-content:space-between;
                align-items:center;
            }
        </style>
    </htmlpagefooter>
    <sethtmlpageheader name="myheader" value="off" show-this-page="0" />
    <sethtmlpagefooter name="myfooter" value="on" />
    mpdf-->
';

$data.='<!-- Add Water Mark -->
<div style="position: absolute; top: 50%; left: 50%; width: 100%; height: 100%; z-index: -1;">
    <img src="../images/logo.jpg" style="width: 600px; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);  opacity: 0.05;">
</div>';

// get P9 card details 
$sql="CALL `sp_getp9deductioncard`({$year},{$employeeid})";
$conn=$db->getData($sql);
$rst=$conn->fetch();
$staffno=$rst['staffno'];
$employeename=$rst['surname'].' '.$rst['othernames'];
$data.='<table width="100%" class="text-center">
        <tr>
            <td width="100%"><img class="logo" src="../images/kralogo.png"></td>
        </tr>
        <tr>
            <td>
                <strong>
                ISO 9001:2000 CERTIFIED <br/>
                DOMESTIC TAXES DEPARTMENT<br />
                TAX DEDUCTION CARD FOR THE YEAR '.$year.'<br /><br />
                </strong>
            </td>
        </tr>
    </table>';

// document heading
// $data.="<h3 style='text-align:center;' >PAYSLIP FOR ". strtoupper($month)." ".$year."</h3>";

$data.="<table width='100%' style='border: 0.1mm solid #888888; padding:10px; margin-bottom:5px;'>
            <tr>
                <td width='50%'><span style='font-size: 8pt; color: #555555;'>
                    Employer Details:</span><br /> 
                    PIN Number: <strong>".$rst['employerpin']."</strong><br/> 
                    Name: <strong>".$rst['employer']."</strong>
                </td>
                <td width='50%'><span style='font-size: 8pt; color: #555555;'>
                Employee Details:</span><br /> 
                PIN Number: <strong>".$rst['employeepin']."</strong><br/> 
                Names: <strong>".$employeename."</strong><br/> 
                Staff Number: <strong>".$rst['staffno']."</strong>
            </td>
            </tr>
        </table>";

$data.="<table  width='100%' cellpadding='3' cellspacing='0' class='items' style='overflow:wrap'>
            <thead>
                <tr>
                    <td width='8%' rowspan='3' class='border-bottom bold'>Month</td>
                    <td class='border-bottom bold'>Basic</td>
                    <td width='7%' class='border-bottom bold'>Other Benefits Non-Cash</td>
                    <td width='7%' class='border-bottom bold'>Value of Quarters</td>
                    <td width='8%' class='border-bottom bold'>Total Gross Pay</td>

                    <td width='18%' colspan='3' class='border-bottom bold'>Defined Contributions Retirements Benefits Scheme</td>

                    <td width='7%' class='border-bottom bold'>Owner Occupier Interest</td>
                    <td width='7%' class='border-bottom bold'>Retirement Contribution & Owner Occupier Interest</td>
                    <td class='border-bottom bold'>Chargeable Pay</td>
                    <td class='border-bottom bold'>Tax Charged</td>
                    <td class='border-bottom bold'>Reliefs</td>
                    <td class='border-bottom bold'>PAYE Tax (J-K)</td>
                </tr>

                <tr>
                    <td rowspan='2' class='border-bottom bold'>A</td>
                    <td rowspan='2' class='border-bottom bold'>B</td>
                    <td rowspan='2' class='border-bottom bold'>C</td>
                    <td rowspan='2' class='border-bottom bold'>D</td>
                    <td  width='18%' colspan='3' class='border-bottom bold'>E</td>
                    <td rowspan='2' class='border-bottom bold'>F Amount of Interest</td>
                    <td rowspan='2' class='border-bottom bold'>G Lowest of E added to F</td>
                    <td rowspan='2' class='border-bottom bold'>H</td>
                    <td rowspan='2' class='border-bottom bold'>J</td>
                    <td rowspan='2' class='border-bottom bold'>K</td>
                    <td rowspan='2' class='border-bottom bold'>L</td>
                </tr>

                <tr>
                    <td  width='6%' class='border-bottom bold'>E1 30% of A</td>
                    <td  width='6%' class='border-bottom bold'>E2 Actual</td>
                    <td  width='6%' class='border-bottom bold'>E3 Fixed</td>
                </tr>
            </thead>
            <tbody>";

$sql="CALL `sp_getp9deductioncard`({$year},{$employeeid})";
$conn=$db->getData($sql);

$totalbasic=0;
$totalnoncashbenefits=0;
$totalhousingbenefit=0;
$totalgross=0;
$totale1=0;
$totale2=0;
$totale3=0;
$totalmortgageinterest=0;
$totalmortgagepension=0;
$totalchargeablepay=0;
$totaltaxcharged=0;
$totalreliefs=0;
$totalpaye=0;

while($row=$conn->fetch()){
    // $i.=$row.PHP_EOL;
    $reliefs=$row['personalrelief']+$row['insurancerelief'];
    $data.="
        <tr>
            <td>".$row['month']."</td>
            <td class='text-right'>".number_format($row['basic'],2)."</td>
            <td class='text-right'>".number_format($row['noncashbenefits'],2)."</td>
            <td class='text-right'>".number_format($row['housingbenefit'],2)."</td>
            <td class='text-right'>".number_format($row['gross'],2)."</td>
            <td class='text-right'>".number_format($row['e1'],2)."</td>
            <td class='text-right'>".number_format($row['e2'],2)."</td>
            <td class='text-right'>".number_format($row['e3'],2)."</td>
            <td class='text-right'>".number_format($row['mortgageinterest'],2)."</td>
            <td class='text-right'>".number_format($row['mortgagepension'],2)."</td>
            <td class='text-right'>".number_format($row['chargeablepay'],2)."</td>
            <td class='text-right'>".number_format($row['taxcharged'],2)."</td>
            <td class='text-right'>".number_format($reliefs,2)."</td>
            <td class='text-right'>".number_format($row['paye'],2)."</td>
        </tr>
    ";

    $totalbasic+=$row['basic'];
    $totalnoncashbenefits+=$row['noncashbenefits'];
    $totalhousingbenefit+=$row['housingbenefit'];
    $totalgross+=$row['gross'];
    $totale1+=$row['e1'];
    $totale2+=$row['e2'];
    $totale3+=$row['e3'];
    $totalmortgageinterest+=$row['mortgageinterest'];
    $totalmortgagepension+=$row['mortgagepension'];
    $totalchargeablepay+=$row['chargeablepay'];
    $totaltaxcharged+=$row['taxcharged'];
    $totalreliefs+=$reliefs;
    $totalpaye+=$row['paye'];
}
// Add totals
$data.="
        <tr>
            <td>TOTAL</td>
            <td class='text-right blanktotal'>".number_format($totalbasic,2)."</td>
            <td class='text-right blanktotal'>".number_format($totalnoncashbenefits,2)."</td>
            <td class='text-right blanktotal'>".number_format($totalhousingbenefit,2)."</td>
            <td class='text-right blanktotal'>".number_format($totalgross,2)."</td>
            <td class='text-right blanktotal'>".number_format($totale1,2)."</td>
            <td class='text-right blanktotal'>".number_format($totale2,2)."</td>
            <td class='text-right blanktotal'>".number_format($totale3,2)."</td>
            <td class='text-right blanktotal'>".number_format($totalmortgageinterest,2)."</td>
            <td class='text-right blanktotal'>".number_format($totalmortgagepension,2)."</td>
            <td class='text-right blanktotal'>".number_format($totalchargeablepay,2)."</td>
            <td class='text-right blanktotal'>".number_format($totaltaxcharged,2)."</td>
            <td class='text-right blanktotal'>".number_format($totalreliefs,2)."</td>
            <td class='text-right blanktotal'>".number_format($totalpaye,2)."</td>
        </tr>
    ";
// Add the last  tbody
$data.="</tbody></table>";
$data.='</body></html>';

// replace all spaces in pasylip file name with an underscore
$documentname= preg_replace('/\s+/', '_', $staffno)."_".$employeename.".pdf";

//echo $data;

// add page number
// echo $data;
$mpdf->shrink_tables_to_fit=1;

$mpdf->WriteHTML($data);
$mpdf->Output();
?>