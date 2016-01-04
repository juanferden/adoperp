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

class Bt_SocialconnectControllerCpanel extends JControllerForm
{
	protected $glob = array();
	function __construct($config = array())
	{
	
		parent::__construct($config);
	}	
	
	public function setBoxActive(){

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
		$params = JComponentHelper::getParams('com_bt_socialconnect');	
		$result= array('success' => false,'type'=>'', 'data' => '');
		$jinput = JFactory::getApplication()->input;
		$view = ($jinput->get('view'));
		$active = ($jinput->get('active',0));
		if(!$active){			
			$params->set( 'show-boxtip', 0 );
			$db = JFactory::getDBO();
			$query = $db->getQuery(true);

			// Using the query
			$query->update('#__extensions AS a');
			$query->set('a.params = ' . $db->quote((string)$params));
			$query->where('a.element = "com_bt_socialconnect"');

			// Execute the query
			$db->setQuery($query);
			$db->query();
			$result['success'] = TRUE;
			return json_encode($result);
		}else{		
			if(!$params->get('show-boxtip',1)) return json_encode($result);
			// DASHBOARD
			switch($view){		
			case'':
			case'cpanel':					
				$result['success'] = TRUE;			
				if($params->get('fbappId','') =='' || $params->get('fbsecret') =='')
					$this->glob[] ='Facebook';
				if($params->get('ggappId','') =='' || $params->get('ggsecret') =='')
					$this->glob[] ='Google';
				if($params->get('ttappId','') =='' || $params->get('ttsecret') =='')
					$this->glob[] ='Twitter';
				if($params->get('linkappId','') =='' || $params->get('linksecret') =='')
					$this->glob[] ='Linkedin';
					
					$result['type']='dashboard';
					$result['data'] =$this->prepareData('dashboard',$this->glob);					
				
				break;
			
				//USER// USERFIELD// WIDGET // CHANNEL//MESSAGE //STATISTIC
				case'widgets':
				case'socialconnects':
				case'userfields':
				case'channels':
				case'messages':			
					$result['success'] = TRUE;
					$result['type']= $view;
					$result['data'] =$this->prepareData($view,null);
					break;
			}
			return json_encode($result);		
		}
	}
	
	static function prepareData($option,$item){
		JHtml::_('behavior.modal');
		$html ='<div class="box-inner dashboard"><div class="box-message ">';	
		switch($option){
			case'dashboard':	
				if(empty($item) && (int) self::itemChannel()!=0) return;
				$html .='<h3>Welcome to BT Social Connect</h3>';
				if(!empty($item)){
						if(Bt_SocialconnectLegacyHelper::isLegacy()){
							$html .='- You have not yet configured for '.implode(',',$item).' API! Please go to <a  href="'.JRoute::_('index.php?option=com_config&amp;view=component&amp;component=com_bt_socialconnect&amp;path=&amp;tmpl=component').'" class="bt_config">configuration</a> to setup now! <br/>';				
						}else{
							$html .='- You have not yet configured for '.implode(',',$item).' API! Please go to <a  href="'.JRoute::_('index.php?option=com_config&amp;view=component&amp;component=com_bt_socialconnect').'" >configuration</a> to setup now! <br/>';				
						}
					}
				if((int) self::itemChannel()==0)
					$html .='- You have to create at least one channel to active social publishing. Go to <a  href="'.JRoute::_('index.php?option=com_bt_socialconnect&view=social&tmpl=component').'" class="bt_config">channels manager</a> to create one now!';					
				break;
			case'widgets':
				$html .='<h3>Tips:</h3>';
				$html .='- You can embed all widget bellow into your article, your custom module and even your template code. <br/>';
				$html .='- All widgets are defined in <i>administrator/components/com_bt_socialconnect/widgets/</i> folder, you can create one for your own!';	
				break;
			case'socialconnects':
				$html .='<h3>Tips:</h3>';
				$html .='- You should manager users here instead of User Manager default component.<br>
						- If you want to show only facebook user, choose "facebook" value of "- User type -" filter.<br>
						- All columns (Avatar, Gender, Profile link, Birthday, City, About) can be added/removed or shown/hidden in <a target="_blank"  href="index.php?option=com_bt_socialconnect&view=userfields">User fields</a> manager.
				';
				break;
			case'userfields':
				$html .='<h3>Tips:</h3>';
				$html .='- Custom user profile fields can be created here.';
				break;
			case'channels':
				$html .='<h3>Tips:</h3>';
				$html .=' - When an action (creating article, user registration...) occurs, a message will be created and pushed into all enabled channels you created bellow here.<br />
						 - You can define the message templates in <a target="_blank" href="index.php?option=com_plugins&view=plugins&filter_search=autosubmit">autosubmit</a> plugins.
						';
				break;
			case'messages':				
				$html .='<h3>Tips:</h3>';
				$html .='- Messages are auto created by <a target="_blank"  href="index.php?option=com_plugins&view=plugins&filter_search=autosubmit">autosubmit</a> plugins or created manually (Click "new", "multiple add" buttons).<br />
						- Messages are sent to the channels as facebook page, twitter, email...<br>
						- You can count how many people have read the message (see the "Number of clicks") column.<br>
						- You can delay or schedule sending messages (Enable cron job option and then set scheduling time).
						';
				break;
			default:
				break;
		}
		$html .='<button class="button-message" onclick="checkClick(\''.$option.'\');" type="button">×</button>';
		$html .='</div></div>';			
		return $html;
	
	}
	
	static function itemChannel(){
		$db	= JFactory::getDBO();
		$db->setQuery(
			'SELECT COUNT(id)' .
			' FROM #__bt_channels' 			
		);
		return $db->loadResult();
		
	}
	
}
