<?php
    require_once("mail.php");
    $mail = new mail();

    class leave extends db{

        function savetemplleaveapprovallevel($refno,$approvallevel,$hierarchy,$escalation,$colourcode){
            $sql="CALL `sp_savetemplleaveapprovallevel`('{$refno}','{$approvallevel}',{$hierarchy},{$escalation},'{$colourcode}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"temp leave approval level saved successfully"];
        }

        function checkapprovalflow($flowid,$flowname){
            $sql="CALL `sp_checkleaveapprovalflow`({$flowid},'{$flowname}')";
            return $this->getData($sql)->rowCount();
        }

        function saveapprovalflow($flowid,$refno,$flowname){
            if($this->checkapprovalflow($flowid,$flowname)){
                return ["status"=>"exists","message"=>"flow name already exists"];
            }else{
                $sql="CALL `sp_saveleaveapprovalflow`({$flowid},'{$refno}','{$flowname}',{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"leave flow saved successfully"];
            }
        }

        function getapprovalflows(){
            $sql="CALL `sp_getleaveapprovalflows`()";
            return $this->getJSON($sql);
        }

        function getapprovalflowdetails($flowid){
            $sql="CALL `sp_getleaveapprovalflowdetails`($flowid)";
            return $this->getJSON($sql);
        }

        function deleteapprovalflow($flowid){
            $sql="CALL `sp_deleteleaveapprovalflow`({$flowid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"leave flow deleted successfully"];
        }

        function getleaveapprovallevels($flowid){
            $sql="CALL `sp_getleaveapprovallevels`($flowid)";
            return $this->getJSON($sql);
        }

        function savetempleaveallowableallocation($refno,$allocation,$percentagepayable){
            $sql="CALL `sp_savetempleaveallowableallocation`('{$refno}',{$allocation},{$percentagepayable})";
            $this->getData($sql);
            return ["status"=>"success","message"=>"temp allocation saved siccessfully"];
        }

        function checkleavetype($leaveid,$leavename){
            $sql="CALL `sp_checkleavename`({$leaveid},'{$leavename}')";
            return $this->getData($sql)->rowCount();
        }

        function saveleavetype($leaveid,$refno,$leavename,$allocationdays, $probationperiod,$halfdayapplication,$skipholidays,
          $applywithoutallocation,$requiresattachment,$approvalflow,$allowancepayable, $allowancepayrollitemid,$canbesplit){
            if($this->checkleavetype($leaveid,$leavename)){
                return ["status"=>"exists","message"=>"leave type exists"];
            }else{
                $sql="CALL `sp_saveleavetype`({$leaveid},'{$refno}','{$leavename}',{$allocationdays},
                {$probationperiod},{$halfdayapplication},{$skipholidays},{$applywithoutallocation},{$requiresattachment},{$approvalflow},{$allowancepayable},
                {$allowancepayrollitemid},{$canbesplit},{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"leave type saved successfully"];
            }
        }

        function getleavetypes(){
            $sql="CALL `sp_getleavetypes`()";
            return $this->getJSON($sql);
        }

        function getleavetypedetails($leaveid){
            $sql="CALL `sp_getleavetypedetails`({$leaveid})";
            return $this->getJSON($sql);
        }

        function deleteleavetype($leaveid){
            $sql="CALL `sp_deleteleavetype`({$leaveid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"leave type deleted successfully"];
        }

        function getweekendsbetweendates($startdate,$enddate){
            $startdate=$this->mySQLDate($startdate);
            $enddate=$this->mySQLDate($enddate);
            $sql="CALL `sp_countholidays`('{$startdate}','{$enddate}')";
            return $this->getJSON($sql);
        }

        function checkemployeeleaveapplication($applicationid,$employeeid,$startdate,$enddate){
            $sql="CALL `sp_checkemployeeleaveapplication`({$applicationid},{$employeeid},'{$startdate}','{$enddate}')";
            return $this->getData($sql)->rowCount();
        }

        function saveleaveapplication($applicationid,$employeeid,$leavetypeid,$startdate,$enddate,$daystaken,
        $relieverid,$supervisorid,$narration,$attachment){
            $startdate=$this->mySQLDate($startdate);
            $enddate=$this->mySQLDate($enddate);
            if($this->checkemployeeleaveapplication($applicationid,$employeeid,$startdate,$enddate)){
                return ["status"=>"exists","message"=>"another leave exists"];
            }else{
                $sql="CALL `sp_saveleaveapplication`({$applicationid},{$employeeid},{$leavetypeid},'{$startdate}','{$enddate}',{$daystaken},
                {$relieverid},{$supervisorid},'{$narration}','{$attachment}',{$this->userid},'{$this->platform}')";
                $rst=$this->getData($sql);
                // could return multiple values retrun one with application id 
                do{
                    $rowset = $rst->fetch(); 
                    // print_r($rowset);
                    if(is_array($rowset)){
                        if(array_key_exists("applicationid", $rowset)){
                            // return ["status"=>"success","message"=>"success","staffno"=>$rowset['staffno']];
                            $applicationid=$rowset['applicationid'];
                        }
                    } 
                } while ($rst->nextRowset());

                return ["status"=>"success","message"=>"leave application saved successfully","applicationid"=>$applicationid];
            }
        }

        function getleaveapplications($employeeid,$leavetypeid){
            $sql="CALL `sp_getemployeeleaveapplications`({$employeeid},{$leavetypeid})";
            return $this->getJSON($sql);
        }

        function getleaveapplicationdetails($applicationid){
            $sql="CALL `sp_getleaveapplicationdetails`({$applicationid})";
            return $this->getJSON($sql);
        }

        function deleteleaveapplication($applicationid){
            $sql="CALL `sp_deleteleaveapplication`({$applicationid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"leave application deleted successfully"];
        }

        function getleavename($leavetypeid){
            $sql="CALL `sp_getleavename`({$leavetypeid})";
            return $this->getData($sql)->fetch()['leavename'];
        }

        function getleaveapplicationapprovallevel($applicationid){
            $sql="CALL `sp_getleaveapplicationcurrentapprovallevel`({$applicationid})";
            // echo $sql.PHP_EOL;
            return $this->getJSON($sql);
        }

        function employeeleaveapplicationnotification($applicationid){
            // echo "sending receipt notification email ...";
            $template_file="../templates/emails/leaveapplicationnotification.html";
            if(file_exists($template_file)){
                $emailmessage=file_get_contents($template_file);
                // email employee
                $rst=json_decode($this->getleaveapplicationemployeedetails($applicationid),true);
                // print_r($rst).PHP_EOL;
                // swap variables with actual content
                $swap_var=array(
                    // "{{policycompany}}"=>$rst[0]['companyname'],
                    "{{companyname}}"=>$rst[0]["companyname"],
                    "{{employeename}}"=>$rst[0]["employeename"],
                    "{{leavename}}"=>$rst[0]['leavename'],
                    "{{startdate}}"=>$rst[0]['startdate'],
                    "{{enddate}}"=>$rst[0]['enddate'],
                    "{{daystaken}}"=>$rst[0]['daystaken'],
                    "{{narration}}"=>$rst[0]['narration'],
                    "{{documenttitle}}"=>"Leave Application Receipt Status Notification",
                    "{{username}}"=>$_SESSION['username'],
                    "{{year}}"=>date("Y"),
                );

                 // search and replace all swap variables with actual contents
                 foreach(array_keys($swap_var) as $key){
                    if(strlen($key)>2 && trim($key)!==""){
                        $emailmessage=str_replace($key,$swap_var[$key],$emailmessage);
                    }
                }

                // the requestors email
                $email=$rst[0]['emailaddress'];
                $response=$GLOBALS['mail']->sendEmail($email,"Leave Application Receipt Status Notification",$emailmessage,$_SESSION['username']);
                // echo $response;
                return ["status"=>"success","message"=>"employee email receipt notification sent successfully"];

            }
        }

        function getleaveapplicationemployeedetails($applicationid){
            $sql="CALL `sp_getleaveapplicationemployeedetails`({$applicationid})";
            return $this->getJSON($sql);
        }

        function approvaluseremailapprovalrequest($applicationid,$approvername,$approvallevel,$approveremail){
            // echo "sending approval request email ... to ".$approveremail;
            $template_file="../templates/emails/leaveapprovalrequesttemplate.html";
            if(file_exists($template_file)){
                $emailmessage=file_get_contents($template_file);
                // email employee
                $rst=json_decode($this->getleaveapplicationemployeedetails($applicationid),true);
                // print_r($rst).PHP_EOL;
                // swap variables with actual content
                // echo $approvallevel.PHP_EOL;
                if($approvallevel=="supervisor"){
                     $approvallevelname="Supervisor Level";
                }else if($approvallevel=="hrmanager"){
                    $approvallevelname="Human Resource Manager Level";
                }else{
                    $approvallevelname="Senior Management Level";
                }

                $swap_var=array(
                    "{{companyname}}"=>$rst[0]["companyname"],
                    "{{approvername}}"=>$approvername,
                    "{{employeename}}"=>$rst[0]["employeename"],
                    "{{staffno}}"=>$rst[0]["staffno"],
                    "{{approvallevel}}"=>$approvallevelname,
                    "{{leavename}}"=>$rst[0]['leavename'],
                    "{{startdate}}"=>$rst[0]['startdate'],
                    "{{enddate}}"=>$rst[0]['enddate'],
                    "{{daystaken}}"=>$rst[0]['daystaken'],
                    "{{narration}}"=>$rst[0]['narration'],
                    "{{documenttitle}}"=>"Leave Application Approval Request",
                    "{{username}}"=>$_SESSION['username'],
                    "{{year}}"=>date("Y"),
                );

                // search and replace all swap variables with actual contents
                foreach(array_keys($swap_var) as $key){
                    if(strlen($key)>2 && trim($key)!==""){
                        $emailmessage=str_replace($key,$swap_var[$key],$emailmessage);
                    }
                }

                $response=$GLOBALS['mail']->sendEmail($approveremail,"Leave Application Approval Request for $approvallevelname ",$emailmessage,$_SESSION['username']);  
                // echo $response;
                return ["status"=>"success","message"=>"employee email receipt notification sent successfully"];
            }
        }

        function getleaveapplicationapprovalstatuses($applicationid){
            $sql="CALL `sp_getleaveapplicationapprovalstatuses`({$applicationid})";
            return $this->getJSON($sql);
        }

        function approveleave($applicationid,$approvallevelid,$approvalstatus,$narration){
            $sql="CALL `sp_approveleave`({$applicationid},{$approvallevelid},'{$approvalstatus}','{$narration}',{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            // email next authorising officer if any
            $response=json_decode($this->getleaveapplicationapprovallevel($applicationid),true);
            // print_r($response); 
            if($approvalstatus=="approved"){
                if(count($response)>0){
                    $approvallevel=$response[0]['approvallevel'];
                    $approvaluser=explode(",",$response[0]['approvaluser']);
                    $approvername=$approvaluser[0];
                    $approvalusermobile=$approvaluser[1];
                    $approveremail=$approvaluser[2];
                    $this->approvaluseremailapprovalrequest($applicationid,$approvername,$approvallevel,$approveremail);
                }else{
                    // confirm for the employee if this is the last level
                    $this->employeeleavefullapprovalnotification($applicationid);
                    // also notify the reliever
                    $this->leaverelieverapprovalnotification($applicationid);
                }
            }else{
                // notify the applicant of the cancellation
                $this->employeeleavecancellationnotification($applicationid,$narration);
            }

            return ["status"=>"success","message"=>"leave approval successful"];
        }

        function employeeleavefullapprovalnotification($applicationid){            
            $template_file="../templates/emails/leavefullapprovalnotification.html";
            if(file_exists($template_file)){
                $emailmessage=file_get_contents($template_file);
                // email employee
                $rst=json_decode($this->getleaveapplicationemployeedetails($applicationid),true);
                // print_r($rst).PHP_EOL;
                // swap variables with actual content
                $swap_var=array(
                    // "{{policycompany}}"=>$rst[0]['companyname'],
                    "{{companyname}}"=>$rst[0]["companyname"],
                    "{{employeename}}"=>$rst[0]["employeename"],
                    "{{leavename}}"=>$rst[0]['leavename'],
                    "{{startdate}}"=>$rst[0]['startdate'],
                    "{{enddate}}"=>$rst[0]['enddate'],
                    "{{daystaken}}"=>$rst[0]['daystaken'],
                    "{{narration}}"=>$rst[0]['narration'],
                    "{{documenttitle}}"=>"Leave Application Receipt Status Notification",
                    "{{username}}"=>$_SESSION['username'],
                    "{{year}}"=>date("Y"),
                );

                // search and replace all swap variables with actual contents
                foreach(array_keys($swap_var) as $key){
                    if(strlen($key)>2 && trim($key)!==""){
                        $emailmessage=str_replace($key,$swap_var[$key],$emailmessage);
                    }
                }

                // the requestors email
                $email=$rst[0]['emailaddress'];
                $response=$GLOBALS['mail']->sendEmail($email,"Leave Application Full Approval Notification",$emailmessage,$_SESSION['username']);
                // echo $response;
                return ["status"=>"success","message"=>"employee full approval notification email sent successfully"];
            }  
        }

        function leaverelieverapprovalnotification($applicationid){
            $template_file="../templates/emails/leavefullapprovalrelievernotification.html";
            if(file_exists($template_file)){
                $emailmessage=file_get_contents($template_file);
                // email employee
                $rst=json_decode($this->getleaveapplicationemployeedetails($applicationid),true);
                // print_r($rst).PHP_EOL;
                // swap variables with actual content
                $swap_var=array(
                    // "{{policycompany}}"=>$rst[0]['companyname'],
                    "{{companyname}}"=>$rst[0]["companyname"],
                    "{{relievername}}"=>$rst[0]["relievername"],
                    "{{employeename}}"=>$rst[0]["employeename"],
                    "{{leavename}}"=>$rst[0]['leavename'],
                    "{{startdate}}"=>$rst[0]['startdate'],
                    "{{enddate}}"=>$rst[0]['enddate'],
                    "{{daystaken}}"=>$rst[0]['daystaken'],
                    "{{narration}}"=>$rst[0]['narration'],
                    "{{documenttitle}}"=>"Reliever Leave Application Approval Notification",
                    "{{username}}"=>$_SESSION['username'],
                    "{{year}}"=>date("Y"),
                );

                // search and replace all swap variables with actual contents
                foreach(array_keys($swap_var) as $key){
                    if(strlen($key)>2 && trim($key)!==""){
                        $emailmessage=str_replace($key,$swap_var[$key],$emailmessage);
                    }
                }

                // the relievers email
                $email=$rst[0]['relieveremailaddress'];
                $response=$GLOBALS['mail']->sendEmail($email,"Leave Application Full Approval Notification",$emailmessage,$_SESSION['username']);
                // echo $response;
                return ["status"=>"success","message"=>"reliever leave full approval notification email sent successfully"];
            }  
        }

        function getleaveapplicationtimeline($applicationid){
            $sql="CALL `sp_getleaveapplicationtimeline`({$applicationid})";
            return $this->getJSON($sql);
        }

        function getleaveapplicationstatus($applicationid){
            $sql="CALL sp_getleaveapplicationstatus({$applicationid})";
            return $this->getJSON($sql);
        }

        function employeeleavecancellationnotification($applicationid,$declinenarration){
            $template_file="../templates/emails/leaveapplicationcancellationnotification.html";
            if(file_exists($template_file)){
                $emailmessage=file_get_contents($template_file);
                // email employee
                $rst=json_decode($this->getleaveapplicationemployeedetails($applicationid),true);
                // print_r($rst).PHP_EOL;
                // swap variables with actual content
                $swap_var=array(
                    // "{{policycompany}}"=>$rst[0]['companyname'],
                    "{{companyname}}"=>$rst[0]["companyname"],
                    "{{employeename}}"=>$rst[0]["employeename"],
                    "{{leavename}}"=>$rst[0]['leavename'],
                    "{{startdate}}"=>$rst[0]['startdate'],
                    "{{enddate}}"=>$rst[0]['enddate'],
                    "{{daystaken}}"=>$rst[0]['daystaken'],
                    "{{narration}}"=>$rst[0]['narration'],
                    "{{documenttitle}}"=>"Leave Application Decline Status Notification",
                    "{{username}}"=>$_SESSION['username'],
                    "{{year}}"=>date("Y"),
                    "{{declinenarration}}"=>$declinenarration
                );

                 // search and replace all swap variables with actual contents
                 foreach(array_keys($swap_var) as $key){
                    if(strlen($key)>2 && trim($key)!==""){
                        $emailmessage=str_replace($key,$swap_var[$key],$emailmessage);
                    }
                }

                // the requestors email
                $email=$rst[0]['emailaddress'];
                $response=$GLOBALS['mail']->sendEmail($email,"Leave Application Decline Status Notification",$emailmessage,$_SESSION['username']);
                // echo $response;
                return ["status"=>"success","message"=>"employee email approval decline notification sent successfully"];
            }
        }
    }
?>