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

jimport('joomla.application.component.modeladmin');


require_once JPATH_COMPONENT_ADMINISTRATOR.'/helpers/helper.php';
require_once(JPATH_SITE . '/components/com_bt_socialconnect/helpers/html/socialpost.php');	

class Bt_SocialconnectModelMessage extends JModelAdmin
{
	protected $text_prefix = 'COM_BT_SOCIALCONNECT';	
	protected function canDelete($record)
   {
      if (!empty($record->id))
         return parent::canDelete($record);
   }

	
	protected function canEditState($record)
	{
		$user = JFactory::getUser();

		// Check for existing article.
		if (!empty($record->id)) {
			return $user->authorise('core.edit.state', 'com_bt_socialconnect.message.'.(int) $record->id);
		}
		
		// Default to component settings if neither article nor category known.
		else {
			return parent::canEditState('com_bt_socialconnect');
		}
	}
	
	public function getTable($type = 'Message', $prefix = 'Bt_SocialconnectTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}
	
	
	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_bt_socialconnect.message', 'message', array('control' => 'jform', 'load_data' => $loadData));
		if (empty($form)) {
			return false;
		}				

		return $form;
	}
	
	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_bt_socialconnect.edit.message.data', array());

		if (empty($data)) {
			$data = $this->getItem();
			
		}		

