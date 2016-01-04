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
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
jimport( 'joomla.html.editor' );
/**
 * BTSocialconnect Html Helper
 *
 * @package		Joomla.Site
 * @subpackage	com_users
 * @since		1.6
 */
 
abstract class Bt_SocialconnectHelper {

	public static function addSiteScript() {
	
		$document = JFactory::getDocument();
		$header = $document->getHeadData();
		$params = JComponentHelper::getParams("com_bt_socialconnect");
		JHTML::_('behavior.framework');
		$loadJquery = true;
		foreach ($header['scripts'] as $scriptName => $scriptData) {
			if (substr_count($scriptName, '/jquery')) {
				$loadJquery = false;
				break;
			}
		}
		if ($loadJquery) {
			$document->addScript(JURI::root() . 'components/com_bt_socialconnect/assets/js/jquery.min.js');
		}
		$document->addScript(JURI::root() . 'components/com_bt_socialconnect/assets/js/menu.js');
		$document->addScript(JURI::root() . 'components/com_bt_socialconnect/assets/js/default.js');
		$document->addStyleSheet(JURI::root()  . 'components/com_bt_socialconnect/assets/icon/admin.css');      
		$document->addStyleSheet(JURI::root()  . 'components/com_bt_socialconnect/assets/css/legacy.css');      
		$document->addStyleSheet(JURI::root()  . 'components/com_bt_socialconnect/assets/css/menu.css');      
		 		
		
	}
	
	/*
	* Check value to load form (register and profile)
	*/
	public static function loadUserFields($els)
	{
		$app = JFactory::getApplication();		
		
		if (empty($els))
		{
			$els = array();
		}
		$db = JFactory::getDBO();					
		$condition = 'AND show_registration = 1';
		if(JRequest::getVar('view')=='profile' && JRequest::getVar('option')=='com_bt_socialconnect' ){
			$condition ='';
		}
		$db->setQuery('SELECT * FROM #__bt_user_fields WHERE published = 1 '.$condition.' order by ordering ');
		$r = $db->loadObjectList();		
			foreach ($r as $e)
			{			
				if (array_key_exists($e->alias, $els))
				{
				
					$e->value = $els[$e->alias];
					if($e->type=='dropdown' || $e->type=='usergroup'){
					if(is_array($e->default_values)) $e->default_values = implode(',',$e->default_values);
						$e->default_values =@unserialize($e->default_values);						
					}
					if($e->type == 'sql'){
						$db->setQuery($e->default_values);
						$e->default_values = $db->loadObjectList();
						if(!$e->default_values){
							$e->default_values = array();
						}
					}
					
				}else{
					// load default values
					switch($e->type){										
						case 'dropdown':							
						case 'usergroup':							
							if(is_array($e->default_values)) $e->default_values = implode(',',$e->default_values);
							$e->default_values =@unserialize($e->default_values);
							$e->value = '';
							break;
						case 'sql':
							$e->value = '';
							$db->setQuery($e->default_values);
							$e->default_values = $db->loadObjectList();
							if(!$e->default_values){
								$e->default_values = array();
							}
							break;
						default:
							$e->value = $e->default_values;
							break;
					}
				}
			}
				
            return $r;
        
	}
	
