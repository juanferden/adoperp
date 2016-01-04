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
jimport('joomla.application.component.view');

class Bt_SocialconnectViewMessage extends JViewLegacy
{
	protected $form;
	protected $item;
	protected $state;
	public function display($tpl = null)
	{
		
		$this->form	= $this->get('Form');
		$this->item	= $this->get('Item');
	
		$this->state	= $this->get('State');
		
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}

		$this->addToolbar();
		parent::display($tpl);
		$this->setDocument();
	}

	protected function addToolbar()
	{
		$jinput = JFactory::getApplication()->input;		
		$jinput->set('hidemainmenu', true);
		$layout = $jinput->get('layout','','cmd');
		$user		= JFactory::getUser();
		$userId		= $user->get('id');
		$isNew		= ($this->item->id == 0);		
		$canDo		= Bt_SocialconnectAdminHelper::getActions($this->state->get('filter.category_id'), $this->item->id);
		JToolBarHelper::title($isNew ? JText::_('COM_BT_SOCIALCONNECT_MESSAGES_NEW') : JText::_('COM_BT_SOCIALCONNECT_MESSAGE_EDIT'), 'socialconnect-add.png');		
			if ($canDo->get('core.create')) {
				JToolBarHelper::custom('message.submitnow', 'submit.png', 'submit_f2.png', 'COM_BT_SOCIALCONNECT_SUBMIT_NOW', false);
				JToolBarHelper::custom('message.addtoqueue', 'addtoqueue.png', 'addtoqueue_f2.png', 'COM_BT_SOCIALCONNECT_ADDTOQUEUE', false);				
			}	
			if ($canDo->get('core.edit') || ($canDo->get('core.edit.own') && $this->item->created_by == $userId)) {
				JToolBarHelper::cancel('message.cancel');					
			}		


		JToolBarHelper::divider();		
	}
	
	protected function setDocument()
	{
		$isNew = ($this->item->id < 1);
		$document = JFactory::getDocument();
		$document->setTitle($isNew ? JText::_('COM_BT_BT_SOCIALCONNECT_MESSAGE_CREATING') : JText::_('COM_BT_BT_SOCIALCONNECT_MESSAGE_EDITTING'));		
	}
}
