<?php
    require_once("db.php");
    class whatsapp extends db{
        private $accesstoken='';
        private $phonenumberid='';
        private $baseurl='';
        private $constituencyid;
        
        public $portalurl='';

        function __construct(){
            // $this->constituencyid=isset($_SESSION['constituencyid'])?$_SESSION['constituencyid']:0;
            $sql="CALL `sp_getwhatsappconfiguration`()";
            $rst=$this->getData($sql);
            if($rst->rowCount()){
                $rst=$rst->fetch();
                $this->accesstoken=$rst['accesstoken'];
                $this->phonenumberid=$rst['phonenumberid'];
                $this->baseurl=$rst['baseurl'];
                $this->portalurl=$rst['portalurl'];
            }
        }

        function savemessage($wamid,$phoneno,$messagecontent,$direction,$template,$templatename,$category,$questionid=0){
            // $messagecontent=str_replace($messagecontent,"'","''");
            $phoneno=$this->formatPhoneNumber($phoneno);
            $sql="CALL `sp_savewhatsappmessage`('{$wamid}','{$phoneno}','{$messagecontent}','{$direction}',{$template},'{$templatename}','{$category}',{$questionid})";
            $this->getData($sql);
            return "success";
        }

        function savewhatsappconfiguration($phonenumberid,$accesstoken,$baseurl){
            $sql="CALL `sp_savewhatsappconfiguration`('{$phonenumberid}','{$accesstoken}','{$baseurl}',{$_SESSION['constituencyid']})";
            $this->getData($sql);
            return "success";
        }

        function getwhatsappconfiguration(){
            $sql="CALL `sp_getwhatsappconfiguration`()";
            return $this->getJSON($sql);
        }

        function checkuserfirstmessage($number){
            $number=$this->formatPhoneNumber($number);
            $sql="CALL `sp_checkuserfirstmessage`('{$number}')";
            return $this->getData($sql)->fetch()['messages']==1?true:false;
        }

        // function sendfiletemplate($number,$templatename,$category,$filename,$documentname,$params=[]){
        //     $number=$this->formatPhoneNumber($number);
        //     // echo $number.PHP_EOL;
        //     $data = array(
        //         'messaging_product' =>'whatsapp',
        //         'to' => $number,
        //         'type' => 'template',
        //         "template" => [
        //             "name" => $templatename,
        //             "language" => [
        //                 "code" => "en" // Language code (e.g., en_US, es_ES)
        //             ]
        //         ]
        //     );
        //     if (count($params)>0 and $params[0]!=="") {
        //         $components = 
        //             // PDF Document in Header
        //             [
        //                 'type' => 'header',
        //                 'parameters' => [
        //                     [
        //                         'type' => 'document',
        //                         'document' => [
        //                             'link' => $filename, // Public HTTPS URL
        //                             'filename' => $documentname // Name shown to the user
        //                         ]
        //                     ]
        //                 ],
        //                 "type" => "body",
        //                 "parameters" => []
        //         ];
        
        //         foreach ($params as $param) {
        //             $components["parameters"][] = [
        //                 "type" => "text",
        //                 "text" => $param
        //             ];
        //         }
        
        //         $data["template"]["components"] = [$components];
        //     }
        
        //     echo json_encode($data);
        //     return $this->pushwhatsappmessage($data,$category);
        // }

        function sendfiletemplate($number, $templatename, $category, $filename, $documentname, $params = []) {

            $number = $this->formatPhoneNumber($number);
            
            $data = [
                'messaging_product' => 'whatsapp',
                'to' => $number,
                'type' => 'template',
                'template' => [
                    'name' => $templatename,
                    'language' => ['code' => 'en']
                ]
            ];
        
            $components = [];
        
            // Add Header Component (Image/Document)
            if (!empty($filename)) {
                $components[] = [
                    'type' => 'header',
                    'parameters' => [
                        [
                            'type' => 'document', // Use 'document' for PDFs
                            'document' => [       // For documents: 'document' => [...]
                                'link' => $filename, // HTTPS URL
                                'filename' => $documentname // Optional for images
                            ]
                        ]
                    ]
                ];
            }
        
            // Add Body Component (Variables)
            if (!empty($params)) {
                $bodyParams = [];
                foreach ($params as $param) {
                    $bodyParams[] = [
                        'type' => 'text',
                        'text' => $param
                    ];
                }
                $components[] = [
                    'type' => 'body',
                    'parameters' => $bodyParams
                ];
            }
        
            if (!empty($components)) {
                $data['template']['components'] = $components;
            }
        
            return $this->pushwhatsappmessage($data, $category);
        }


        function sendtemplate($number,$templatename,$category,$params=[]){
            $number=$this->formatPhoneNumber($number);
            $data = array(
                'messaging_product' =>'whatsapp',
                'to' => $number,
                'type' => 'template',
                "template" => [
                    "name" => $templatename,
                    "language" => [
                        "code" => "en" // Language code (e.g., en_US, es_ES)
                    ]
                ]
            );
            if (count($params)>0 and $params[0]!=="") {
                $components = [
                    "type" => "body",
                    "parameters" => []
                ];
        
                foreach ($params as $param) {
                    $components["parameters"][] = [
                        "type" => "text",
                        "text" => $param
                    ];
                }
        
                $data["template"]["components"] = [$components];
            }
        
            // echo json_encode($data);
            return $this->pushwhatsappmessage($data,$category);
        }

        function sendtext($number,$message,$category,$questionid=0){
            $number=$this->formatPhoneNumber($number);
            $data = array(
                'messaging_product' =>'whatsapp',
                'to' => $number,
                'type' => 'text',
                'text' => array("body"=>$message)
            );

            return $this->pushwhatsappmessage($data,$category,$questionid);
        }

        function countuserquestion($number){
            $questions=json_decode($GLOBALS['candidate']->checksubscriptionstatus($number),true);
            return intval($questions[0]['questionsasked'])+1;
        }

        function sendintroductionmessage($number,$firstname=''){
            if($firstname==""){
                $thecandidate=json_decode($GLOBALS['candidate']->getcandidatedetails($number),true);
                // print_r( $thecandidate);
                $firstname=$thecandidate[0]['firstname'];
            }
            $category='registered';
            $message="👍 Hello ".$firstname.", you have successfully registered your *NCLEXCHAT* account. We have free sample questions for you to try. Proceed by clicking the button below.".PHP_EOL;
            $message=$this->getsamplequestionsbutton($message,$number);
            // echo print_r($message).PHP_EOL;
            return $this->pushwhatsappmessage($message,$category,$questionid=0); 
        }

        function sendmainmenu($number,$hidewelcome=0){
            // get subscribers first name
            $person=json_decode($GLOBALS['candidate']->getcandidatedetails($number),true);
            if(count($person) > 0){
                $firstname=$person[0]['firstname'];
                $category='registered';
                $subscriberid=$person[0]['candidateid'];
                // check member subscription status
                $registration=json_decode($GLOBALS['candidate']->checksubscriptionstatus($number),true);
                $registration=$registration[0];
                // echo print_r($registration).PHP_EOL;
                if($registration['registrationstatus']=='Active'){
                    if($hidewelcome==1){
                        $message="*Menu*: proceed by selecting a menu item below".PHP_EOL;
                    }else{
                        $message="*Menu*:  Please select an option below".PHP_EOL;
                    }
                    $message=$this->getnclexmenu($message,$number);
                    // echo print_r($message).PHP_EOL;
                    return $this->pushwhatsappmessage($message,$category,$questionid=0); 
                }else if( $registration['questionsasked']<$registration['freequestions']){
                    $message="*Menu*: Please proceed trying our free sample questions".PHP_EOL;
                    $message=$this->getsamplequestionsbutton($message,$number);
                    // echo print_r($message).PHP_EOL;
                    return $this->pushwhatsappmessage($message,$category,$questionid=0); 
                }else{
                    $message=$this->getsubscriptionmessage($firstname);
                    // $message=$this->subscriptionpaymentmethods($message,$number);
                    return $this->sendtext($number,$message,'renew subscription');
                }
            }  
        }

        function getsubscriptionmessage($firstname){
            $message='Hello '.$firstname.",".PHP_EOL.PHP_EOL;
            $message.="We are *glad* to have you with us!".PHP_EOL.PHP_EOL;
            $message.="*OUR PROMISE*".PHP_EOL.PHP_EOL;
            $message.="To make your NCLEX revision *convenient*, *thorough* and *enjoyable*".PHP_EOL.PHP_EOL;
            $message.="Please subscribe and experience the full benefits of NCLEXCHAT services".PHP_EOL.PHP_EOL;
            $message.="You will have unlimited access to :".PHP_EOL.PHP_EOL;
            $message.="1️⃣ Our huge databank of *5,000+* *Questions* and *Answers* with rationale to enable you *STUDY*, *REVISE* and *PRACTICE*".PHP_EOL.PHP_EOL;
            $message.="2️⃣ *Practice Tests* to keep you assesing your progress ".PHP_EOL.PHP_EOL;
            $message.="3️⃣ Typical NCLEX *Mock Exam*  for simulations".PHP_EOL.PHP_EOL;
            $message.="4️⃣ *Nursing Jokes* for fun to lighten your mood".PHP_EOL.PHP_EOL;
            $message.="5️⃣ *Nursing Trivia*  to improve your cognitive skills".PHP_EOL.PHP_EOL;
            $message.="6️⃣ *Exam Tips* to increase your confidence".PHP_EOL.PHP_EOL;
            $message.="*Access Fee* is only *$49.95*. Click on the link below to pay".PHP_EOL.PHP_EOL;
            $message.='*'.$GLOBALS['baseurl'].'/plugins/pesapal/'.'*';
            return $message;
        }

        function getnclexmenu($message,$number){
            $interactivemenu=array(
                    "messaging_product"=> "whatsapp",
                    "recipient_type"=> "individual",
                    "to"=> $number,
                    "type"=> "interactive",
                    "interactive"=>array(
                        "type"=> "button",
                        "body"=> array(
                            "text"=> $message
                        ),
                        "action"=> array(
                            "buttons"=> array(
                                [                              
                                    "type"=> "reply",
                                    "reply"=> array(
                                        "id"=> "informationmenu",
                                        "title"=> "Information"
                                    )
                                ],
                                [                              
                                    "type"=> "reply",
                                    "reply"=> array(
                                        "id"=> "testmenu",
                                        "title"=> "Study Resources"
                                    )  
                                ],
                                [                              
                                    "type"=> "reply",
                                    "reply"=> array(
                                        "id"=> "entertainmentmenu",
                                        "title"=> "Entertainment"
                                    )
                                ],
                                
                            )
                        ) 
                    )
            );
            return $interactivemenu;
        }

        function getquestionsbankbutton($message,$number){
            $interactivemenu=array(
                "messaging_product"=> "whatsapp",
                "recipient_type"=> "individual",
                "to"=> $number,
                "type"=> "interactive",
                "interactive"=>array(
                    "type"=> "button",
                    "body"=> array(
                        "text"=> $message
                    ),
                    "action"=> array(
                        "buttons"=> array(
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "question",
                                    "title"=> "Questions Bank"
                                )
                            ] 
                        )
                    ) 
                )
            );
            return $interactivemenu;
        }

        function getsamplequestionsbutton($message,$number){
            $interactivemenu=array(
                "messaging_product"=> "whatsapp",
                "recipient_type"=> "individual",
                "to"=> $number,
                "type"=> "interactive",
                "interactive"=>array(
                    "type"=> "button",
                    "body"=> array(
                        "text"=> $message
                    ),
                    "action"=> array(
                        "buttons"=> array(
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "question",
                                    "title"=> "Sample Questions"
                                )
                            ] 
                        )
                    ) 
                )
            );
            return $interactivemenu;
        }

        function informationmenu($message,$number){
            $interactivemenu=array(
                "messaging_product"=> "whatsapp",
                "recipient_type"=> "individual",
                "to"=> $number,
                "type"=> "interactive",
                "interactive"=>array(
                    "type"=> "button",
                    "body"=> array(
                        "text"=> $message
                    ),
                    "action"=> array(
                        "buttons"=> array(
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "aboutnclex",
                                    "title"=> "Help and Support"
                                )
                            ],
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "faqs",
                                    "title"=> "FAQs"
                                )  
                            ],
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "tips",
                                    "title"=> "Exam Tips"
                                )  
                            ]
                        )
                    ) 
                )
            );
            $category="informationmenu";
            return $this->pushwhatsappmessage($interactivemenu,$category,$questionid=0);
        }

        function questionsmenu($message,$number){
            $interactivemenu=array(
                "messaging_product"=> "whatsapp",
                "recipient_type"=> "individual",
                "to"=> $number,
                "type"=> "interactive",
                "interactive"=>array(
                    "type"=> "button",
                    "body"=> array(
                        "text"=> $message
                    ),
                    "action"=> array(
                        "buttons"=> array(
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "question",
                                    "title"=> "Questions Bank"
                                )
                            ],
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "periodictest",
                                    "title"=> "Periodic Test"
                                )  
                            ],
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "practiceexam",
                                    "title"=> "Mock Exam"
                                )  
                            ]
                        )
                    ) 
                )
            );
            $category="questionsmenu";
            return $this->pushwhatsappmessage($interactivemenu,$category,$questionid=0);
        }

        function entertainmentmenu($message,$number){
            $interactivemenu=array(
                "messaging_product"=> "whatsapp",
                "recipient_type"=> "individual",
                "to"=> $number,
                "type"=> "interactive",
                "interactive"=>array(
                    "type"=> "button",
                    "body"=> array(
                        "text"=> $message
                    ),
                    "action"=> array(
                        "buttons"=> array(
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "jokes",
                                    "title"=> "Nursing Jokes"
                                )
                            ],
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "trivia",
                                    "title"=> "Nursing Trivia"
                                )  
                                ],
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "motivation",
                                    "title"=> "Motivational Quotes"
                                )  
                            ]
                        )
                    ) 
                )
            );
            // return $interactivemenu;
            $category="entertainmentmenu";
            return $this->pushwhatsappmessage($interactivemenu,$category,$questionid=0);
        }

        function subscriptionpaymentmethods($message,$number){
            $interactivemenu=array(
                "messaging_product"=> "whatsapp",
                "recipient_type"=> "individual",
                "to"=> $number,
                "type"=> "interactive",
                "interactive"=>array(
                    "type"=> "button",
                    "body"=> array(
                        "text"=> $message
                    ),
                    "action"=> array(
                        "buttons"=> array(
                            [       
                     
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "mpesa",
                                    "title"=> "MPESA"
                                )
                            ],
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "card",
                                    "title"=> "Card"
                                ) 
                            ]
                        )
                    ) 
                )
            );
            return $interactivemenu;
        }

        function sendimage($number,$link,$caption,$category){
            $data = array(
                'messaging_product' =>'whatsapp',
                'to' => $number,
                'type' => 'image',
                'image' => array(
                            "link"=>$link,
                            "caption"=>$caption
                )
            );
            return $this->pushwhatsappmessage($data,$category);
        }

        function sendhelpmenu($number){

            $paymentissue = (object) [
                'id' => 'paymentissue',
                'title' => 'Payment Issue',
                'description' => 'Issues related to payments not processing'
            ];
             
            $unresponsiveapp = (object) [
                'id' => 'unresponsiveapplication',
                'title' => 'Unresponsive Application',
                'description' => 'The application freezes and does not return anything'
            ];

            $vidoetraining = (object) [
                'id' => 'videotutorials',
                'title' => 'Video Tutorials',
                'description' => 'Access YouTube channel to access video tutorials'
            ];
             
            $options = array($paymentissue, $unresponsiveapp,$vidoetraining);

            $listInteractiveObject = array(
                "type" => "list",
                "body" => array(
                    "text" => "Please select a help and support issue from the list below",
                ),
                "action" => array(
                    "button" => "Choose support issue",
                    "sections" => array(
                        array(
                            "title" => "",
                            "rows" => $options
                        )
                    )
                )
            );

            $interactive = array(
                "messaging_product" =>"whatsapp",
                "to" => $number,               
                "type" => "interactive",
                "interactive"=> $listInteractiveObject
            );

            // print_r($interactive).PHP_EOL;

            // echo json_encode($interactive).PHP_EOL;
            return $this->pushwhatsappmessage($interactive,"helpandsupport",0);
        }

        function sendvideo($number,$link,$filename,$category){
            $data = array(
                'messaging_product' =>'whatsapp',
                'to' => $number,
                'type' => 'document',
                'document' => array(
                            "link"=>$link,
                            "filename"=>$filename
                        )
            );
            return $this->pushwhatsappmessage($data,$category);
        }

        function sendanswerresponse($response,$number){
            echo "Responding to answer ...".PHP_EOL;
            // echo 'The response length is: '.strlen($response).PHP_EOL;
            
            // check user account if subscription is valid or free questions exhausted

            $registration=json_decode($GLOBALS['candidate']->checksubscriptionstatus($number),true);
            $registration=$registration[0];
            $firstname=$registration['firstname'];
            // echo print_r($registration).PHP_EOL;
            if($registration['registrationstatus']=='Inactive' && $registration['questionsasked']>=$registration['freequestions']){
                // start with the answer
                $this->sendtext($number,$response,'answer response');
                $message=$this->getsubscriptionmessage($firstname);
                return $this->sendtext($number,$message,'renew subscription');
            }else{

                if(strlen($response)>1024){
                    $response=substr($response,0,1024);
                }

                // $response=urlencode($response);

                $interactivemenu=array(
                    "messaging_product"=> "whatsapp",
                    "recipient_type"=> "individual",
                    "to"=> $number,
                    "type"=> "interactive",
                    "interactive"=>array(
                        "type"=> "button",
                        "body"=> array(
                            "text"=> $response
                        ),
                        "action"=> array(
                            "buttons"=> array(
                                [                              
                                    "type"=> "reply",
                                    "reply"=> array(
                                        "id"=> "nextquestion",
                                        "title"=> "Next Question"
                                    )
                                ],
                                [                              
                                    "type"=> "reply",
                                    "reply"=> array(
                                        "id"=> "menu",
                                        "title"=> "Menu"
                                    )  
                                ]
                            )
                        ) 
                    )
                );
                $category="answer response";
                return $this->pushwhatsappmessage($interactivemenu,$category,$questionid=0); 
            }
         
            
        }

        function practiceexamrunningresponse($message,$number){
            echo "Responding practice exam exists ...".PHP_EOL;
            $interactivemenu=array(
                "messaging_product"=> "whatsapp",
                "recipient_type"=> "individual",
                "to"=> $number,
                "type"=> "interactive",
                "interactive"=>array(
                    "type"=> "button",
                    "body"=> array(
                        "text"=> $message
                    ),
                    "action"=> array(
                        "buttons"=> array(
                            [       
                     
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "continuepracticeexam",
                                    "title"=> "Continue"
                                )
                            ],
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "quitpracticeexam",
                                    "title"=> "Exit"
                                ) 
                            ]
                        )
                    ) 
                )
            );
            // return $interactivemenu;
            $category="practice exam exists";
            $this->pushwhatsappmessage($interactivemenu,$category,$questionid=0,$practiceexam=0);
        }

        function pushwhatsappmessage($data,$category,$questionid=0,$practiceexam=0){
            // echo "Sending whatsapp message ...".PHP_EOL;
            $headers= ['Content-Type:application/json','Authorization:Bearer '.$this->accesstoken];
            $url = $this->baseurl."/".$this->phonenumberid."/messages";
            $curl = curl_init();
            curl_setopt($curl, CURLOPT_URL, $url);
            curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);

            // $data_string = json_encode($data);
        
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($curl, CURLOPT_POST, true);
            curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
        
            $curl_response = json_decode(curl_exec($curl),true);

            // print_r($curl_response).PHP_EOL;

            if(array_key_exists("error",$curl_response)){
                $response= array("status"=>"failed","message"=>$curl_response["error"]["message"]);
            }else{
                $wamid=$curl_response["messages"][0]["id"];
                $number=$data['to'];
                $message=str_replace("'","''",json_encode($data[$data['type']]));
                // $category=$data['category'];
                $response=array("status"=>"success","message"=>$wamid);
                $this->savemessage($wamid,$number,$message,'outgoing',0,'',$category,$questionid);    
            }
            return $response;
        }

        function getcandidatedetails($number){  
            $sql="CALL `sp_getcandidatedetails`('{$number}')";
            return $this->getJSON($sql);
        }
        
        function updatemessagestatus($wamid,$status){
            $sql="CALL `sp_updatewhatsappmessagestatus`('{$wamid}','{$status}')";
            $this->getData($sql);
            return "success";
        }

        function sendemoji($number,$emoji,$wamid){
            $data = array(
                'messaging_product' =>'whatsapp',
                'to' => $number,
                'type' => 'reaction',
                'reaction' => array(
                            "messageid"=>$wamid,
                            "emoji"=>$emoji
                        )
            );
            return $this->pushwhatsappmessage($data,$category);
        }

        function sendjoke($number){
            $sql="CALL `sp_getjoke`()";
            $joke=$this->getData($sql)->fetch();
            $data=array(
                "messaging_product"=> "whatsapp",
                "recipient_type"=> "individual",
                "to"=> $number,
                "type"=> "interactive",
                "interactive"=>array(
                    "type"=> "button",
                    "body"=> array(
                        "text"=> '*Here is a joke:*'.PHP_EOL.$joke['joke'].PHP_EOL.'_'.$joke['answer'].'_'
                    ),
                    "action"=> array(
                        "buttons"=> array(
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "nextjoke",
                                    "title"=> "Next joke"
                                )
                                ],
                                [                              
                                    "type"=> "reply",
                                    "reply"=> array(
                                        "id"=> "menu",
                                        "title"=> "Menu"
                                    )
                                ]
                        )
                    ) 
                )
            );
            $category='joke';
            return $this->pushwhatsappmessage($data,$category);
        }
    
        function sendtrivia($number){
            $sql="CALL `sp_countusertriviaquestions`({$number})";
            $question=$this->getData($sql)->fetch();
            $questioncount=$question["questionno"]+1;
            $sql="CALL `sp_gettrivia`()";
            $trivia=$this->getData($sql)->fetch();
            $message='*Trivia '.$questioncount.'*'.PHP_EOL.$trivia['question'].PHP_EOL."_".$trivia['answer']."_"; 
            $questionid=$trivia['id'];
            $category='trivia';
            // return $this->sendtext($number,$message,$category,$questionid);
            $data=array(
                "messaging_product"=> "whatsapp",
                "recipient_type"=> "individual",
                "to"=> $number,
                "type"=> "interactive",
                "interactive"=>array(
                    "type"=> "button",
                    "body"=> array(
                        "text"=> $message
                    ),
                    "action"=> array(
                        "buttons"=> array(
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "nexttrivia",
                                    "title"=> "Next Trivia"
                                )
                                ],
                                [                              
                                    "type"=> "reply",
                                    "reply"=> array(
                                        "id"=> "menu",
                                        "title"=> "Menu"
                                    )
                                ]
                        )
                    ) 
                )
            );
            return $this->pushwhatsappmessage($data,$category);
        }
    
        function sendmotivation($number){
            $sql="CALL `sp_getmotivationalquote`()";
            $motivation=$this->getData($sql)->fetch();
            $data=array(
                "messaging_product"=> "whatsapp",
                "recipient_type"=> "individual",
                "to"=> $number,
                "type"=> "interactive",
                "interactive"=>array(
                    "type"=> "button",
                    "body"=> array(
                        "text"=> '*Here is a motivation quote:*'.PHP_EOL.$motivation['quote'].PHP_EOL.'_~'.$motivation['author'].'_'
                    ),
                    "action"=> array(
                        "buttons"=> array(
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "nextmotivation",
                                    "title"=> "Next Quote"
                                )
                                ],
                                [                              
                                    "type"=> "reply",
                                    "reply"=> array(
                                        "id"=> "menu",
                                        "title"=> "Menu"
                                    )
                                ]
                        )
                    ) 
                )
            );
            $category='motivation';
            return $this->pushwhatsappmessage($data,$category);
        }

        function getsubscribertriviadetails($wamid){
            $sql="CALL `sp_getsubscribertriviadetails`('{$wamid}')";
            // echo 'Generating trivia details ...'.PHP_EOL;
            // echo $sql.PHP_EOL;
            $result=$this->getJSON($sql);
            // print_r($result);
            return $result;
        }

        function gettriviaanswer($questionid){
            $sql="CALL `sp_gettrivianswer`({$questionid})";
            return $this->getJSON($sql);
        }

        function sendtriviaresponse($number,$response){
            $data=array(
                "messaging_product"=> "whatsapp",
                "recipient_type"=> "individual",
                "to"=> $number,
                "type"=> "interactive",
                "interactive"=>array(
                    "type"=> "button",
                    "body"=> array(
                        "text"=> $response
                    ),
                    "action"=> array(
                        "buttons"=> array(
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "nexttrivia",
                                    "title"=> "Next trivia"
                                )
                                ],
                                [                              
                                    "type"=> "reply",
                                    "reply"=> array(
                                        "id"=> "menu",
                                        "title"=> "Menu"
                                    )
                                ]
                        )
                    ) 
                )
            );
            $category='triviaresponse';
            return $this->pushwhatsappmessage($data,$category);
        }

        function practiceexamwelcome($number,$message){
            echo "Processing practice exam welcome ...".PHP_EOL;
            $data=array(
                "messaging_product"=> "whatsapp",
                "recipient_type"=> "individual",
                "to"=> $number,
                "type"=> "interactive",
                "interactive"=>array(
                    "type"=> "button",
                    "body"=> array(
                        "text"=> $message
                    ),
                    "action"=> array(
                        "buttons"=> array(
                            [                              
                                "type"=> "reply",
                                "reply"=> array(
                                    "id"=> "startpracticeexam",
                                    "title"=> "Start Exam"
                                )
                            ]
                        )
                    ) 
                )
            );
            $category='practiceexamwelcome';
            return $this->pushwhatsappmessage($data,$category);
        }

        function checksubscriberrunningexam($number,$examtypeid=0){
            $sql="CALL `sp_checksubscriberrunningexam`('{$number}')";
            $status= $this->getData($sql)->rowCount();
            if($status){
                $message="Sorry you currently have  another practice exam running";
                $this->practiceexamrunningresponse($message,$number);
            }else{
                // store temporay token to store the exam type for the next step
                // echo "No Exam running ".PHP_EOL;
                // echo "Exam type id: ".$examtypeid.PHP_EOL;

                if($examtypeid>0){
                    $sql="CALL `savecandidatestartexamtype`('{$number}',{$examtypeid})";
                    // echo $sql.PHP_EOL;
                    $this->getData($sql);
                }
            }
            return $status;
        }

        function startsubscriberpracticeexam($number){
            // echo "Inline subscriber starting exam ...".PHP_EOL;
            if($this->checksubscriberrunningexam($number)){
                return "exists";
            }else{
                $sql="CALL `sp_startcandidatepracticeexam`('{$number}')";
                echo $sql.PHP_EOL;
                $this->getData($sql);
                return "success";
            }
        }

        function sendpracticeexamquestion($number){
            echo "Sending practice exam...".PHP_EOL;
            $easy=0;
            $sql="CALL `sp_countsubscriberpracticeexamquestions`('{$number}')";
            $questions=$this->getData($sql)->fetch();
            $questionsasked=$questions['questionsasked']+1;
            $totalquestions=$questions['totalquestions'];

            $practicequestion="*Question ".$questionsasked." of ".$totalquestions."* : ";

            // get a random question
            // $sql="CALL `sp_getrandomquestion`({$easy},'{$number}')";
            // $rst=$this->getData($sql);

            // if($rst->rowCount()){
            //     $rst=$rst->fetch();
            //     $question=$practicequestion.$rst['questionnarrative'];
            //     $questionid=$rst['questionid'];
            // }else{
            //     $question="We didn't find any questions in the databank.";
            //     $questionid=0;
            // }

            // if($questionid==0){
            //     return  array("status"=>"failed","message"=>$question);
            // }else{                    
            //     // set up the interactive question 
            //     $listInteractiveObject = array(
            //         "type" => "list",
            //         "body" => array(
            //             "text" => $question,
            //         ),
            //         "action" => array(
            //             "button" => "Choose your answer",
            //             "sections" => array(
            //                 array(
            //                     "title" => "",
            //                     "rows" => array()
            //                 )
            //             )
            //         )
            //     );

            //     // get question answers
            //     $sql="CALL `sp_getquestionanswers`({$questionid})";
            //     // echo $sql.PHP_EOL;
            //     $answers=$this->getJSON($sql);

            //     // decode back to array
            //     $answers=json_decode($answers,true);
            //     // print_r($answers);
            //     $i=0;
            //     if(count($answers)>0){
            //         foreach($answers as $answer){
            //             // check if description length does not exceed provision by whatsapp
            //             $answernarrative=strlen($answer['answernarrative'])>72?substr($answer['answernarrative'],0,72):$answer['answernarrative'];
            //             $option = array(
            //                 "id" => 'practiceexam'. $answer['answerid'],
            //                 "title" => chr(65+$i),
            //                 "description" => $answernarrative
            //             );
            //             array_push($listInteractiveObject["action"]["sections"][0]["rows"], $option);
            //             $i++;
            //         }
            //     }else{
            //         $num_sections = 4; 
            //         for ($i = 1; $i <= $num_sections; $i++) {
            //             $option = array(
            //                 "id" =>$i,
            //                 "title" => chr(64+$i), 
            //                 "description" => $question
            //             );
            //             array_push($listInteractiveObject["action"]["sections"][0]["rows"], $option);
            //         }
            //     }
                
            //     // Define the interactive object
            //     $interactive = array(
            //         "messaging_product" =>"whatsapp",
            //         "to" => $number,               
            //         "type" => "interactive",
            //         "interactive"=> $listInteractiveObject
            //     );
                // send the question

            $sql="CALL `sp_getrandomquestion`({$easy},'{$number}')";
            // echo $sql.PHP_EOL;
            $rst=$this->getData($sql);

            if($rst->rowCount()){
                $rst=$rst->fetch();
                $question=$practicequestion.$rst['questionnarrative'];
                $questionid=$rst['questionid'];
                $questiontypeid=$rst['typeid'];
            }else{
                $question="We didn't find any questions in the databank.";
                $questionid=0;
            }

            if($questionid==0){
                return  array("status"=>"failed","message"=>$question);
            }else{              
                if($questiontypeid==1){
                    // set up the interactive question 
                    $listInteractiveObject = array(
                        "type" => "list",
                        "body" => array(
                            "text" => $question,
                        ),
                        "action" => array(
                            "button" => "Choose your answer",
                            "sections" => array(
                                array(
                                    "title" => "👆Tap *X* for question",
                                    "rows" => array()
                                )
                            )
                        )
                    );

                    // get question answers
                    $sql="CALL `sp_getquestionanswers`({$questionid})";
                    // echo $sql.PHP_EOL;
                    $answers=$this->getJSON($sql);

                    // decode back to array
                    $answers=json_decode($answers,true);
                    // print_r($answers);
                    $i=0;
                    if(count($answers)>0){
                        foreach($answers as $answer){
                            $answernarrative=strlen($answer['answernarrative'])>72?substr($answer['answernarrative'],0,72):$answer['answernarrative'];
                            $option = array(
                                "id" => 'practiceexam'.$answer['answerid'],
                                "title" => chr(65+$i),
                                "description" => $answernarrative
                            );
                            array_push($listInteractiveObject["action"]["sections"][0]["rows"], $option);
                            $i++;
                        }
                    }
                    
                    $interactive = array(
                        "messaging_product" =>"whatsapp",
                        "to" => $number,               
                        "type" => "interactive",
                        "interactive"=> $listInteractiveObject
                    );
                }elseif ($questiontypeid==3){
                    $sql="CALL `sp_getquestionanswers`({$questionid})";
                    // echo $sql.PHP_EOL;
                    $answers=$this->getJSON($sql);

                    // decode back to array
                    $answers=json_decode($answers,true);

                    $i=0;
                    if(count($answers)>0){
                        $answernarrative='';
                        $answercounter=0;
                        foreach($answers as $answer){
                            $answercounter++;
                            $answernarrative.=PHP_EOL.$answercounter."). ".$answer['answernarrative'];
                        }
                        $question.=$answernarrative;
                    }

                    $interactive = array(
                        'messaging_product' =>'whatsapp',
                        'to' => $number,
                        'type' => 'text',
                        'text' => array("body"=>$question)
                    );
                }else{
                    // send question as a regular text
                    $interactive = array(
                        'messaging_product' =>'whatsapp',
                        'to' => $number,
                        'type' => 'text',
                        'text' => array("body"=>$question)
                    );
                }   
                return $this->pushwhatsappmessage($interactive,"practiceexam",$questionid,1);
            }
        }

        function updatepracticeexamanswer($wamid,$number,$answerid,$answertext=''){
            $sql="CALL `sp_savepracticeexamanswer`('{$wamid}','{$number}',{$answerid},'{$answertext}')";
            // echo $sql.PHP_EOL;
            $this->getData($sql);
            return "success";
        }

        function subscriberpracticeexamquestionsasked($number){
            $sql="CALL `sp_countsubscriberpracticeexamquestions`('{$number}')";
            return $this->getData($sql)->fetch()['questionsasked'];
        }

        function stoppracticeexam($number,$reason){
            $sql="CALL `sp_stopcurrentprocaticeexam`('{$number}','{$reason}')";
            // echo $sql.PHP_EOL;
            $this->getData($sql);
            return "success";
        }

        function getpracticeexamresults($number,$examid){
            $sql="CALL `sp_getexamresults`('{$number}',{$examid})";
            return $this->getJSON($sql);
        }

        function getpracticeexamresultsbycategory($number,$examid){
            $sql="CALL `sp_getexamresultbycategory`('{$number}',{$examid})";
            return $this->getJSON($sql);
        }

        function sendfaqslink($number){
            $message="Please follow the link below to open *FAQs*".PHP_EOL."https://nclexchat.com/nclex/faq".PHP_EOL;
            $category="faq";
            $this->sendtext($number,$message,$category);
            return sendmainmenu($number,1);
        }

        function sendtipslink($number){
            $message="Please follow the link below to open *Exam Tips*".PHP_EOL."https://nclexchat.com/nclex/tips".PHP_EOL;
            $category="tips";
            $this->sendtext($number,$message,$category);
            return sendmainmenu($number,1);
        }

        function sendaboutnclexchat($number){
            $message="ABOUT *NCLEXCHAT*".PHP_EOL.PHP_EOL;
            $message.="*NCLEXCHAT* is a unique innovative and interactive low cost NCLEX study solution with rich content. It is a chatbot.".PHP_EOL.PHP_EOL;
            $message.="Studying for NCLEX can be a headache as finding time to study is a challenge, yet the secret to passing NCLEX is to PRACTICE, PRACTICE and PRACTICE answering the NCLEX type questions. *NCLEXCHAT* offers you convenience and flexibility so you can make use of any free time (even 5 - 10 minutes) to study and Practice. The more you Practice, the more you sharpen your mind, the more you master the art of passing NCLEX.".PHP_EOL.PHP_EOL;
            $message.="*NCLEXCHAT* gives you convenience.  It makes studying and preparing for NCLEX easier and enjoyable. It is interactive. You CHAT on your WhatsApp. You chat with fun on your phone as you cover rich content. Unlike Apps which take space on your phone, and require downloading, *NCLEXCHAT* is cloud based. It does not take up space on your phone because it does not require downloading.".PHP_EOL.PHP_EOL;
            $message.="*NCLEXCHAT* gives you access to a 5,000+ NCLEX style practice questions Bank, answers, and rationales. There are ample periodic Tests for self-assessment, and NCLEX Mock Exams to test your preparedness/readiness for NCLEX Exams. You will also find Tips on how to pass NCLEX. All these for only $49.95.".PHP_EOL.PHP_EOL;
            $message.="To get started, you send NCLEXCHAT to *+1 469 975 7194* . Create this number under the name *NCLEXCHAT* on your contacts for future use.";
            $category="aboutnclex";
            return $this->sendtext($number,$message,$category);
        }

        function sendsubscribersubscriptiondetails($refno){
            // get subscription details
            $sql="CALL `sp_getsubscriptiondetails`('{$refno}')";
            $rst=$this->getData($sql)->fetch();
            $mobile=$rst['mobile'];
            $firstname=$rst['firstname'];
            $message="Hello ".$rst['firstname']." ".$rst['lastname'].PHP_EOL;
            $message.="Your NCLEXChat subscription payment has been received successfully".PHP_EOL;
            $message.="Payment details are as follows: ".PHP_EOL;
            $message.="Payment Method: *".$rst['paymentmode']."*".PHP_EOL;
            $message.="Reference Number: *".$rst['referenceno']."*".PHP_EOL;
            $message.="Amount: *".$rst['amount']."*".PHP_EOL;
            $message.="Subscription expiry: *".$rst['subscriptionends']."*".PHP_EOL;
            $message.="You will now be able to access all system features.".PHP_EOL.PHP_EOL;
            $message.="Thank you".PHP_EOL;
            $category='payment confirmation';
            $this->sendtext($mobile,$message,$category);
            $this->sendmainmenu($mobile);
        }

        function getnonmultiplechoicequestionanswers($wamid){
            $sql="CALL `sp_getnonmultiplechoicequestionanswers`('{$wamid}')";
            return $this->getJSON($sql);
        }

        function getwhatsappmessagedetails($wamid){
            $sql="CALL `sp_getwhatsappmessagedetails`('{$wamid}')";
            return $this->getJSON($sql);
        }
    } 
?>