<?php
/**
 * @package 	bt_socialconnect - BT Social Connect Component
 * @version		1.0.0
 * @created		October 2013
 * @author		BowThemes
 * @email		support@bowthems.com
 * @website		http://bowthemes.com
 * @support		Forum - http://bowthemes.com/forum/
 * @copyright	Copyright (C) 2013 Bowthemes. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
 
defined('_JEXEC') or die;

class Bt_SocialconnectViewBoxes extends JViewLegacy
{
	
	function display($tpl = null)	{					
		$option = JRequest::getCmd('option');			
		$view = JRequest::getCmd('view');	
		$mainframe = JFactory::getApplication();
		$filter_conponent=($mainframe->getUserStateFromRequest($option.$view.'filter_component', 'filter_component', 'content', 'string'));	
		$this->assignRef('filter_conponent', $filter_conponent);		
		parent::display($tpl);
	}
	
	static function checkPlugin($plugin){
		$db = JFactory::getDbo();
		$db->setQuery('SELECT enabled FROM #__extensions WHERE element ="'.$plugin.'"');	
		$is_enabled = $db->loadResult();
		return $is_enabled;
	}	
	
}
