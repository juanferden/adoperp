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
jimport('joomla.application.component.controllerform');

class Bt_SocialconnectControllerBoxes extends JControllerForm
{

	function __construct($config = array())
	{
	
		parent::__construct($config);
	}
	public function ajax(){	
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
	function doPost(){
		$db = JFactory::getDbo();
		$result = array('success' => false, 'message' => '', 'data' => null);		
		$jinput = JFactory::getApplication()->input;
		$type	=   $jinput->get('type', null, 'CMD');
		$process	=   $jinput->get('process', null, 'CMD');		
		$id	=   $jinput->get('id', null, 'INT');
		$numb	=   $jinput->get('numb', null, 'INT');
		$dispatcher = JDispatcher::getInstance();
		$mainframe =JFactory::getApplication();
		$mainframe->setUserState( 'new',1)	;
		switch($type){
			case'content':				
				$items = self::getItemContent($id);
				$cronjob =($process =='submit') ? 0 :1;
				if($cronjob) $items->state =0;				
				JPluginHelper::importPlugin('content');	
				$sent = $dispatcher->trigger('onContentAfterSave', array('com_content',&$items,1));					
			break;			
			case'k2':
				$items = self::getItemK2($id);				
				$cronjob =($process =='submit') ? 0 :1;
				if($cronjob) $items->published =0;				
				JPluginHelper::importPlugin('content');	
				$sent = $dispatcher->trigger('onContentAfterSave', array('com_k2',&$items,1));					
			break;
			case'property':
				$items = self::getItemProperty($id);				
				$cronjob =($process =='submit') ? 0 :1;
				if($cronjob) $items->published =0;				
				JPluginHelper::importPlugin('content');	
				$sent = $dispatcher->trigger('onPropertyAfterSave', array('com_k2',&$items,1));					
			break;
			case'docman':												
				JPluginHelper::importPlugin('system');
				$jinput->set('option', 'com_docman');
				$jinput->set('cid', $id);					
				$sent = $dispatcher->trigger('onAfterDispatch');				
			break;
			case'easydiscuss':							
				JPluginHelper::importPlugin('system');
				$jinput->set('option', 'com_easydiscuss');
				$jinput->set('easydiscuss_id', $id);						
				$sent = $dispatcher->trigger('onAfterDispatch');				
			break;
			case'easyblog':								
				JPluginHelper::importPlugin('system');
				$jinput->set('option', 'com_easyblog');
				$jinput->set('blogid', $id);						
				$sent = $dispatcher->trigger('onAfterDispatch');				
			break;
			case'kunena':								
				JPluginHelper::importPlugin('system');
				$jinput->set('option', 'com_kunena');
				$jinput->set('id', $id);					
				$sent = $dispatcher->trigger('onAfterDispatch');				
			break;
			case'virtuemart':						
				JPluginHelper::importPlugin('system');
				$jinput->set('option', 'com_virtuemart');
				$jinput->set('virtuemart_product_id', $id);			
				$mainframe->setUserState('virtuemart_pid', 0 );
				$siteLang= (JFactory::getLanguage()->getTag());
				$mainframe->setUserState( 'sitelang',$siteLang)	;							
				$sent = $dispatcher->trigger('onAfterDispatch');				
			break;
			case'jreview':						
				JPluginHelper::importPlugin('system');
				$jinput->set('option', 'com_jreviews');					
				$mainframe->setUserState('jreviews_id',$id);						
				$sent = $dispatcher->trigger('onAfterDispatch');				
			break;
			case'sobipro':	
				$items = self::getItemSobipro($id);		
				JPluginHelper::importPlugin('system');
				$jinput->set('option', 'com_sobipro');				
				$jinput->set('sid', $id);				
				$jinput->set('pid', $items->parent);						
				$sent = $dispatcher->trigger('onAfterDispatch');
				
			break;
		}
		if($sent){
			$result['success'] = TRUE;			
			$result['data']='';
			$result['message']	= JText::sprintf(
				'COM_BT_SOCIALCONNECT_SUBMITTED_SUCCESSFUL',
				$numb					
			);
		}else{
			$result['success'] = false;
			$result['message'] = ('fase');
			$result['message']	= JText::sprintf(
				'COM_BT_SOCIALCONNECT_SUBMITTED_FALSE',
				$numb					
			);
		}		
		 return json_encode($result);
		
	}
	
	static function getItemContent($id){
		$db = JFactory::getDbo();
		$db->setQuery('SELECT * from #__content as a WHERE a.id ="'.$id.'"' );
		$options = $db->loadObject();
		return $options;
	}
	static function getItemK2($id){
		$db = JFactory::getDbo();
		$db->setQuery('SELECT * from #__k2_items as k WHERE k.id ="'.$id.'"' );
		$options = $db->loadObject();
		return $options;
	}
	static function getItemSobipro($id){
		
		$db = JFactory::getDbo();
		$db->setQuery('SELECT * from `#__sobipro_object` as s  WHERE s.id ="'.$id.'"' );
		$options = $db->loadObject();
		return $options;
	}
	static function getItemProperty($id){
		
		$db = JFactory::getDbo();
		$db->setQuery('SELECT s.*,c.alias as category_alias from `#__bt_properties` as s left join #__bt_property_categories as c on s.catid=c.id WHERE s.id ="'.$id.'"' );
		$options = $db->loadObject();
		return $options;
	}
}