	public static function loadFieldData($el,$required){
		switch ($el->type)
		 {
			case 'date':
				if($el->value =='' || $el->value =='0000-00-00'){
					$el->value= null;
				}
				echo JHTML::_('calendar', $el->value , 'user_fields[' . $el->alias . ']', 'user_fields_'.$el->alias, '%Y-%m-%d ', $el->required?array('aria-required'=>'true','required'=>'required'):null);
				
				 break;
			 case 'string':														
				 echo '<input size="35" '.$required.' type="text" name="user_fields[' . $el->alias . ']" value="' . $el->value . '">';
				
				break;
			 case 'text':
				// jimport('joomla.html.editor');
				// $wysiwyg = JEditor::getInstance();															 
				 //echo $wysiwyg->display('user_fields[' . $el->alias . ']', strip_tags($el->value), '365', '140', '75', '20', false );
				 echo '<textarea style="width:350px;" cols="40" rows="3" '.$required.' name="user_fields[' . $el->alias . ']">'.strip_tags($el->value).'</textarea>';
				 break;												
			case'dropdown':													
				$options = array();															
				$options[] = JHtml::_('select.option', '',$el->default_values['label']);
				if(!empty($el->default_values['value'])){
					foreach ($el->default_values['value'] as $value){
						$options[] = JHtml::_('select.option', $value,$value);
					}
				}
				echo JHtml::_('select.genericlist',$options,'user_fields[' . $el->alias . '][]',$required,'value','text',$el->value);
																			
				break;
			case'image':		
				
				if($el->value!=''){	
					$pathImage = array();
					$pathImage[$el->alias] = $el->value ;
					$session = JFactory::getSession();
					$session->set('btimage',$pathImage);
					
					$avatar='<img src="'.JURI::root().'images/bt_socialconnect/avatar/'.$el->value.'"/>';				
					$html ='<div class=\'imageupload\'>';				
						$html .='<span class="editlinktip hasTip" title="'. htmlspecialchars($avatar).'">';
						$html .='<img src='. JURI::root().'images/bt_socialconnect/avatar/'.$el->value.' width=\'50\' />';	
						$html .='<input type="hidden" name="user_fields[' . $el->alias . ']" value="'.$el->value.'" />';	
						$html .='</span>';
						$html .= '<span"><input type="file" name="user_fields[' . $el->alias . ']" style="width:202px;"  class="inputbox" size="14"/></span>';			
					$html .='</div>';
					$html .='<input type="checkbox" class="textbook" name="user_fields[' . $el->alias . ']" value="">'.Jtext::_('COM_BT_SOCIALCONNECT_DELETE_IMAGE');
				}
				else{
					$html ='<div class=\'inputupload\'>';
					$html .= '<input type="file" name="user_fields[' . $el->alias . ']"  '.$required.' size="30"/>';
					$html .='</div>';
				}
				 echo $html;
				 break;
			case 'usergroup':
				$required  = $el->required ? ' required aria-required="true"' : '';
				$html = '<fieldset class="btn-group radio" '.$required .'>';
				$groupList = Bt_SocialconnectHelper::getGroupList();
				
				if(!empty($el->default_values['group'])){
					foreach ($el->default_values['group'] as $i=> $group){
						$checked = '';
						$fieldClass = array();
						if($el->value == $group){
							$checked = 'checked="checked"';
						}
						if(isset($el->default_values['field'][$i])){
							foreach($el->default_values['field'][$i] as $alias){
								$fieldClass[] = '.field-'.$alias;
							}
						}
						$fieldClass = implode(',',$fieldClass);
						$html .= '<label for="jform_'.$el->alias.$i.'">'.'<input id="jform_'.$el->alias.$i.'" data-fields="'.$fieldClass.'" class="jform_'.$el->alias.'" type="radio" name="user_fields[' . $el->alias . ']" '.$checked.' value="'.$group.'">'.$groupList[$group]->text.'</label>';
					}
				}
				$html .= '</fieldset>';
				$html .= '<script>';
				$html .= 'function changeFields(el){';
				$html .= 'jQuery(el).each(function(){';
				$html .= 'var datafields = jQuery(this).attr("data-fields");';
				$html .= 'if(datafields){';
				$html .= 'if(this.checked){';
				$html .= 'jQuery(datafields).fadeIn().find("input").attr("disabled",false);';
				$html .= '}else{jQuery(datafields).hide().find("input").attr("disabled",true);};';
				$html .= '}';
				$html .= '});';
				$html .= '};';
				$html .= 'jQuery(".jform_'.$el->alias.'").click(function(){';
				$html .= 'changeFields(".jform_'.$el->alias.'")';
				$html .= '});jQuery(".jform_'.$el->alias.'").on("ifClicked", function(event) {setTimeout(function(){changeFields(".jform_'.$el->alias.'");},100);});';
				$html .= 'if(jQuery(".jform_'.$el->alias.':checked").length==0){jQuery(".jform_'.$el->alias.':first").attr("checked",true);};jQuery(document).ready(function(){changeFields(".jform_'.$el->alias.'");});';
				$html .= '</script>';
				echo $html;
				break;	 
			case 'sql':													
				echo JHtml::_('select.genericlist',$el->default_values,'user_fields[' . $el->alias . '][]',$required,'value','text',$el->value);														
				break;	
		 }
	
	}
	public static function getGroupList(){
			$db = JFactory::getDbo();
			$query = $db->getQuery(true)
			->select('a.id AS value, a.title AS text')
			->from($db->quoteName('#__usergroups') . ' AS a')
			->order('a.lft ASC');
			$db->setQuery($query);
			return $db->loadObjectList('value');
	}
	public static function getUsername($email){
		$db = JFactory::getDbo ();				
		$db->setQuery('SELECT username FROM #__users WHERE email=' . $db->quote ( $db->escape($email)));
		$r = $db->loadResult();
		return $r;
	}
		
}
