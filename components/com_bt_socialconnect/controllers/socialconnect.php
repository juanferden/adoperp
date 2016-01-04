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
 
defined('_JEXEC') or die;

//require_once JPATH_COMPONENT.'/controller.php';


class Bt_SocialconnectControllerSocialconnect extends JControllerLegacy
{
	/*
	* Create link to connect social 
	*/
	static function getlink($social)
	{	
		$params = JComponentHelper::getParams('com_bt_socialconnect');
		$callback_url = urlencode(JURI::base());
		switch($social){		
		case'facebook':
			$app_id = trim($params->get('fbappId',''));
			$fbsecret = trim($params->get('fbsecret',''));
			
			$state ='sc_fb';
			if($app_id!='' && $fbsecret!=''){
				$dialog_url = "http://www.facebook.com/dialog/oauth?client_id=" 
	       				  . $app_id . "&amp;redirect_uri=" . $callback_url . "&amp;state="
	       				  . $state
	       				  ."&amp;display=popup&amp;scope=email,user_birthday,user_location,email,user_website,user_photos,user_hometown,user_about_me,publish_stream,offline_access";
			}else{
				$dialog_url= JURI::root().'index.php?option=com_bt_socialconnect&amp;view=connect&amp;tmpl=component';
			}
			break;
			
		case'twitter':
			$app_id = trim($params->get('ttappId',''));
			$ttsecret= trim($params->get('ttsecret'));
			if($app_id!='' && $ttsecret!=''  ){
				$dialog_url = $callback_url;
				if(substr_count($dialog_url,'?')){
					$dialog_url .= '&amp;code=1&amp;state=sc_tt';
				}else{
					$dialog_url .= '?code=1&amp;state=sc_tt';
				}
			}else{
				$dialog_url= JURI::root().'index.php?option=com_bt_socialconnect&amp;view=connect&amp;tmpl=component';
			}
			
			break;
			
		case'google':
			$app_id = trim($params->get('ggappId',''));
			$ggsecret = trim($params->get('ggsecret',''));			
			$state ='sc_gg';
			if($app_id!='' && $ggsecret!='' ){
				$dialog_url = 'https://accounts.google.com/o/oauth2/auth?client_id='
						  .$app_id.'&amp;redirect_uri='.$callback_url.'&amp;state='.$state
						  .'&amp;scope=https://www.googleapis.com/auth/userinfo.email'
						  .'+https://www.googleapis.com/auth/userinfo.profile'
						  .'&amp;response_type=code';
			}else{
				$dialog_url= JURI::root().'index.php?option=com_bt_socialconnect&amp;view=connect&amp;tmpl=component';
			}
		   break;
		   
		 case'linkedin':
			$app_id = trim($params->get('linkappId',''));
			$linksecret = trim($params->get('linksecret',''));
			$state ='sc_linkedin';
			$scope='r_fullprofile+r_emailaddress+r_network+rw_nus';
			if($app_id!='' && $linksecret!=''){
				$dialog_url = 'https://www.linkedin.com/uas/oauth2/authorization?response_type=code&amp;client_id='
							.$app_id.'&amp;scope='
							.$scope.'&amp;state='
							.$state.'&amp;redirect_uri='
							.$callback_url;
			}else{
				$dialog_url= JURI::root().'index.php?option=com_bt_socialconnect&amp;view=connect&amp;tmpl=component';
			}
			break;
		   }
		return $dialog_url;		
       
	}
	public function update(){
		
		$db = JFactory::getDbo();
		$jinput = JFactory::getApplication()->input;
		$messageId =$jinput->get('id', '', 'INT');
		$url =$jinput->get('url', '', 'STRING');
		if(isset($_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_REFERER']){
			$update_time =JFactory::getDate()->toSql();
			$query='UPDATE  #__bt_messages  SET	event= event + 1 WHERE id ='.$messageId;
			$db->setQuery($query);
			$db->query();
		}
		$this->setRedirect(JRoute::_($url, false));	
	}

	
}