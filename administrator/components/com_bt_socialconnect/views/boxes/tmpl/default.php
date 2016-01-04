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
 
// No direct access.
defined('_JEXEC') or die;
JHtml::_('behavior.tooltip');
?>
<div id="progress">
	<div id="progress-submitting"><?php echo JText::_('COM_BT_SOCIALCONNECT_SUBMITTING_PROGRESS') ?></div>
	<div id="progress-success"><?php echo JText::_('COM_BT_SOCIALCONNECT_SUBMIITED_SUCCESSFULL') ?></div>
</div>
<div id="box-form">
<form action="<?php echo JRoute::_('index.php?option=com_bt_socialconnect&view=boxes&tmpl=component');?>" method="post" name="boxes-form" id="boxes-form">
<?php echo JTEXT::_('COM_BT_SOCIALCONNECT_SOURCE'); ?>
<select style="width: 150px" name="filter_component" id="btt-type" onchange="this.form.submit()">	
		<option value=""><?php echo JText::_('COM_BT_SOCIALCONNECT_SELECT_COMPONENT');?></option>
		<?php echo JHtml::_('select.options', Bt_SocialconnectAdminHelper::getComponentOptions(), 'value', 'text', $this->filter_conponent);?>
</select>
</form>

<div class="clr"></div>
<form action="index.php?option=com_bt_socialconnect&view=boxes&tmpl=component" method="post" name="adminForm" id="adminForm">
<?php
	$filter_component =$this->filter_conponent;
	
	switch ($filter_component){
		case'content':
			if(!$this->checkPlugin('bt_autosubmit_content')){
					JError::raiseNotice('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_PUBLISHES'));
				}
			$dispatcher = JDispatcher::getInstance();
			JPluginHelper::importPlugin('content');	
			$plugin = $dispatcher->trigger('display', array());	
			break;
		case'k2':
			if (!is_dir(JPATH_ROOT . '/plugins/content/bt_autosubmit_k2')){
				JError::raiseWarning('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_INSTALLED'));
			}else{
				if(!$this->checkPlugin('bt_autosubmit_k2')){
					JError::raiseNotice('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_PUBLISHES'));
				}
			}
			$dispatcher = JDispatcher::getInstance();
			JPluginHelper::importPlugin('content');	
			$plugin = $dispatcher->trigger('k2display', array());	
		break;
		case'docman':
			if (!is_dir(JPATH_ROOT . '/plugins/system/bt_autosubmit_docman')){
				JError::raiseWarning('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_INSTALLED'));
			}else{
				if(!$this->checkPlugin('bt_autosubmit_docman')){
					JError::raiseNotice('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_PUBLISHES'));
				}
			}
			
			$dispatcher = JDispatcher::getInstance();
			JPluginHelper::importPlugin('system');	
			$plugin = $dispatcher->trigger('docmandisplay', array());	
		break;
		case'easyblog':
			if (!is_dir(JPATH_ROOT . '/plugins/system/bt_autosubmit_easyblog')){
				JError::raiseWarning('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_INSTALLED'));
			}else{
				if(!$this->checkPlugin('bt_autosubmit_easyblog')){
					JError::raiseNotice('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_PUBLISHES'));
				}
			}
			$dispatcher = JDispatcher::getInstance();
			JPluginHelper::importPlugin('system');	
			$plugin = $dispatcher->trigger('easyblogdisplay', array());	
		break;
		case'easydiscuss':
			if (!is_dir(JPATH_ROOT . '/plugins/system/bt_autosubmit_easydiscuss')){
				JError::raiseWarning('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_INSTALLED'));
			}else{
				if(!$this->checkPlugin('bt_autosubmit_easydiscuss')){
					JError::raiseNotice('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_PUBLISHES'));
				}
			}
			
			$dispatcher = JDispatcher::getInstance();
			JPluginHelper::importPlugin('system');	
			$plugin = $dispatcher->trigger('easydiscussdisplay', array());	
		break;
		case'kunena':
			if (!is_dir(JPATH_ROOT . '/plugins/system/bt_autosubmit_kunena')){
				JError::raiseWarning('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_INSTALLED'));
			}else{
				if(!$this->checkPlugin('bt_autosubmit_kunena')){
					JError::raiseNotice('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_PUBLISHES'));
				}
			}
			$dispatcher = JDispatcher::getInstance();
			JPluginHelper::importPlugin('system');	
			$plugin = $dispatcher->trigger('kunenadisplay', array());	
		break;
		case'virtuemart':
			if (!is_dir(JPATH_ROOT . '/plugins/system/bt_autosubmit_virtuemart')){
				JError::raiseWarning('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_INSTALLED'));
			}else{
				if(!$this->checkPlugin('bt_autosubmit_virtuemart')){
					JError::raiseNotice('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_PUBLISHES'));
				}
			}
			$dispatcher = JDispatcher::getInstance();
			JPluginHelper::importPlugin('system');	
			$plugin = $dispatcher->trigger('virtuemartdisplay', array());	
		break;
		case'sobipro':
			if (!is_dir(JPATH_ROOT . '/plugins/system/bt_autosubmit_sobipro')){
				JError::raiseWarning('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_INSTALLED'));
			}else{
				if(!$this->checkPlugin('bt_autosubmit_sobipro')){
					JError::raiseNotice('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_PUBLISHES'));
				}
			}
			$dispatcher = JDispatcher::getInstance();
			JPluginHelper::importPlugin('system');	
			$plugin = $dispatcher->trigger('sobiprodisplay', array());	
		break;
		case'jreview':
			if (!is_dir(JPATH_ROOT . '/plugins/system/bt_autosubmit_jreviews')){
				JError::raiseWarning('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_INSTALLED'));
			}else{
				if(!$this->checkPlugin('bt_autosubmit_jreviews')){
					JError::raiseNotice('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_PUBLISHES'));
				}
			}
			$dispatcher = JDispatcher::getInstance();
			JPluginHelper::importPlugin('system');	
			$plugin = $dispatcher->trigger('jreviewdisplay', array());	
		break;
		case'property':
			if (!is_dir(JPATH_ROOT . '/plugins/content/bt_autosubmit_property')){
				JError::raiseWarning('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_INSTALLED'));
			}else{
				if(!$this->checkPlugin('bt_autosubmit_property')){
					JError::raiseNotice('', JTEXT::_('COM_BT_SOCIALCONNECT_CONNECT_NOT_PUBLISHES'));
				}
			}
			$dispatcher = JDispatcher::getInstance();
			JPluginHelper::importPlugin('content');	
			$plugin = $dispatcher->trigger('propertydisplay', array());	
			break;
		
	}
