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

class Bt_SocialconnectModelMessages extends JModelList
{
	/**
	 * Constructor.
	 *
	 * @param	array	An optional associative array of configuration settings.
	 * @see		JController
	 * @since	1.6
	 */
	public function __construct($config = array())
	{
		if (empty($config['filter_fields'])) {
			$config['filter_fields'] = array(
				'id', 'm.id',
				'createdby', 'm.createdby',								
				'type', 'm.type',
				'title', 'm.title',	
				'trigger', 'm.trigger',
				'published', 'm.published',			
				'log', 'm.log',
				'event', 'm.event',
				'sent_time', 'm.sent_time',
				'created_time', 'm.created_time',
			);
		}

		parent::__construct($config);
	}


	protected function populateState($ordering = null, $direction = null)
	{	
		// Initialise variables.
		$app = JFactory::getApplication();
		$session = JFactory::getSession();
		$jinput = new Jinput;
		
		// Adjust the context to support modal layouts.
		if ($layout = $jinput->get('layout')) {
			$this->context .= '.'.$layout;
		}	

		$search = $this->getUserStateFromRequest($this->context.'.filter.search', 'filter_search');
		$this->setState('filter.search', $search);
		
		$trigger = $this->getUserStateFromRequest($this->context.'.filter.trigger', 'filter_trigger');
		$this->setState('filter.trigger', $trigger);
		
		$socialtype = $this->getUserStateFromRequest($this->context.'.filter.socialtype', 'filter_socialtype');
		$this->setState('filter.socialtype', $socialtype);
		
		$socialpost = $this->getUserStateFromRequest($this->context.'.filter.socialpost', 'filter_socialpost');
		$this->setState('filter.socialpost', $socialpost);
		
		$published = $this->getUserStateFromRequest($this->context.'.filter.published', 'filter_published', '');
		$this->setState('filter.published', $published);

		$language = $this->getUserStateFromRequest($this->context.'.filter.language', 'filter_language', '');
		$this->setState('filter.language', $language);

		// List state information.
		parent::populateState('m.id', 'asc');
	}

	protected function getStoreId($id = '')
	{
		// Compile the store id.
		$id	.= ':'.$this->getState('filter.search');
		$id	.= ':'.$this->getState('filter.access');
		$id	.= ':'.$this->getState('filter.published');
		$id	.= ':'.$this->getState('filter.category_id');
		$id	.= ':'.$this->getState('filter.author_id');
		$id	.= ':'.$this->getState('filter.language');		

		return parent::getStoreId($id);
	}
	
	/**
	 * Method to build an SQL query to load the list data.
	 *
	 * @return	string	An SQL query
	 */
	 
	protected function getListQuery()
	{
	
		$db		= $this->getDbo();
		$query	= $db->getQuery(true);
		
		$query->select("m.*");
		$query->from("#__bt_messages AS m");					
		
		$search = $this->getState('filter.search');
		// Filter by search.
		if (!empty($search)) {
			if(stripos($search, 'ID:') === 0) {
				$search = $db->Quote('%'.$db->escape(substr($search, 3), true).'%');
				$query->where('(m.id = '.$search.')');
			}
			else{
				$search = $db->Quote('%'.$db->escape($search, true).'%');
				$query->where('(m.title LIKE '.$search.')');
			}
			
		}
		
		$trigger = $this->getState('filter.trigger');
		// Filter by trigger.
		if($trigger!=''){
			$query->where('(m.trigger ="'.$trigger.'")');
		}	
		
		// Filter by published state
		$published = $this->getState('filter.published');
		
		if (is_numeric($published)) {
			$query->where('m.published = ' . (int) $published);
		}
		elseif ($published === '') {
			$query->where('(m.published = 0 OR m.published = 1 OR m.published =2)');
		}
		
		$socialtype = $this->getState('filter.socialtype');
		if($socialtype!=''){
				$query->where('m.type ="'.$socialtype.'"');
		}
		
		$socialpost = $this->getState('filter.socialpost');
		if($socialpost!=''){
				$query->where('m.message_type ="'.$socialpost.'"');
		}
		// Add the list ordering clause.
		$orderCol	= $this->state->get('list.ordering','c.user_id');		
		$orderDirn	= $this->state->get('list.direction','asc');
		$query->order($db->escape($orderCol.' '.$orderDirn));
		return $query;
	}
	
	function getNameMessage($type,$id){
		$db = JFactory::getDbo ();	
		$newArray =array();
		$newArray['name']='';
		$newArray['link']='';
		switch($type){
			case'profile':
							
				$db->setQuery('SELECT `name` FROM #__users WHERE id ='.(int)$id);
				$result = $db->loadResult();
				$newArray['name'] =$result;
				$newArray['link'] ='index.php?option=com_bt_socialconnect&view=socialconnect&task=socialconnect.edit&id='.$id;
			break;
			case'system':
				$db->setQuery('SELECT `title` FROM #__bt_channels WHERE id ='.(int)$id);
				$result = $db->loadResult();
				$newArray['name'] =$result;
				$newArray['link'] ='index.php?option=com_bt_socialconnect&view=channel&task=channel.edit&id='.$id;
			break;
		}
		return $newArray;
	
	}
}
