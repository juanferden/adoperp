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

	class FacebookGroup{		

		public static function postMessage($params,$data){
				
				$attachment =array(
							'access_token' => $data['access_token'],
							'message' => $data['message'],
							'name' => $data['name'],
							'link' => $data['link'],
							'description' => $data['description'],
							'picture'=>$data['picture'],	
							);	
				$message =array();
				$fbgroupid =$params->params->get('groupid');
					$log ='';	
					$publish =1;
					$checked = 0;
					foreach ($fbgroupid AS $key=>$fbid){
						$id = $fbid->id;								
						if(isset($fbid->checked)){
							$checked = 1;
								$url = "https://graph.facebook.com/$id/feed";											
								$ch = curl_init();
								curl_setopt($ch, CURLOPT_URL,$url);
								curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
								curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
								curl_setopt($ch, CURLOPT_POST, true);
								curl_setopt($ch, CURLOPT_POSTFIELDS, $attachment);
								curl_setopt($ch, CURLOPT_HEADER,0);
								curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
								$go = curl_exec($ch);
								$page = json_decode($go);
								if(isset($page->error)){
									$log .= Jtext::_('PUBLISHED_FACEBOOK_GROUPS_SENDMESSAGE').' <a href="https://www.facebook.com/'.$id.'" target="_blank" style="text-decoration: underline;">'.$fbid->name.'</a>  - '.$page->error->message.' <br/>' ;	
									$publish =0;
								}else{
									$log .= Jtext::_('PUBLISHED_FACEBOOK_GROUPS_SENDMESSAGE').' <a href="https://www.facebook.com/'.$id.'" target="_blank" style="text-decoration: underline;">'.$fbid->name.'</a>  - '.JTEXT::_('PUBLISHED_FACEBOOK_GROUPS_SENDMESSAGE_SUCCESSFULL').'<br/>';									
									}					
								curl_close ($ch);
						}
					}
				
				$message['log']=$log;
				$message['publish']=$publish;
				$message['checked']=$checked;
				$message['type'] ='facebook';
		return $message;	
			
		}
		
	}

