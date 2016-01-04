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

class Bt_SocialconnectModelChannels extends JModelList
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
				'id', 's.id',
				'title', 's.title',
				'alias', 's.alias',		
				'type', 's.type',						
				'author', 's.author',			
				'version', 's.version',
				'description', 's.description',
				'params', 's.params',	
				'published', 's.published',
				'ordering', 's.ordering',
				'created', 's.created',
				
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

		$published= $this->getUserStateFromRequest($this->context.'.filter.published', 'filter_published');
		$this->setState('filter.published', $published);
		
		$publishtype = $this->getUserStateFromRequest($this->context.'.filter.publishtype', 'filter_publishtype');
		$this->setState('filter.publishtype', $publishtype);

		$access = $this->getUserStateFromRequest($this->context.'.filter.access', 'filter_access', 0, 'int');
		$this->setState('filter.access', $access);		

		$level = $this->getUserStateFromRequest($this->context.'.filter.level', 'filter_level', 0, 'int');
		$this->setState('filter.level', $level);

		$language = $this->getUserStateFromRequest($this->context.'.filter.language', 'filter_language', '');
		$this->setState('filter.language', $language);

		// List state information.
		parent::populateState('s.title', 'asc');
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
	//Get all folder in directory
	public function getFolder()
	{	
		$directory = "components/com_bt_socialconnect/publishes/";		
		$files = glob($directory."*");			
		$dir = array();
		foreach($files as $file)
		{		
			 if(is_dir($file))
			 {
				$tmp = new stdClass();
				$tmp->wgtype = str_replace('components/com_bt_socialconnect/publishes/', '', $file);
				$dir[] = $tmp;
			 }
		 }			
		return $dir;
	}
	//Get value from xml file in folder 
	public function getItemFolder()
	{
		
		$items = self::getFolder();		
		$client = JApplicationHelper::getClientInfo($this->getState('filter.client_id', 0));
		$lang	= JFactory::getLanguage();
		
		foreach ($items as &$item) {			
			$path = JPath::clean($client->path.'/administrator/components/com_bt_socialconnect/publishes/'.$item->wgtype.'/'.$item->wgtype.'.xml');
			$item->type = $item->wgtype;
			
			if (file_exists($path)) {
				$item->xml = simplexml_load_file($path);
			} else {
				$item->xml = null;
			}			
			$item->title	= JText::_($item->xml->name);		
			
			if (isset($item->xml) && $text = trim($item->xml->description)) {
				$item->desc = JText::_($text);
			}
			else {
				$item->desc = JText::_('COM_MODULES_NODESCRIPTION');
			}
		}
		$items = JArrayHelper::sortObjects($items, 'wgtype', 1, true, $lang->getLocale());	
		
		return $items;
		
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
		
		$query->select("s.*");
		$query->from("#__bt_channels AS s");
		
		$search = $this->getState('filter.search');			
		if (!empty($search)) {
		
			if (stripos($search, 'id:') === 0) {
				$query->where('s.id = '.(int) substr($search, 3));
			}
			else {
				$search = $db->Quote('%'.$db->escape($search, true).'%');
				$query->where('(s.title LIKE '.$search.' OR s.type LIKE '.$search.')');
			}			
		}
		
		// Filter by published state
		$published = $this->getState('filter.published');
		if (is_numeric($published)) {
			$query->where('s.published = '.(int) $published);
		}
		// Filter by publishtype.
		$publishtype = $this->getState('filter.publishtype');	
		
		if (!empty($publishtype)) {
			$query->where('s.type = "'.$publishtype.'"');
		}
		// Add the list ordering clause.
		$orderCol	= $this->state->get('list.ordering');
		$orderDirn	= $this->state->get('list.direction');
		if ($orderCol == 's.ordering') {
			$orderCol = 's.ordering';
		}
		$query->order($db->escape($orderCol.' '.$orderDirn));
		$query->order($db->escape($orderCol.' '.$orderDirn));
		return $query;
	}
}
