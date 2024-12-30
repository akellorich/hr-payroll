<?php


require_once dirname(__DIR__,1) . '/vendor/autoload.php';
require_once("../models/db.php");
require_once("../models/mail.php");
require_once("../models/employee.php");

// PDF and QR Code writers

use Mpdf\Mpdf;
use Endroid\QrCode\Builder\Builder;
use Endroid\QrCode\Encoding\Encoding;
use Endroid\QrCode\ErrorCorrectionLevel\ErrorCorrectionLevelHigh;
use Endroid\QrCode\Writer\PngWriter;

$mpdf = new \Mpdf\Mpdf();


$mail=new mail();
$db=new db();
$employee=new employee();

$month=$_GET['month'];
$year=$_GET['year'];
$staffno=$_GET['staffno'];
$employeeid=$employee->getemployeeidfromstaffno($staffno);

$sql="CALL `sp_getpayslipverificationid`('{$month}',{$year},{$employeeid})";
$rst=$db->getData($sql);

if($rst->rowCount()){
    $verificationid=$rst->fetch()['verificationid'];
}else{
    $verificationid="";
}

// get institutional details
$sql="CALL sp_getinstitutionaldetails()";
$rst=$db->getData($sql)->fetch();
$baseurl=$rst['baseurl'];

$sql="CALL sp_getemployeedetails({$employeeid})";
$rst2=$db->getData($sql)->fetch();

$qrData = $baseurl."/verifypayslip/id?".$verificationid;

// Generate a QR code using endroid/qr-code
$result = Builder::create()
    ->writer(new PngWriter())
    ->data($qrData)
    ->encoding(new Encoding('UTF-8'))
    ->errorCorrectionLevel(new ErrorCorrectionLevelHigh())
    ->size(120)
    ->margin(0)
    ->build();

// Save the QR code image to a temporary file
$tempDir = sys_get_temp_dir();
$qrCodePath = $tempDir . '/qrcode.png';
$result->saveToFile($qrCodePath);

// $sourcename= $rst2['source']=="Customer"?$rst2['customername']:$rst2['suppliername'];
$preparedby=$_SESSION['username'];
$date = new DateTime();

// Format the date and time
$formattedDate =$date->format('d-M-Y'); // for time  H:i

$data='
    <html>
    <head>
        <style>
            body {/*font-family: sans-serif;*/
                font-size: 10pt;
            }
            p {	margin: 0pt; }
            .text-right{
                text-align:right;
            }
            table.items {
                margin-top:10px;
                border: 0.1mm solid #888;
            }
            td { vertical-align: top; }
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
                width:100px;
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
                <td width="15%"><img class="logo" src="../images/logo.jpg"></td>
                <td width="75%" style="color:#0000BB; "><span style="font-weight: bold; font-size: 14pt;">'.$rst['companyname'].'</span><br />'.$rst['physicaladdress'].'<br />P.O Box '.$rst['postaladdress'].' - '.$rst['postalcode'].' '.$rst['town'].'<br /><span style="font-family:dejavusanscondensed;">&#9742;</span> '.$rst['mobile'].'<br />'.$rst['email'].'</td>
                <td width="10%" style="text-align: right;"><img src="'.$qrCodePath.'"><br/></td>
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
        <div  id="pagefooter" >
            <div>
                Prepared By: '.$preparedby.'
            </div>

            <div>
                Generated: '.$formattedDate.'
            </div>

            <div>
                Page {PAGENO} of {nb}
            </div>
        </div> 
    </htmlpagefooter>
    <sethtmlpageheader name="myheader" value="off" show-this-page="0" />
    <sethtmlpagefooter name="myfooter" value="on" />
    mpdf-->

';

$data.='<!-- Add Water Mark -->
<div style="position: absolute; top: 50%; left: 50%; width: 100%; height: 100%; z-index: -1;">
    <img src="../images/logo.jpg" style="width: 600px; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);  opacity: 0.05;">
