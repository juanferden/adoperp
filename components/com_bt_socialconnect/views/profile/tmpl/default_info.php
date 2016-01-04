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
$config = JComponentHelper::getParams('com_bt_socialconnect');
?>
<fieldset id="users-profile-core">	
	<?php if(isset($this->data->avatar)):?>
		<dl class="user-image">
			<dt rowspan="4">
				<?php if(!empty($this->data->avatar)): ?>
					<?php echo '<img src='.JURI::root().'images/bt_socialconnect/avatar/'.$this->data->avatar .' width=\'100\'>'; ?>
				<?php else: ?>
					<?php echo '<img src='.JURI::root().'components/com_bt_socialconnect/assets/img/noimage.png  width=\'100\'>'; ?>
				<?php endif;?>
			</dt>		
		</dl>
	<?php endif;?>
	<dl class="user-info">
		<dt>
			<?php echo JText::_('COM_BT_SOCIALCONNECT_PROFILE_NAME_LABEL'); ?>
		</dt>
		<span class="colon">:</span>
		<dd>
			<?php echo $this->data->name; ?>
		</dd>
		<?php if(!$config->get('remove_user')){ ?>
		<dt>
			<?php echo JText::_('COM_BT_SOCIALCONNECT_PROFILE_USERNAME_LABEL'); ?>
		</dt>
		<span class="colon">:</span>
		<dd>
			<?php echo htmlspecialchars($this->data->username); ?>
		</dd>
		<?php }else{ ?>
		<dt>
			<?php echo JText::_('COM_BTSOCIALCONNECT_FIELD_VALUE_EMAIL'); ?>
		</dt>
		<span class="colon">:</span>
		<dd>
			<?php echo htmlspecialchars($this->data->email); ?>
		</dd>
		<?php } ?>
		<dt>
			<?php echo JText::_('COM_BT_SOCIALCONNECT_PROFILE_REGISTERED_DATE_LABEL'); ?>
		</dt>
		<span class="colon">:</span>
		<dd>
			<?php echo JHtml::_('date', $this->data->registerDate); ?>
		</dd>
		<dt>
			<?php echo JText::_('COM_BT_SOCIALCONNECT_PROFILE_LAST_VISITED_DATE_LABEL'); ?>
		</dt>
		<span class="colon">:</span>
		<?php if ($this->data->lastvisitDate != '0000-00-00 00:00:00'){?>
			<dd>
				<?php echo JHtml::_('date', $this->data->lastvisitDate); ?>
			</dd>
		<?php }
		else {?>
			<dd>
				<?php echo JText::_('COM_BT_SOCIALCONNECT_PROFILE_NEVER_VISITED'); ?>
			</dd>
		<?php } ?>
		
		<dt>
		<?php if (JFactory::getUser()->id == $this->data->id) : ?>
		<a href="<?php echo JRoute::_('index.php?option=com_bt_socialconnect&task=profile.edit&user_id='.(int) $this->data->id);?>">
			<?php echo ' <button type="button" class="btn-primary btn" value="'.JText::_('COM_BT_SOCIALCONNECT_EDIT_PROFILE_LABEL').'"><span>'.JText::_('COM_BT_SOCIALCONNECT_EDIT_PROFILE_LABEL').'</span><span class="pencil-small"></span></button>' ?></a>
		<?php endif; ?>
</dt>
	</dl>
</fieldset>

<?php if(!empty($this->data->user_fields)) :?>
<div class="profile-edit">
<div id="menu">
<ul class="nav nav-tabs">
		<li class="active"><a href="#edit-profile"><?php echo JText::_('COM_BT_SOCIALCONNECT_PROFILE_DETAIL_CORE_LEGEND');?></a></li>							
</ul>
</div>
<div class="tab-content">
	<div id="edit-profile" class="tab-pane active">
<fieldset id="users-profile-custom">
	<dl class="dl-horizontal">
		<?php 	
			$groupList = Bt_SocialconnectHelper::getGroupList();
			$abortField = array();
			foreach($this->data->user_fields AS $key =>$value): 
			//dont show abort field;
			if(in_array($value->alias,$abortField)) continue;
			switch($value->type){
				case'usergroup': 
						echo '<dt>'.Jtext::_($value->name).'</dt>';
						echo '<span class="colon">:</span>';
						echo'<dd>';
							if(isset($groupList[$value->value])){ 
								echo $groupList[$value->value]->text;
								
								// parse abort fields;
								foreach($value->default_values['group'] as $i=> $group){
									if(isset($value->default_values['field'][$i]) && $group != $value->value){
										$abortField =  array_merge($abortField,$value->default_values['field'][$i]);
									}
								}
						}
						echo '</dd>';
						break;
				case'date':
						echo '<dt>'.Jtext::_($value->name).'</dt>';
						echo '<span class="colon">:</span>';
						echo'<dd>';
						if($value->value =='' || $value->value =='0000-00-00'){
							echo JText::_('COM_BT_SOCIALCONNECT_NOT_ENTERED_VALUE');
						}else{
							echo ($value->value);
						}
						echo '</dd>';
					break;
				
				case'image':
					if(isset($this->data->avatar) && $this->data->avatar != $value->value){
						echo '<dt>'.Jtext::_($value->name).'</dt>';
						echo '<span class="colon">:</span>';
						echo'<dd>';
						$avatar =  '<img  src="' . JURI::root().'images/bt_socialconnect/avatar/' . $value->value . '" alt = "' . $value->value . '">';
						echo '<span class="editlinktip hasTip" title="'. htmlspecialchars($avatar).'">';
						echo '<a href='. JURI::root().'images/bt_socialconnect/avatar/'.$value->value.' target="_blank"  />'.JText::_('COM_BT_SOCIALCONNECT_PREVIEW_IMAGE').'</a>';
						echo'</span>';
						echo '</dd>';
					}
					break;
				case 'sql':
					if($value->value){
						foreach($value->default_values as $item){
							if($item->value == $value->value){
								$value->value = $item->text;
								break;
							}
						}
					}
				default:
						echo '<dt>'.Jtext::_($value->name).'</dt>';
						echo '<span class="colon">:</span>';
						echo'<dd>';
						if($value->value !=''):
							echo strip_tags($value->value);
						else:
							echo JText::_('COM_BT_SOCIALCONNECT_NOT_ENTERED_VALUE');
						endif;
						echo '</dd>';
				break;
			}
		?>		
			
		
		<?php	endforeach;			?>
	</dl>
</fieldset>
</div>
</div>
</div>
<?php endif;?>