		return $data;
	}
	
	static function findMessageOld($id, $array)
	{
		foreach ($array as $key => $item)
		{
			if ($item->id == $id)
			{
				return $key;
			}
		}
		return -1;
	}
	
	static function MessageIds(){
		$db = JFactory::getDbo();
		$db->setQuery('Select id  from #__bt_messages ');
		return $db->loadObjectList();
	}
	
	static  function getItemsObject($id){	
		$dbo = JFactory::getDBO();
		$query = 'SELECT m.params,m.scron,m.message_type FROM #__bt_messages AS m WHERE   m.id ="'.$id.'"';		
		$dbo->setQuery($query);
		$items = $dbo->loadObject();
		return $items;
	}
	public static function checkClass($name){	
		$dbo = JFactory::getDBO();
		$query = 'SELECT * FROM #__bt_channels WHERE  published =1 AND alias ="'.$name.'"';		
		$dbo->setQuery($query);
		$items = $dbo->loadResult();
		return $items;
	}
	
	public  function save($data){	
					
		$dispatcher = JDispatcher::getInstance();		
		$table		= $this->getTable();
		$user = JFactory::getUser();	
		$schedule ='';
		$pk			= (!empty($data['id'])) ? $data['id'] : (int) $this->getState('message.id');	
		$isNew		= true;	
		$db =  $this->getDbo();
		
		if(isset($data['schedule'])) $schedule = serialize($data['schedule']);		
		
		$Idmessage =self::MessageIds();		
		$IdOld = self::findMessageOld($data['id'], $Idmessage);	
	
		if ($IdOld >= 0)
		{			
			if($data['published']==1){
				
				$items = self::getItemsObject($data['id']);
			//Check is publish content
				if(!empty($items->params)){
					$available= json_decode($items->params);
					$query ='SELECT count('.$available->tb_id.') FROM '.$available->table.' WHERE '.$available->published.' AND '.$available->tb_id.'='.$available->id;		
					$db->setQuery($query);		
					$iSpublish =$db->loadResult();
				}else{
					$iSpublish =1;
				}
				//end
				$type =$items->message_type;
				$item = (object)unserialize($items->scron);
				
				$attachment = $item->attachment;		
				switch($type){
					case'profile':					
						require_once(JPATH_SITE . '/components/com_bt_socialconnect/helpers/html/factory.php');	
						if($iSpublish == 1){
							switch($item->alias){
								case'facebook':						
									$facebook_id = $attachment['item']->social_id;
									$url = "https://graph.facebook.com/$facebook_id/feed";
									$post =JHtmlBt_Socialpost::socialPost($item->alias,$attachment['attachment'], $url ,$item->name,$facebook_id);								
									break;
							
								case'twitter':
									if(!class_exists('TwitterOAuth')){
											require_once(JPATH_SITE . '/components/com_bt_socialconnect/helpers/html/twitter/twitteroauth.php');	
									}
									$twitter =unserialize($attachment['item']->access_token);						
									$connection = new TwitterOAuth(trim($params->get('ttappId','')), trim($params->get('ttsecret','')), $twitter['oauth_token'], $twitter['oauth_token_secret']);
									$message =	$attachment['attachment'];
															
									//Share link in twitter
									$parameters = array('status' => $message);
									$status = $connection->post('statuses/update', $parameters);
										if(isset($status->errors)){																		
											$post['log'] =$status->errors[0]->message;
											$post['publish'] =0;
											
										}else{																			
											$post['log'] = JText::_('COM_BT_SOCIALCONNECT_SUBMIITED_SUCCESSFULL');
											$post['publish'] =1;
										}	
									break;
								
								case'linkedin':							
									$response = JHtmlBt_Socialpost::fetch($attachment['item']->access_token, $attachment['attachment']);							
									$post = JHtmlBt_Socialpost::socialPost($item->alias,$response['body'], $response['url'] ,$item->name, $attachment['item']->social_id);
									
									break;
							
							
							}
						}else{						
							$post['log']= JText::_('COM_BT_SOCIALCONNECT_ITEM_POST_UNPUBLISH');
							$post['publish'] =0;
						}
						break;
					case'system':
						require_once(JPATH_ADMINISTRATOR.'/components/com_bt_socialconnect/publishes/btpublishes.php');
						if($iSpublish == 1){
							$name = $item->name;
							if(self::checkClass($item->alias)){
								$publishes = new BTPublishes($item->alias,$db);
								$post = $name::postMessage($publishes,$item->attachment);							
							   
							}else{
								
								$post['log'] = JText::_('COM_BT_SOCIALCONNECT_CHANNEL_UNPUBLISH');
								$post['publish'] =0;
							}
						}
						else{					
							$post['log'] = JText::_('COM_BT_SOCIALCONNECT_ITEM_POST_UNPUBLISH');
							$post['publish'] =0;
						}
						break;
					
				}		
				
				if(isset($post)){
					if(!$db->connected()){
						$db = BTJFactory::createDbo();
					}
					$update_time = JFactory::getDate()->toSql();							
					$query='UPDATE  #__bt_messages  SET	published= \''.$post['publish'] .'\',schedule = \''.$db->escape($schedule).'\',sent_time= \''.$update_time.'\',log = \''.$post['log'] .'\' WHERE id ='.$data['id'];
					$db->setQuery($query);
					$db->query();
					return $post;
				}
				
			}
			else{
			$query='UPDATE  #__bt_messages  SET	published= \''.$db->escape($data['published']).'\' ,schedule = \''.$db->escape($schedule).'\' WHERE id ='.(int)$data['id'];
				$db->setQuery($query);
				$db->query();
		
			}
			
			
			$this->setState('message.id', $data['id']);	
		}
		else{
			$params_scoialpublish = $data['channel'];
			//Prepare data
			$params = JComponentHelper::getParams('com_bt_socialconnect');
			$trigger ='Custom Content';
			$title = $data ['title'];
			$message = $data['message'];
			$link = JHtmlBt_Socialpost::getcaseshortlink($data['url']);
			$description=	$data['fulltext'];
			$message_type='system';
			
			if(!empty($data['image'])){
				$picture = JURI::root().$data['image'];
			}else{
				$picture ='';
			}
		
			if($params->get('cropthumb')){
				$saveDir =JPATH_SITE .'/images/bt_socialconnect/';	
				JHtmlBt_Socialpost::createFolder($saveDir);		
				$images_path = $saveDir .'thumb/';	
				JHtmlBt_Socialpost::createFolder($images_path);				
				if($picture){										
						$cropimage =JHtmlBt_Socialpost::cropimage($picture,$images_path,$params);
						$picture = JURI::root().'images/bt_socialconnect/thumb/'.$cropimage;
				}
			
			}
			$created_time = JFactory::getDate()->toSql();	
		//NNONO
			require_once(JPATH_SITE . '/components/com_bt_socialconnect/helpers/html/factory.php');	
			require_once(JPATH_ADMINISTRATOR.'/components/com_bt_socialconnect/publishes/btpublishes.php');
			//END
			$result =JHtmlBt_Socialpost::getpublish($params_scoialpublish);	
			foreach ($result AS $key=>$item){		
				$publishes = new BTPublishes($item->alias,$db);								
				$name =  $publishes->type;
				$access_token = $publishes->params->get('access_token');
				//Check facebookname post message
				if($publishes->params->get('uname')){
					$uname = $publishes->params->get('uname');							
				}else{
					$uname = $user->name;
				}
				//Check facebook id
				$uid = $publishes->params->get('uid');
				$getuser = JHtmlBt_Socialpost::getUser($uid);
				if(empty($getuser)){
					$userpost = $user->name;
				}else{
					$userpost =	$getuser;
				}				
										
				//Set content to post
					$token = $access_token;						
				//end 							
				//Set attachment default 
				$attachment= self::setDataSocial('',$message,$title,$link,$description,$picture);																			
				
				$urlprocess =self::processAttachment($userpost,$item->type,$title,$data['url'],$attachment,$trigger,$created_time,$params,$data['title'],$message,$link,$item->id,$message_type,$db);								
				$attachment =self::setDataSocial($token,$urlprocess['message'],$title,$urlprocess['link'],$description,$picture);
				//Set Cronjob for all site to renew post						
				$seralizedCron = self::setDataOfline('system',$item->alias,$name,$attachment);							
					
				if($data['published']==1){
					$result = $name::postMessage($publishes,$attachment);
					if(!$db->connected()){
						$db = BTJFactory::createDbo();
					}
					if($result['checked'] == 1){														
						$update_time =JFactory::getDate()->toSql();
						$query='UPDATE  #__bt_messages  SET	published= \''.$db->escape($result['publish']).'\',schedule = \''.$db->escape($schedule).'\',log = \''.$db->escape($result['log']).'\',scron= \''.$seralizedCron.'\',sent_time= \''.$update_time.'\' WHERE id ='.(int)$urlprocess['id'];
						$db->setQuery($query);
						$db->query();
					}
				}
				else{
					$query='UPDATE  #__bt_messages  SET	published= \''.$db->escape($data['published']).'\',schedule = \''.$db->escape($schedule).'\',scron= \''.$seralizedCron.'\' WHERE id ='.(int)$urlprocess['id'];
					$db->setQuery($query);
					$db->query();
				}
				
				$this->setState('message.id', $urlprocess['id']);		
			}
		}
		return true;
	}	
	
	
	public function processAttachment($name,$sociatype,$title,$link_article,$attachment,$trigger,$created_time,$params,$template,$message,$link,$chanel_id,$message_type,$db){	
		$newArray =array();		
		$publish = 2;		
		$schedule = '';
		$sent_time='';
		$log = 'Waiting to process in queue';							
		$query='INSERT INTO  #__bt_messages (`createdby`,`type`,`title`,`url`,`message`,`trigger`,`published`,`log`,`event`,`created_time`,`chanel_id`,`message_type`) VALUES(\'' . $name . '\',\''.$sociatype.'\',\'' .$db->escape($title) . '\',\'' .$db->escape($link_article). '\',\'' .$db->escape(JHtmlBt_Socialpost::processmessage($attachment)). '\', \''.$trigger.'\', \''.$publish.'\', \''.$log.'\',\''.'0'.'\',\''.$created_time.'\',\''.$chanel_id.'\',\''.$message_type.'\')';
		$db->setQuery($query);	
		$db->query();
		$id = $db->insertid();				
		//Setlink 
		$count_post =$params->get('count_post',1);
			//Set link	
			if($count_post == 1){
				$relink = JURI::root().'index.php?option=com_bt_socialconnect&task=socialconnect.update&id='.$id.'&url='.urlencode($link);										
				$link_redirect = JHtmlBt_Socialpost::getcaseshortlink($relink);				
			}else{
				$link_redirect  = $link;									
			}							
		$newArray['link'] =$link_redirect;
		$newArray['message'] =$message;
		$newArray ['id'] =$id;
		return $newArray;
		
	}
	
	public function setDataSocial($token,$message,$title,$link,$description,$picture){
		$data = array(
						'access_token' => $token,
						'message' => $message,
						'name' => $title,
						'link' => $link,
						'description' => $description,
						'picture'=>$picture,	
						);
		return $data;
	}
	
	public function setDataOfline($type,$alias,$name,$attachment){
		$cron = array();
		$cron['type'] = $type;
		$cron['alias'] = $alias;
		$cron['name'] = $name;															
		$cron['attachment'] = $attachment;		
		return serialize($cron);
	
	}

}
