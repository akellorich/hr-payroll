<?php
    require_once("db.php");

    class creditor extends db{

        function checkcreditor($creditorid,$checkfield,$checkvalue){
            $sql="CALL `sp_checkcreditor`({$creditorid},'{$checkfield}','{$checkvalue}')";
            return $this->getData($sql)->rowCount();
        }

        function savecreditor($creditorid,$reference,$creditorname,$physicaladdress,$postaladdress,$town, $telephone,$emailaddress,$payrollcreditor){
            if($this->checkcreditor($creditorid,'reference',$reference)){
                return ["status"=>"exists","message"=>"reference exists"];
            }else if($this->checkcreditor($creditorid,'name',$creditorname)){
                return ["status"=>"exists","message"=>"name exists"];
            }else{
                 $sql="CALL `sp_savecreditor`({$creditorid},'{$reference}','{$creditorname}','{$physicaladdress}','{$postaladdress}','{$town}',
                '{$telephone}','{$emailaddress}',{$payrollcreditor},{$this->userid},'{$this->platform}')";
                $this->getData($sql);
                return ["status"=>"success","message"=>"success"];
            }
        }

        function getcreditors($payrollcreditors=1){
            $sql="CALL `sp_getcreditors`({$payrollcreditors})";
            return $this->getJSOn($sql);
        }

        function getcreditordetails($creditorid){
            $sql="CALL `sp_getcreditordetails`({$creditorid})";
            return $this->getJSON($sql);
        }

        function deletecreditor($creditorid){
            $sql="CALL `sp_deletecreditor`({$creditorid},{$this->userid},'{$this->platform}')";
            $this->getData($sql);
            return ["status"=>"success","message"=>"success"];
        }
    }

?>