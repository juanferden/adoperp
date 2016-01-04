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
// No direct access to this file
defined('_JEXEC') or die;

// import the list field type
jimport('joomla.form.helper');
JFormHelper::loadFieldClass('list');


class JFormFieldScusergroup extends JFormFieldList
{
	/**
	 * The field type.
	 *
	 * @var		string
	 */
	protected $type = 'scusergroup';

	
protected function getInput()
	{
		
		$attr = '';		
		$group = str_replace("\n",'',$this->createUserGroupSelect());
		
		$profile = $this->createFieldSelect();
		
		
		$fields = JHtml::_('access.usergroup',$this->name.'[]', $this->value, $attr, '', '');	
		$attr .= $this->element['class'] ? ' class="'.(string) $this->element['class'].'"' : '';		

		$attr .= $this->element['size'] ? ' size="'.(int) $this->element['size'].'"' : '';		
		
		$attr .= $this->element['onchange'] ? ' onchange="'.(string) $this->element['onchange'].'"' : '';	
		$html = '';	
		if(isset($this->value) && !empty($this->value)){
		
		$html .='<dl class="adminformlist" id="usergrouplist" >';			
			$this->value= @unserialize($this->value);	

			$Arrayvalue = $this->value['group'];
			$count = 0;
			//$html .='<dt><input type="text" name="'.$this->name.'[label]'.'" value="'.$this->value['label'].'"/> Label</dt> <div class="clr"></div>';
			if(!empty($Arrayvalue )){
				foreach ($Arrayvalue AS $key =>$value){
					$count ++;				
					$html .='<dt>';
					if($count == count($Arrayvalue)){
						$attr ='<a href="#" class="button" onclick="return addGroup(this)"><input class="btn btn-success" type="button" value="Add an option"></a>';
					}
					else{
						$attr ='<a href="#" class="button" onclick="return removeFile(this)"><input class="btn btn-remove" type="button" value="Remove"></a>';
					}
					$html .= $this->createUserGroupSelect($this->value['group'][$key],$count-1);
					$html .= $this->createFieldSelect(isset($this->value['field'][$key])?$this->value['field'][$key]:array(),$count-1);
					$html .= $attr;
					$html.='</dt><div class="clr"></div>';
				}
				
			}else{
				$html .='<dt>			
					'.$group. ' ' . $profile .'<a href="#" class="button" onclick="return addGroup(this)"><input type="button" class="btn btn-success" value="Add an option"></a>			
					</dt>
					<div class="clr">';
			}
		
		$html .='</dl>';

		}else{	
			
		$html .='<dl class="adminformlist" id="usergrouplist">
					<dt>'.$group. ' ' . $profile .'<a href="#" class="button" onclick="return addGroup(this)"><input type="button" class="btn btn-success" value="Add an option"></a>			
					</dt>
					<div class="clr">
				</dl>';
		}
		
		$html .='<style>
			#usergrouplist{
				display:inline-block;
				background:#F4F4F4;
			}
			#usergrouplist dt{
				padding:10px;
			}
			#usergrouplist dt input{
				margin-left:5px;
			}
			#usergrouplist .chzn-container{
				vertical-align:top;
			}
			#usergrouplist .select-field{
				width:300px!important;
			}
			#usergrouplist .select-group{
				width:180px!important;
			}
			.btn-success {
				background-color: #5BB75B;
				background-image: linear-gradient(to bottom, #62C462, #51A351);
				background-repeat: repeat-x;
				border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
				color: #FFFFFF;
				text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
				padding: 2px 14px;
			}
			.btn-remove {
				background-color: #F5F5F5;
				background-image: linear-gradient(to bottom, #FFFFFF, #E6E6E6);
				background-repeat: repeat-x;
				border-color: #BBBBBB #BBBBBB #A2A2A2;				
				border-width: 1px;
				box-shadow: 0 1px 0 rgba(255, 255, 255, 0.2) inset, 0 1px 2px rgba(0, 0, 0, 0.05);
				color: #333333;
				cursor: pointer;
				display: inline-block;				
				line-height: 18px;
				margin-bottom: 0;
				padding: 2px 14px;
				text-align: center;
				text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
				vertical-align: middle;
			}
		</style>';
		$html .='<script type="text/javascript">

		function addGroup(el){
			jQuery(el).parent().append(\'<a href="#" class="button" onclick="return removeFile(this)"><input class="btn btn-remove" type="button" value="Remove"></a>\');
			$parent = jQuery("#usergrouplist");
			$parent.append(\'<dt>'.$group. ' ' . $profile.'<a href="#" class="button" onclick="return addGroup(this)"><input class="btn btn-success" type="button" value="Add an option"></a></dt><div class="clr"></div>\');
			$parent.find("dt:last select").each(function(){
				this.name=this.name.replace("[0]","["+($parent.find("dt").length+100)+"]");
				jQuery(this).chosen();
			});
			jQuery(el).remove();
			hideOptions();
			return false;
		}
		function removeFile(el){
			jQuery(el).parent().remove();
			return false;
		}
		function hideOptions(){
			$el = jQuery("#usergrouplist");
			var selectedOptions = new Array();
			$el.find("select option:selected").each(function(){
				selectedOptions.push(this.value);
			});
			$el.find("select option:not(:selected)").each(function(){
				if(jQuery.inArray(this.value,selectedOptions)!=-1){
					jQuery(this).hide();
				}
				else{
					jQuery(this).show();
				}
			});
			$el.find("select").trigger("liszt:updated");
			$el.find("select").trigger("chosen:updated");
		}
		jQuery(document).ready(function(){
			hideOptions();
		});
		
		</script>';	
		return $html;
	}
	function createFieldSelect($values = array(),$key = 0){
		$db= JFactory::getDBO();
		$query = 'SELECT alias AS value, name AS text' .
				' FROM #__bt_user_fields'.
				' WHERE type!=\'usergroup\' and published=1'.
				' ORDER BY name';
		$db->setQuery($query);
		$fields = $db->loadObjectList();
		$profile = '<select onchange="hideOptions()" class="select-field" multiple="true" name="'.$this->name.'[field]['.$key.'][]'.'">';
		
		foreach($fields as $field){
			$selected = '';
			if(in_array($field->value,$values))
			$selected = 'selected="selected"';
			$profile .= '<option '.$selected.' value="'.$field->value.'">'.$field->text.'</option>';
		}
		$profile .= '</select>';
		return $profile;
	}
	function createUserGroupSelect($value = null,$key = 0){
		$db = JFactory::getDbo();
		$query = $db->getQuery(true)
			->select('a.id AS value, a.title AS text, COUNT(DISTINCT b.id) AS level')
			->from($db->quoteName('#__usergroups') . ' AS a')
			->join('LEFT', $db->quoteName('#__usergroups') . ' AS b ON a.lft > b.lft AND a.rgt < b.rgt')
			->group('a.id, a.title, a.lft, a.rgt')
			->order('a.lft ASC');
		$db->setQuery($query);
		$options = $db->loadObjectList();

		for ($i = 0, $n = count($options); $i < $n; $i++)
		{
			$options[$i]->text = str_repeat('- ', $options[$i]->level) . $options[$i]->text;
		}
		array_unshift($options, JHtml::_('select.option', '', JText::_('COM_BT_SOCIALCONNECT_SELECT_USER_GROUP')));
		return JHtml::_('select.genericlist', $options, $this->name.'[group]['.$key.']', 'class="select-group" onchange="hideOptions()"', 'value', 'text', $value, '');
			
	}
}
