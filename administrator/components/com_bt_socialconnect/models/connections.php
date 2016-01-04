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
/**
 * Connections Model
 */
class Bt_SocialconnectModelConnections extends JModelList
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
				'name','u.name',
				'id', 'c.id',
				'user_id', 'c.user_id',								
				'social_id', 'c.social_id',						
				'social_type', 'c.social_type',
				'access_token', 'c.access_token',			
				'params', 'c.params',
				'enabled_publishing', 'c.enabled_publishing',
				'created', 'c.created_time',
				'updated_time', 'c.updated_time',
			);
		}

		parent::__construct($config);
	}
	
	/**
	 * Method to auto-populate the model state.
	 *
	 * Note. Calling getState in this method will result in recursion.
	 *
	 * @return	void
	 * @since	1.6
	 */
	
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
		
		$socialtype = $this->getUserStateFromRequest($this->context.'.filter.socialtype', 'filter_socialtype');
		$this->setState('filter.socialtype', $socialtype);

		$access = $this->getUserStateFromRequest($this->context.'.filter.access', 'filter_access', 0, 'int');
		$this->setState('filter.access', $access);
		

		$level = $this->getUserStateFromRequest($this->context.'.filter.level', 'filter_level', 0, 'int');
		$this->setState('filter.level', $level);


		$language = $this->getUserStateFromRequest($this->context.'.filter.language', 'filter_language', '');
		$this->setState('filter.language', $language);

		// List state information.
		parent::populateState('c.user_id', 'asc');
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
		// Create a new query object.
		$db		= $this->getDbo();
		$query	= $db->getQuery(true);
		// Select fields
		$query->select("c.*");
		$query->from("#__bt_connections AS c");
		
		$query->select('u.name');
		$query->join("LEFT","#__users AS u ON u.id = c.user_id");
		
		$search = $this->getState('filter.search');
		$socialtype = $this->getState('filter.socialtype');
		// Filter by search state
		if (!empty($search)) {
			if (stripos($search, 'socialId:') === 0) {
				$query->where('c.social_id = '.(int) substr($search, 9));
			}
			else{
				$search = $db->Quote('%'.$db->escape($search, true).'%');
				$query->where('(u.name LIKE '.$search.' OR u.username LIKE '.$search.')');
			}			
		}
		// Filter by social type state
		if($socialtype)
		{			
			$social = $db->Quote('%'.$db->escape($socialtype, true).'%');				
			$query->where('c.social_type LIKE '.$social);		
		}
		// Add the list ordering clause.
		$orderCol	= $this->state->get('list.ordering','c.user_id');		
		$orderDirn	= $this->state->get('list.direction','asc');
		$query->order($db->escape($orderCol.' '.$orderDirn));
		return $query;
	}
}