</div>';
$staffname=$rst2['firstname']." ".$rst2["middlename"]." ".$rst2["lastname"];
$data.='<table width="100%" >
<tr>
    <td width="15%"><img class="logo" src="../images/logo.jpg"></td>
    <td width="75%" style="color:#0000BB; "><span style="font-weight: bold; font-size: 14pt;">'.$rst['companyname'].'</span><br />'.$rst['physicaladdress'].'<br />P.O Box '.$rst['postaladdress'].' - '.$rst['postalcode'].' '.$rst['town'].'<br /><span style="font-family:dejavusanscondensed;">&#9742;</span> '.$rst['mobile'].'<br />'.$rst['email'].'</td>
    <td width="10%" style="text-align: right;"><img src="'.$qrCodePath.'"></td>
</tr>
</table>';

// document heading
$data.="<h3 style='text-align:center;' >PAYSLIP FOR ". strtoupper($month)." ".$year."</h3>";

$data.="<table width='100%' style='border: 0.1mm solid #888888; padding:10px; margin-bottom:5px;'><tr><td width='50%'><span style='font-size: 8pt; color: #555555;'>Staff Details:</span><br /> Staff Number: ".$rst2['staffno']."<br/>Names: ".$staffname."<br /> Department: ".$rst2['departmentname']."<br />Designation: ".$rst2['positionname']."<br/>Employment Terms: ".$rst2['termname']."</td></tr></table>";
$email=$rst2['emailaddress'];

// get payslip items
$sql="CALL `sp_getemployeepayslip`('{$month}',{$year},{$employeeid})";
$rst=$db->getData($sql);

$previouscategory='payments';
$categorytotal=0;
// Add the first category row description
$data.="<table  width='100%' cellpadding='3' cellspacing='0' class='items' style='overflow:wrap'>
            <thead>
                <tr>
                    <td class='border-bottom bold' colspan='2'>".strtoupper($previouscategory)."</td>
                </tr>
            </thead>
            <tbody>";

// print_r($rst).PHP_EOL;
while($row=$rst->fetch()){
    addcatgeoryitems:
    if($previouscategory==$row['itemtype']){
        $fontbold=$row['itemtype']=="bank details"?"bold":"";
        $data.="<tr><td width='75%'>".$row['itemname']."</td>";
        $data.="<td width='25%' class='text-right ".$fontbold."'>".$row['amount']."</td></tr>";
        // remove commas prior to totalling
        $categorytotal+=str_replace(",","",$row['amount']);
    }else{
        // display total summary for the previous category
        $totaldescription=$previouscategory=="payments"?"GROSS SALARY":"TOTAL DEDUCTIONS";
        if($previouscategory=="payments" || $previouscategory=="deductions"){
            $data.="<tr><td width='75%' class='border-bottom bold'>".$totaldescription."</td>";
            $data.="<td width='25%' class='border-bottom text-right bold'>".number_format($categorytotal,2)."</td></tr>";
        }
        // close previous table
        $data.="</tbody></table>"; 
        
        // reset category total variable
        $categorytotal=0;
        $previouscategory=$row['itemtype'];

        // create a new table to hold the category items
        $data.="<table  width='100%' cellpadding='3' cellspacing='0' class='items' style='overflow:wrap'>
            <thead>
                <tr>
                    <td class='border-bottom bold' colspan='2'>".strtoupper($previouscategory)."</td>
                </tr>
            </thead>
            <tbody>";
        // add category items
        goto addcatgeoryitems;
    } 
}
// Add the last  tbody
$data.="</tbody></table>";
$data.='</body></html>';

// replace all spaces in pasylip file name with an underscore
$documentname= preg_replace('/\s+/', '_', $rst2['staffno'])."_".$staffname.".pdf";

// echo $data;

// add page number
// echo $data;
//$mpdf->shrink_tables_to_fit=0;

$mpdf->WriteHTML($data);
$mpdf->Output();

// delete temp qrcode file
unlink($qrCodePath);

?>