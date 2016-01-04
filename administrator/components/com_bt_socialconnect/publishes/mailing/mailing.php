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

class Mailing {		

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
			$log ='';	
			$publish =1;	
			$config = JFactory::getConfig();
			$data = array();
			$checked = 0;	
			$data['email'] 		= $params->params->get('mail');
			if(!empty($data['email'])){
				$checked = 1;
				$data['fromname']	= $config->get('fromname');
				$data['mailfrom']	= $config->get('mailfrom');
				$data['sitename']	= $config->get('sitename');
				$data['siteurl']	= JUri::root();
				$data['content']	= $attachment['message'];
				$data['name'] 		= $attachment['name'];
				$data['link'] 		= $attachment['link'];
				$data['description'] = $attachment['description'];
				
				$emailSubject	= JText::sprintf(
					'SENMAIL_AMINISTRATOR',
					$data['content'],				
					$data['sitename']
				);
				
				$emailBody = JText::sprintf(
						'SENMAIL_CONTEN_AMINISTRATOR',
						$data['content'] ,
						$data['name'] ,
						$data['link'] ,
						$data['description'] 
				);					
			
				$return = JFactory::getMailer()->sendMail($data['mailfrom'], $data['fromname'], $data['email'], $emailSubject, $emailBody);
				
				if ($return !== true) {
					$log .=JText::sprintf('PUBLISHED_SENDMAIL_ERROR',
						$data['email']
					);
					$publish =0;
				}else{
					$log .=JText::sprintf('PUBLISHED_SENDMAIL_SUCCESSFULL',
						$data['email']
					);
				}
			}
			$message['log']=$log;
			$message['publish']=$publish;
			$message['checked']=$checked;
			$message['type'] ='sendmail';
			return $message;
		}
		
}

