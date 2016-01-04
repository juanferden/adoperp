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

	class TwitterProfile{		

		public static function postMessage($params,$data){
				$attachment = array (
								'message' => $data['message']
							);
				$message =array();
				
				if(!class_exists('TwitterOAuth')){
					require_once(dirname(__FILE__).'/elements/twitter/twitteroauth.php');	
				}
				$user = $params->params->get('groupid');
				$checked = 0;
				$log ='';	
				$publish =1;
				if(isset($user->checked)){
					$checked = 1;
					$twitter = unserialize($params->params->get('access_token'));				
					$connection = new TwitterOAuth($params->params->get('app_appid'), $params->params->get('app_secret'), $twitter['oauth_token'], $twitter['oauth_token_secret']);	
							
					$parameters = array('status' => $attachment['message']);						
					$status = $connection->post('statuses/update', $parameters);											
						
					if(isset($status->errors)){
					
						$log =Jtext::_('PUBLISHED_TWITTER_PROFILE_SENDMESSAGE').' <a href="https://twitter.com/'.$user->screen_name.'" target="_blank" style="text-decoration: underline;">'.$user->name.'</a>  - '.$status->errors[0]->message.' <br/>' ;	
						$publish =0;
					}else{
						$log = Jtext::_('PUBLISHED_TWITTER_PROFILE_SENDMESSAGE').' <a href="https://twitter.com/'.$user->screen_name.'" target="_blank" style="text-decoration: underline;">'.$user->name.'</a>  - '.JTEXT::_('PUBLISHED_TWITTER_PROFILE_SENDMESSAGE_SUCCESSFULL').'<br/>';									
						$publish =1;
					}						
				}
				
				$message['log']=$log;
				$message['publish']=$publish;
				$message['checked']=$checked;
				$message['type'] ='twitter';
		return $message;	
			
		}
		
	}

