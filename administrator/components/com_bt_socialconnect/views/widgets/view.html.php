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

class Bt_SocialconnectViewWidgets extends JViewLegacy
{
	protected $items;
	protected $pagination;
	protected $state;
	protected $folder;	
	protected $legacy;

	public function display($tpl = null)
	{
		$this->items		= $this->get('Items');
		$this->folder = $this->get('ItemFolder');		
		$this->pagination	= $this->get('Pagination');
		$this->state		= $this->get('State');		
		$this->legacy = Bt_SocialconnectLegacyHelper::isLegacy();
		$this->wgtype = $this->getWidgettype();
		$this->publishOption = $this->publishedOptions();
		
		$document = JFactory::getDocument();
		$document->addStyleSheet(JPATH_COMPONENT_ADMINISTRATOR."/models/fields/assets/css/obsocialsubmit.css");
		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}			
		if(JFactory::getApplication()->isAdmin()){
			Bt_SocialconnectAdminHelper::addSubmenu('widgets');
			$this->addToolbar();		
		}	
		parent::display($tpl);
		
		$this->setDocument();
	}
	
	protected function addToolbar()
	{
		$canDo	= Bt_SocialconnectAdminHelper::getActions($this->state->get('filter.category_id'));
		$user		= JFactory::getUser();
		JToolBarHelper::title(JText::_('COM_BT_SOCIALCONNECT_WIDGETS_MANAGER_TITLE'), 'widgeteven.png');
		$bar =  JToolBar::getInstance();
		//JToolBarHelper::custom('installext', 'install', '', 'Install', false);
		//JToolBarHelper::custom('uninstallext', 'uninstall', '', 'Uninstall', false);
		if ($canDo->get('core.create')) {			
			$bar = JToolBar::getInstance('toolbar');
			$bar->appendButton('Popup', 'new', 'JTOOLBAR_NEW', 'index.php?option=com_bt_socialconnect&view=select&amp;tmpl=component', 650, 250);
		}
		if ($canDo->get('core.edit.state')) {
			JToolBarHelper::divider();
			JToolBarHelper::publish('widgets.publish', 'JTOOLBAR_PUBLISH', true);
			JToolBarHelper::unpublish('widgets.unpublish', 'JTOOLBAR_UNPUBLISH', true);
			JToolBarHelper::divider();			
		}
		if (($canDo->get('core.edit')) || ($canDo->get('core.edit.own'))) {
			JToolBarHelper::editList('widget.edit');
		}

		if ($canDo->get('core.delete')) {
			JToolBarHelper::deleteList('', 'widgets.delete');
			JToolBarHelper::divider();
		}
		

		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_bt_socialconnect');
			JToolBarHelper::divider();
		}
		
	}
	
	  protected function setDocument() {
        $document = JFactory::getDocument();
        $document->setTitle(JText::_('COM_BT_SOCIALCONNECT_WIDGETS_TITLE_MANAGER_TITLE'));
    }	
	protected function getSortFields() {
        return array(
            'w.id' => JText::_('JGRID_HEADING_ID'),
            'w.ordering' => JText::_('JGRID_HEADING_ORDERING'),
            'w.published' => JText::_('JSTATUS'),
        );
    }
	
	public static function getWidgettype(){
		// Build the filter options.
		$db = JFactory::getDbo();
		$db->setQuery(
			'SELECT DISTINCT w.wgtype as value,w.wgtype AS text' .
			' FROM #__bt_widgets AS w' 			
		);
		$options = $db->loadObjectList();
		foreach ($options as &$option)
		{
			$option->text = ' '.$option->text;
		}
		
		return $options;
	
	}
	public static function publishedOptions() {
        // Build the filter options.
        $options = array();
        $options[] = JHtml::_('select.option', '1', JText::_('JPUBLISHED'));
        $options[] = JHtml::_('select.option', '0', JText::_('JUNPUBLISHED'));
        return $options;
    }
}
