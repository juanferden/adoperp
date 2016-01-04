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

jimport('joomla.application.component.modellist');


require_once JPATH_COMPONENT_ADMINISTRATOR.'/helpers/helper.php';


class Bt_SocialconnectModelStatistics extends JModelList

{
	protected $text_prefix = 'COM_BT_SOCIALCONNECT';	
	
	/* Get all user number  */
	public function getNumberuser()
	{
		$db = $this->getDbo();
		$db->setQuery('SELECT COUNT(u.id)  FROM #__users AS u WHERE u.id NOT IN (SELECT c.user_id FROM #__bt_connections AS c) ');
		return $db->loadresult();		
	}	
	/* Get user number connect to social network */
	
	public function getStatistic($item=null){		
		$db = JFactory::getDBO();
		$db->setQuery('Select DISTINCT  COUNT(user_id)  from #__bt_connections WHERE social_type ="'.$item.'"');		
		return $db->loadresult();
	}	
	
	public function getMessageState($social ,$published){
		$db = JFactory::getDbo();
		$socialname = $db->Quote('%'.$social.'%');		
		$query='SELECT  COUNT(m.id) FROM  #__bt_messages  AS m WHERE m.type LIKE '.$socialname.' AND m.published ='.$published;	
		$db->setQuery($query);
		$db->query();
		return $db->loadResult();
	}
	
	public function getWidgets(){		
		$db = JFactory::getDBO();
		$db->setQuery('Select DISTINCT  wgtype  from #__bt_widgets');		
		return $db->loadObjectList();
	}
	
	public function getWgname($item=null){		
		$db = JFactory::getDBO();
		$array = array();
		$db->setQuery('Select title  from #__bt_widgets WHERE wgtype="'.$item.'"');		
		$result=  $db->loadObjectList();
		foreach($result AS $key=>$value){
			$array[]=$value->title;
		}		
		return $array;
	}
	
	//Channels get 
	public function getChannels(){		
		$db = JFactory::getDBO();
		$db->setQuery('Select DISTINCT  type  from #__bt_channels');		
		return $db->loadObjectList();
	}
	public function getNameChannel($item=null){		
			$db = JFactory::getDBO();
			$array = array();
			$db->setQuery('Select title  from #__bt_channels WHERE type="'.$item.'"');		
			$result=  $db->loadObjectList();
			foreach($result AS $key=>$value){
				$array[]=$value->title;
			}		
			return $array;
	}
	public function getPostmessage($item){		
		$db = JFactory::getDBO();
		$socialname = $db->Quote('%'.$item.'%');
		$db->setQuery('Select  COUNT(id)  from #__bt_messages WHERE type LIKE '.$socialname);	
		$numb =$db->loadresult();
		return $numb;
		
		
	}
	public function getCountclick($social){
		$db = JFactory::getDbo();
		$socialname = $db->Quote('%'.$social.'%');		
		$query='SELECT  SUM(m.event) FROM  #__bt_messages  AS m WHERE m.type LIKE '.$socialname;		
		$db->setQuery($query);
		$db->query();
		return $db->loadResult();
	}

}
