<?php
/**
 * @package 	bt_socialconnect - BT Social Connect Component
 * @version		1.0.0
 * @created		February 2014
 * @author		BowThemes
 * @email		support@bowthems.com
 * @website		http://bowthemes.com
 * @support		Forum - http://bowthemes.com/forum/
 * @copyright	Copyright (C) 2014 Bowthemes. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
 
defined("_JEXEC") or die("Cannot direct access!");

	class LinkedinProfile{		

		public static function postMessage($params,$data){
				$message =array();
				$attachment =array(
							'comment' => $data['message'],
							'content' => array(
								'title' => $data['name'],
								'description' => $data['description'],
								'submittedUrl' => $data['link'],
								'submitted-image-url'=>$data['picture']
							),
							'visibility' => array('code' => 'anyone' )
							);	
				$body = $attachment;
				
				$access_token =$params->params->get('access_token');
				$linkedID =$params->params->get('groupid');						
					$checked = 0;
					$log ='';	
					$publish =1;
					$id = $linkedID->id;								
					if(isset($linkedID->checked)){
						$checked = 1;						
						$config = array(
							'oauth2_access_token' => $access_token,
							'format' => 'json',
						); 		
						
						$urlInfo = parse_url('https://api.linkedin.com/v1/people/~/shares'); 
						
						if(isset($urlInfo['query'])){
							$query = parse_str($urlInfo['query']);
							$config = array_merge($config,$query);
						}    
					 
						$url = 'https://api.linkedin.com' . $urlInfo['path'] . '?' . http_build_query($config);        
						
						if(!is_string($body)){           
								$body = json_encode($body);                     
						}
						
						$ch = curl_init();
						curl_setopt($ch, CURLOPT_URL,$url);
						curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
						curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
						curl_setopt($ch, CURLOPT_POST, true);
						curl_setopt($ch, CURLOPT_POSTFIELDS, $body);
						curl_setopt($ch, CURLOPT_HEADER,0);
						curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
						curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-type: application/json'));
						$go = curl_exec($ch);
						$page = json_decode($go);
						if(isset ($page->message)){
							$log =Jtext::_('PUBLISHED_LINKEDIN_PROFILE_SENDMESSAGE').' <a href="http://www.linkedin.com/profile/view?id='.$id.'" target="_blank" style="text-decoration: underline;">'.$linkedID->name.'</a>  - '.$page->message.' <br/>' ;	
							$publish =0;
						}else{
							$log= Jtext::_('PUBLISHED_LINKEDIN_PROFILE_SENDMESSAGE').' <a href="http://www.linkedin.com/profile/view?id='.$id.'" style="text-decoration: underline;" target="_blank">'.$linkedID->name.'</a> - '.JTEXT::_('PUBLISHED_LINKEDIN_PROFILE_SENDMESSAGE_SUCCESSFULL').'<br/>';
							$publish = 1;
						}
						curl_close ($ch);							
					
					}
				$message['log']= $log;
				$message['publish']= $publish;
				$message['checked']= $checked;
				$message['type'] ='linkedin';
		
		return $message;	
			
		}
		
	}

