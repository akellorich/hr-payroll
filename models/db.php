<?php 
    session_start();
    $sql='';
    require_once("browser.php");

    
    function generate_random_no($length=20){
        if (function_exists("random_bytes")) {
            $bytes = random_bytes(ceil($length / 2));
        } elseif (function_exists("openssl_random_pseudo_bytes")) {
            $bytes = openssl_random_pseudo_bytes(ceil($length / 2));
        } else {
            throw new Exception("no cryptographically secure random function available");
        }
        return substr(bin2hex($bytes), 0, $length);
    }

    class db{
        private $servername;
        private $username;
        private $password;
        private $dbname;
        private $charset;
        public $userid;
        public $platform;
        public $branchid;
        public $systemuserid;

        function __construct(){
            $this->userid=!isset($_SESSION['userid'])?5:$_SESSION['userid'];
            $this->platform=json_encode(getBrowserInfo());
            $this->branchid=isset($_SESSION['branchid'])?$_SESSION['branchid']:0;

            // get inbuilt system user
            $sql="CALL `sp_getinbuiltsystemuser`()";
            $rst=$this->getData($sql)->fetch();
            $this->systemuserid=$rst['userid'];
        }
              
        function connect(){

            $this->servername="localhost"; 
            $this->charset="utf8mb4";

            // development creds
            $this->username="root";
            $this->password="";
            $this->dbname='hrpayroll';

            // production creds
            // $this->username="wavishaj_saccoapp";
            // $this->password="K@r1bunikenya";
            // $this->dbname='wavishaj_sacco';

            try{
                $dsn="mysql:host=".$this->servername.";dbname=".$this->dbname.";charset=".$this->charset;
                $pdo=new PDO($dsn,$this->username,$this->password);
                $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
                return $pdo;
            }catch(PDOException $e){
                echo "Connection failed: ".$e->getMessage();
            }
        }

        function mySQLDate($date){
            $date = DateTime::createFromFormat('d-M-Y', $date);
            return $date->format('Y-m-d');
        }

        function getData($sql){
            return $this->connect()->query($sql);
        }

        function getJSON($sql){
            $rst=$this->getData($sql);
            return json_encode($rst->fetchAll(PDO::FETCH_ASSOC));
        }

        function uniqidReal($lenght = 20) {
            // uniqid gives 13 chars, but you could adjust it to your needs.
            if (function_exists("random_bytes")) {
                $bytes = random_bytes(ceil($lenght / 2));
            } elseif (function_exists("openssl_random_pseudo_bytes")) {
                $bytes = openssl_random_pseudo_bytes(ceil($lenght / 2));
            } else {
                throw new Exception("no cryptographically secure random function available");
            }
            return substr(bin2hex($bytes), 0, $lenght);
        }

        function json_decode_add_quotes_to_keys($s) {                      
            $s = preg_replace('/(\w+):/i', '"\1":', $s);                   
            return json_decode($s);                                        
        } 

        function connectmssqlserver(){
            $serverName = "richard-pc"; // or "hostname\SQLEXPRESS" or IP address
            $database = "attendance";
            $username = "sa";
            $password = "k@r1bu";

            try {
                $conn = new PDO("sqlsrv:Server=$serverName;Database=$database", $username, $password);
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                return $conn;
                echo "Connected successfully!";
            } catch (PDOException $e) {
                echo "Connection failed: " . $e->getMessage();
            }
        }

        function getmssqldata($sql){
            return $this->connectmssqlserver()->query($sql);
        }

        function getmssqljson($sql){
            $rst= $this->getmssqldata($sql);
            return json_encode($rst->fetchAll(PDO::FETCH_ASSOC));
        }
    }
?>