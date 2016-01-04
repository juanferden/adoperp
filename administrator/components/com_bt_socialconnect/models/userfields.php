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

class Bt_SocialconnectModelUserfields extends JModelList
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
				'id', 'u.id',
				'name', 'u.name',
				'alias', 'u.alias',		
				'type', 'u.type',						
				'default_value', 'u.default_value',	
				'ordering','u.ordering',
				'description', 'u.description',
				'published', 'u.published',		
				
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
		
		$published= $this->getUserStateFromRequest($this->context.'.filter.published', 'filter_published');
		$this->setState('filter.published', $published);
		
		$fieldtype = $this->getUserStateFromRequest($this->context.'.filter.fieldtype', 'filter_fieldtype', '');
		$this->setState('filter.fieldtype', $fieldtype);

		$access = $this->getUserStateFromRequest($this->context.'.filter.access', 'filter_access', 0, 'int');
		$this->setState('filter.access', $access);		

		$level = $this->getUserStateFromRequest($this->context.'.filter.level', 'filter_level', 0, 'int');
		$this->setState('filter.level', $level);

		$language = $this->getUserStateFromRequest($this->context.'.filter.language', 'filter_language', '');
		$this->setState('filter.language', $language);

		// List state information.
		parent::populateState('u.ordering', 'asc');
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
		
		$query->select("u.*");
		$query->from("#__bt_user_fields AS u");
		
		$search = $this->getState('filter.search');			
		if (!empty($search)) {
		
			if (stripos($search, 'id:') === 0) {
				$query->where('u.id = '.(int) substr($search, 3));
			}
			else {
				$search = $db->Quote('%'.$db->escape($search, true).'%');
				$query->where('(u.name LIKE '.$search.' OR u.type LIKE '.$search.')');
			}			
		}
		$fieldtype = $this->getState('filter.fieldtype');
		if(!empty($fieldtype)){		
			
			$query->where(' u.type ="'.$fieldtype.'"');
		
		}
		// Filter by published state
		$published = $this->getState('filter.published');
		if (is_numeric($published)) {
			$query->where('u.published = '.(int) $published);
		}
		// Add the list ordering clause.
		$orderCol	= $this->state->get('list.ordering');
		$orderDirn	= $this->state->get('list.direction');
		if ($orderCol == 'u.ordering') {
			$orderCol = 'u.ordering';
		}
		$query->order($db->escape($orderCol.' '.$orderDirn));
		$query->order($db->escape($orderCol.' '.$orderDirn));
		return $query;
	}
}
