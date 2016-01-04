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
// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.controllerform');

class Bt_SocialconnectControllerChannel extends JControllerForm
{

	function __construct($config = array())
	{
	
		parent::__construct($config);
	}	
	
	protected function allowAdd($data = array())
	{
		$jinput = JFactory::getApplication()->input;
		$user = JFactory::getUser();
		$categoryId = JArrayHelper::getValue($data, 'catid',(int)$jinput->get('filter_category_id',null,'int'), 'int');
		$allow = null;

		if ($categoryId)
		{			
			$allow = $user->authorise('core.create', 'com_bt_socialconnect.category.' . $categoryId);
		}

		if ($allow === null)
		{			
			return parent::allowAdd();
		}
		else
		{
			return $allow;
		}
	}
	
	protected function allowEdit($data = array(), $key = 'id')
	{	
		$recordId = (int) isset($data[$key]) ? $data[$key] : 0;
		$user = JFactory::getUser();
		$userId = $user->get('id');

		
		if ($user->authorise('core.edit', 'com_bt_socialconnect.channel.' . $recordId))
		{
			return true;
		}
		if ($user->authorise('core.edit.own', 'com_bt_socialconnect.channel.' . $recordId))
		{			
			$ownerId = (int) isset($data['created_by']) ? $data['created_by'] : 0;
			if (empty($ownerId) && $recordId)
			{
				
				$record = $this->getModel()->getItem($recordId);

				if (empty($record))
				{
					return false;
				}
				$ownerId = $record->created_by;
			}

		
			if ($ownerId == $userId)
			{
				return true;
			}
		}
		
		return parent::allowEdit($data, $key);
	}
	
	/**
	 * Method to add channel to load form.
	 *
	 * @return  void
	 *
	 * @since   3.0
	 */
	public function add()
	{
		
		$app = JFactory::getApplication();
		
		$result = parent::add();
		if ($result instanceof Exception)
		{
			return $result;
		}	
		
		$type = $app->input->get('sstype', 0, 'string');	
		$title = $app->input->get('sstitle', 0, 'string');	
		
		if (empty($type))		{
		
			$this->setRedirect(JRoute::_('index.php?option='.$this->option.'&view='.$this->view_item.'&layout=edit', false));
			return JError::raiseWarning(500, JText::_('COM_BT_SOCIALCONNECT_ERROR_INVALID_EXTENSION'));
		}	
		
		$app->setUserState('com_bt_socialconnect.add.channel.sstype', $type);	
		$app->setUserState('com_bt_socialconnect.add.channel.sstitle', $title);	
		
		$app->setUserState('com_bt_socialconnect.add.channel.params', null);
		$params = $app->input->get('params', array(), 'array');
		
		$app->setUserState('com_bt_socialconnect.add.channel.params', $params);
	}
	
	/**
	 * Method install to install package channel.
	 *
	 * @return  void
	 *
	 * @since   3.0
	 */
	 
	public function install()
	{
	 	$mainframe = JFactory::getApplication();
		$jinput = JFactory::getApplication()->input;
        $model 				= $this->getModel('channel');
        $package 			= $model->getPackageFromUpload(); 
		
        $model->install($package);
        
       	$option = $jinput->get('option', '', 'STRING');       
        $controller = $jinput->get('controller', '', 'STRING');  
        $mainframe->redirect('index.php?option='.$option.'&controller='.$controller);
    }
	
	/**
	 * Method uninstall to uninstall package channel.
	 *
	 * @return  void
	 *
	 * @since   3.0
	 */
	public function uninstall()
	{
	 
		$mainframe = &JFactory::getApplication('administrator');
		
		$models = $this->getModel('channel');
		if ($models->uninstall()) {
            $msg = JText::_( 'COM_BT_SOCIALCONNECT_SOCIALPUBLISH_UNINSTALL_SUCCESS' );
             $mainframe->redirect('index.php?option=com_bt_socialconnect&view=channels',$msg);
        } else {
			//$msg = JText::_( 'Error Deleting Channel' );
            $mainframe->enqueueMessage('Error Saving Channel','notice');
         	$mainframe->redirect('index.php?option=com_bt_socialconnect&controller=channels');
        }
	}	

		
	
}
