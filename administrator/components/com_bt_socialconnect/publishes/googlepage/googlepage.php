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

class Googlepage {		

		public static function postMessage($params,$data){			
			$message =array();
			$post =($data['message'].' '.$data['description'].' '.$data['link']);
			$log ='';	
			$publish =1;			
			$data = array();
			$checked = 0;	
			$data['email'] 		= $params->params->get('mail');
			$page ='<a href ="https://plus.google.com/b/'.$params->params->get('googleid').'/'.$params->params->get('googleid').'/posts?hl=vi" target="_blank"> '.$params->params->get('googleid').'</a>';
			if(!empty($data['email'])){	
				$checked = 1;
				require_once(dirname(__FILE__).'/element/Abstract.php');
				include_once(dirname(__FILE__).'/element/Googleplus.php');
				
				$googleplus = new SocialAutoPoster_Googleplus(array(
						'email' => $params->params->get('mail'),
						'pass' => $params->params->get('pass'),
				));
				$googleplus->begin($params->params->get('googleid'));			
				$googleplus->postToWall($post);			
				$googleplus->end();				
				
				if($googleplus->isHaveErrors()){
					$publish =0;
					$log .= implode($googleplus->getErrors());
				}else{
					$log .=JText::sprintf('PUBLISHED_GOOGLE_PAGE_SENDMESSAGE_SUCCESSFULL',
						$page
					);				
				}
			}
			$message['log']=$log;
			$message['publish']=$publish;
			$message['checked']=$checked;
			$message['type'] ='googlepage';
			return $message;
		}
		
}

