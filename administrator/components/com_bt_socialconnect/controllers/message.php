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


class Bt_SocialconnectControllerMessage extends JControllerForm
{

	function __construct($config = array())
	{
	
		parent::__construct($config);
	}

	
	protected function allowAdd($data = array())
	{
		// Initialise variables.
		$jinput = JFactory::getApplication()->input;
		$user = JFactory::getUser();
		$categoryId = JArrayHelper::getValue($data, 'catid',(int) $jinput->getInt('filter_category_id'), 'int');
		$allow = null;		

		if ($categoryId)
		{
			// If the category has been passed in the data or URL check it.
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

		
		if ($user->authorise('core.edit', 'com_bt_socialconnect.message.' . $recordId))
		{
			return true;
		}
		if ($user->authorise('core.edit.own', 'com_bt_socialconnect.message.' . $recordId))
		{			
			$ownerId = (int) isset($data['created_by']) ? $data['created_by'] : 0;
			if (empty($ownerId) && $recordId)
			{
				// Need to do a lookup from the model.
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
	
	public function add()
	{
		if (!$this->allowAdd())
		{
			// Set the internal error and also the redirect error.
			$this->setError(JText::_('JLIB_APPLICATION_ERROR_CREATE_RECORD_NOT_PERMITTED'));
			$this->setMessage($this->getError(), 'error');

			$this->setRedirect(
			JRoute::_(
				'index.php?option=' . $this->option . '&view=' . $this->view_item.
				'&layout=add', false));	

			return false;
		}
		$this->setRedirect(
			JRoute::_(
				'index.php?option=' . $this->option . '&view=' . $this->view_item.
				'&layout=add', false));	

		return true;
	
	}
	
	public function submitnow(){
		$this->save();
	}
	
	public function addtoqueue(){
		$this->save();
	}
	
	public function save($key = null, $urlVar = null)
	{
	
		// Check for request forgeries.
		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
	
		// Initialise variables.
		$app   = JFactory::getApplication();
		$lang  = JFactory::getLanguage();
		$model = $this->getModel();
		$jinput = JFactory::getApplication()->input;
		$table = $model->getTable();
		$data  = $jinput->post->get('jform', array(), 'array');	
		$checkin = property_exists($table, 'checked_out');
		$context = "$this->option.edit.$this->context";
		$task = $this->getTask();	
		if (empty($key))
		{
			$key = $table->getKeyName();
		}
		
		if (empty($urlVar))
		{
			$urlVar = $key;
		}
		$recordId = JRequest::getInt($urlVar);
		if (!$this->checkEditId($context, $recordId))
		{
			// Somehow the person just went to the form and tried to save it. We don't allow that.
			$this->setError(JText::sprintf('JLIB_APPLICATION_ERROR_UNHELD_ID', $recordId));
			$this->setMessage($this->getError(), 'error');

			$this->setRedirect(
				JRoute::_(
					'index.php?option=' . $this->option . '&view=' . $this->view_list
					. '&layout=add', false
				)
			);

			return false;
		}
		$data[$key] = $recordId;
		$form = $model->getForm($data, false);

		if (!$form)
		{
			$app->enqueueMessage($model->getError(), 'error');

			return false;
		}	
		//Set data
		if($task =='submitnow')	$data['published'] =1;		
		if($task =='addtoqueue') $data['published'] =2;
		
		$jinput->post->set('jform', $data);
		
		// Attempt to save the data.
		
		if (!$model->save($data))
		{				

			// Redirect back to the edit screen.
			$this->setError(JText::sprintf('JLIB_APPLICATION_ERROR_SAVE_FAILED', $model->getError()));
			$this->setMessage($this->getError(), 'error');

			$this->setRedirect(
				JRoute::_(
					'index.php?option=' . $this->option . '&view=' . $this->view_item
					. '&layout=add', false
				)
			);

			return false;
		}		

		$this->setMessage(
			JText::_(
				($lang->hasKey($this->text_prefix . ($recordId == 0 && $app->isSite() ? '_SUBMIT' : '') . '_SAVE_SUCCESS')
					? $this->text_prefix
					: 'JLIB_APPLICATION') . ($recordId == 0 && $app->isSite() ? '_SUBMIT' : '') . '_SAVE_SUCCESS'
			)
		);

		// Redirect the user and adjust session state based on the chosen task.		
				
			$this->releaseEditId($context, $recordId);
			$app->setUserState($context . '.data', null);

			// Redirect to the list screen.
			$this->setRedirect(
				JRoute::_(
					'index.php?option=' . $this->option . '&view=' . $this->view_list, false
				)
			);
		

		return true;
	}
	
	public function send(){			
		if (JRequest::get('post')) {
           $obLevel = ob_get_level();
			while ($obLevel > 0 ) {
				ob_end_clean();
				$obLevel --;
            }
            echo self::doPost();
            exit;
        }
		
	}
	private function doPost() {	
		$data= array();	
		$result= array('success' => false,'senttime'=>'');
		$params = JComponentHelper::getParams('com_bt_socialconnect');
		$jinput = JFactory::getApplication()->input;
		$id	= (int)  $jinput->getInt('id', null, '', 'int');
		$data['id']= $id;
		$data['published'] =1;
		
		$model = $this->getModel('Message', 'Bt_SocialconnectModel');
		$return	= $model->save($data);
	
		if($return['publish'] ==1)	$result['success'] =true;		
			$update_time = JFactory::getDate()->toSql();
			$result['senttime']=$update_time;
		 return json_encode($result);
	}
	
	
	 public function delete() {
		$db = JFactory::getDBO();
		$query='DELETE FROM  #__bt_messages';		
		$db->setQuery($query);
		$db->query();
		$this->setRedirect(JRoute::_('index.php?option=com_bt_socialconnect&view=messages', false));
    }
	
}