?>
<?php if($filter_component): ?>
<div class="clr"></div>
	<div class="button-action">	
		<button type="button" class="btn btn-small icon-32-submit" onclick='jSelectArticle("submit","<?php echo $filter_component; ?>");'><span><?php echo JText::_('COM_BT_SOCIALCONNECT_SUBMIT'); ?></span></button>
		<button type="button" class="btn btn-small icon-32-addtoqueue" onclick='jSelectArticle("queue","<?php echo $filter_component; ?>");'><span><?php echo JText::_('COM_BT_SOCIALCONNECT_ADD_TO_QUEUE'); ?></span></button>
	</div>
<div class="clr"></div>
<?php endif;?>
</form>
</div>
<script type="text/javascript">
	jQuery.noConflict();	
	var 	url= location.href;
			url = url.replace(/&view=[^&;]*/,'');
			url = url.replace(/&tmpl=[^&;]*/,'');
	var selected;
	function jSelectArticle(type,content_type){
		var xhr;
		selected = jQuery("[name='cid[]']:checked");
		if(jQuery('#progress').is(':visible')){
			return;
		}
		if(selected.length == 0){
			alert('<?php echo JTEXT::_('COM_BT_SOCIALCONNECT_SELECT_AT_LEAST_ONE_ITEM'); ?>');
		}else{
			jQuery('#box-form').css('opacity',0.2);
			jQuery('#progress').fadeIn();
			jQuery('#progress-submitting span').html('0');
			jQuery('#progress-submitting').fadeIn();
			jQuery('#progress-success').hide();
			submitAjaxRequest(0,type,content_type);	
		}		
	}
	function submitAjaxRequest(i,type,content_type){
		var xhr = jQuery.ajax({
				cache: false,
				url: url+'&task=boxes.ajax',
				data: "type="+content_type+"&process="+type+"&id="+selected[i].value+"&numb="+(i+1),
				type: "post"				
			})
			.done(function() {
				jQuery('#progress-submitting span').html(parseInt(jQuery('#progress-submitting span').html())+1);	
				if(i==selected.length-1){
					jQuery('#progress-submitting').hide();
					jQuery('#progress-success').show();
					jQuery('#box-form').delay(1000).animate({opacity:1});
					jQuery('#progress').delay(1000).fadeOut();
				}else{
					i++;
					submitAjaxRequest(i,type,content_type);
				}
		});		
	}
	
</script>