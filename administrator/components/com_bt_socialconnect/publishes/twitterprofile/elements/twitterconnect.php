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
 
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport('joomla.html.html');
jimport('joomla.form.formfield');
JFormHelper::loadFieldClass('list');

class JFormFieldTwitterconnect  extends JFormFieldList
{
	protected $type = 'Twitterconnect';
	
	function getInput()
	{
			
		$params = JComponentHelper::getParams('com_bt_socialconnect');
		
		$appid= trim($params->get('ttappId'));
		$ttsecret= trim($params->get('ttsecret'));
		
		$html 	= '';
		$html .='
		<style>
		.btnload{
			background-color: #FFB004 !important;
			background-image: -moz-linear-gradient(center bottom , #FF9103 0%, #FFB004 100%) !important;
			border: 0.2px solid #FF9103 !important;
			color: #FFFFFF;
			cursor: pointer;
			display: inline;
			height: 25px;
			line-height: 25px;
			margin-left: 5px;		
		}
		</style>';
		
		$uri = JFactory::getURI ();
		$uri->setVar ( 'code', 1);
		$uri->setVar ( 'state', 'twitter');		
		
		$html .="
		<script>	
			function newPopup(pageURL, title,w,h){
				var left = (screen.width/2)-(w/2);
				var top = (screen.height/2)-(h/2);
				var popupWindow = window.open(pageURL,'connectingPopup','height='+h+',width='+w+',left='+left+',top='+top+',resizable=yes,scrollbars=yes,toolbar=no,menubar=no,location=no,directories=no,status=yes');
				
				}		
				
			function getlink(){	
				var apid ='".$appid."';									
				var client_secret ='".$ttsecret."';
				var link='';				
				if(apid.trim().length  != 0 && client_secret.trim().length !=0){
					link ='".$uri->toString ()."';
				}else{
					link='".JURI::root()."index.php?option=com_bt_socialconnect&view=connect&tmpl=component';
				}
				return link;
			} 			
		</script>";	
		$state = JRequest::getString('state');
		if(isset($state) && $state =='twitter'){		
		
			if(!class_exists('TwitterOAuth')){
						require_once(dirname(__FILE__).'/twitter/twitteroauth.php');	
				}
				$session = JFactory::getSession();
				$callback =JRequest::getString('callback');				
				if(empty($callback)){
					$connection = new TwitterOAuth($appid, $ttsecret);					
					$mainframe = JFactory::getApplication ();
					$uri->setVar ( 'callback', 1);
					$request_token = $connection->getRequestToken($uri->toString ());	
					$session->set('oauth_token',$request_token['oauth_token']);
					$session->set('oauth_token_secret',$request_token['oauth_token_secret']);
					
					switch ($connection->http_code) {
						  case 200:						  
							$url = $connection->getAuthorizeURL($request_token['oauth_token']);					
							$mainframe->redirect($url);
							break;							
						  default:							
							echo ('Could not connect to Twitter. Refresh the page or try again later.');
							exit;
						}
				}
				else{
					if(isset($_REQUEST['oauth_token']) && $session->get('oauth_token') !== $_REQUEST['oauth_token']) {
							$session->clear('oauth_token');
							$session->clear('oauth_token_secret');							
						}
						else{
							
							$connection = new TwitterOAuth($appid, $ttsecret, $session->get('oauth_token'), $session->get('oauth_token_secret'));
							
							$access_token = $connection->getAccessToken($_REQUEST['oauth_verifier']);							
							
							if (200 == $connection->http_code) {
								
								$user =  $connection->get('account/verify_credentials');								
								$user->access_token = serialize($access_token);								
								$data =self::prepareData($user);
								
								$html .='<script>											
											var appid ="'.$appid.'";
											var ttsecret ="'.$ttsecret.'";
											var access_token =\''.$user->access_token.'\';
											var uid ="'.$user->id.'";
											var uname ="'.$user->name.'";
											var data =\''.$data.'\';
											jQuery("#jform_params_app_appid",window.opener.document).val(appid);
											jQuery("#jform_params_app_secret",window.opener.document).val(ttsecret);
											jQuery("#jform_params_access_token",window.opener.document).val(access_token);
											jQuery("#jform_params_uid",window.opener.document).val(uid);
											jQuery("#jform_params_uname",window.opener.document).val(uname);
											window.opener.document.getElementById(\'groups\').innerHTML=(data);
											window.close();
										</script>';
								
							} else {							  
								echo ('Error:' . $connection->http_code);
								exit;
							}
						}
				
				
				}
		}
		if(!empty($this->value)){		
			
			$db 	= JFactory::getDBO();
			$id 	= JRequest::getVar('id');			
			$param_text = '';
			if ($id) {
				$sql 	= "SELECT params FROM `#__bt_channels`
							WHERE `id`=$id LIMIT 1";
				$db->setQuery($sql);
				$param_text 	= $db->loadResult();
			}
			
			$data= json_decode($param_text);				
			$value= (object) $this->value;
			
			$check='';				
				if(isset($value->checked)){
					$check="checked";
				}
				
			$html .="<div id=\"groups\">";
				$html .= '<input type="checkbox" '.$check.' value="'.$value->id.'" name="group[checked]"/> ';
				$html .="<input type='hidden'    value=\"".$value->id."\" name='group[id] '/>";			
				$html .="<input type='hidden'   value=\"".$value->name."\" name='group[name]'/>";
				$html .="<input type='hidden'   value=\"".$value->screen_name."\" name='group[screen_name]'/>";
				$html .="<input type='hidden'   value=\"".$value->image."\" name='group[image]'/>";
				$html .='<div style="height:50px;"><a href="https://twitter.com/'.$data->groupid->screen_name.'" target="_blank"><img style="width:50px; height:50px;float:left;margin:5px" src="'.$data->groupid->image.'"></a><br/>';			
				$html .='<a href="https://twitter.com/'.$data->groupid->screen_name.'" target="_blank" >'.$data->groupid->name.'</a></div>';
				$html .='<br/>';				
			$html .="</div>";
		}
		
		$html .='<div id="groups"></div>';
		$html .= '<input class="btnload"  type="button" value="'.JText::_("PUBLISHED_TWITTER_PROFILE").'" onclick="JavaScript:newPopup(getlink(),\'Connecting to Twitter ...\',500,450);"/>';
	
		return $html;
	}
	public function prepareData($user){
		
		$html ='';	
		$html .= '<input type="checkbox" value="'.$user->id.'" name="group[checked]"/> ';
		$html .='<div style="height:50px;"><a href="https://twitter.com/'.$user->screen_name.'" target="_blank"><img style="width:50px; height:50px;float:left;margin:5px" src="'.$user->profile_image_url.'"></a><br/>';
		$html .='<a href="https://twitter.com/'.$user->screen_name.'" target="_blank" >'.$user->name.'</a></div>';
		$html .='<input type="hidden" value="'.$user->id.'"" name="group[id]"/>';			
		$html .='<input type="hidden" value="'.$user->name.'"" name="group[name]"/>';			
		$html .='<input type="hidden" value="'.$user->screen_name.'"" name="group[screen_name]"/>';			
		$html .='<input type="hidden" value="'.$user->profile_image_url.'"" name="group[image]"/><br/>';			
		return $html;
	}
}