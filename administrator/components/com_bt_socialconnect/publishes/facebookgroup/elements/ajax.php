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
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport('joomla.html.html');
jimport('joomla.form.formfield');
JFormHelper::loadFieldClass('list');

class JFormFieldAjax extends JFormFieldList {

	protected $type = 'ajax';
	private $result = array();	
	
	function getInput()
	{		
		if (JRequest::get('post')) {
           $obLevel = ob_get_level();
			if($obLevel){
				while ($obLevel > 0 ) {
					ob_end_clean();
					$obLevel --;
				}
			}else{
				ob_clean();
			}
            echo self::doPost();
            exit;
        }
		
	}
	
	public static function curlResponse($url,$data = null){
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_URL, $url);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
			curl_setopt($ch, CURLOPT_REFERER, $_SERVER['REQUEST_URI']);
			if($data){
				curl_setopt($ch,CURLOPT_POST, true);
				curl_setopt($ch,CURLOPT_POSTFIELDS, $data);
				curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-type: application/x-www-form-urlencoded'));
			}
			$response = curl_exec($ch);
			curl_close($ch);
			return $response;
	}
		
	public function doPost() {	
		
		$client_id =JRequest::getString('client_id');
		
		$appfb_secret =JRequest::getString('client_secret');
		$callback_url =JRequest::getString('redirect_uri');
		
		$code =JRequest::getString('code');
		$method =JRequest::getString('method');
		
		if($method =='gettoken'){
			$token_url= "https://graph.facebook.com/oauth/access_token?"
			   . "client_id=" . $client_id . "&redirect_uri=" . urlencode($callback_url)
			   . "&client_secret=" . $appfb_secret ."&code=" . $code;
			   
			$response = self::curlResponse($token_url);
			$paramsFB = null;
			parse_str($response, $paramsFB);	
			$this->result['access_token']=$paramsFB['access_token'];
			return json_encode ($this->result);
		}		
		if($method =='getuser'){
			$token =JRequest::getString('access_token');
			$graph_url = "https://graph.facebook.com/me?access_token=".$token;
			$user = self::curlResponse($graph_url);
			$group_url = "https://graph.facebook.com/me/groups?access_token=".$token;
			$group = self::curlResponse($group_url);
			
			$user =json_decode($user);
			$group =json_decode($group);
			$this->result['uid']=$user->id;
			$this->result['uname']=$user->name;
			$this->result['data']= self::prepareData($user,$group->data);
			return json_encode ($this->result);			
		}
		
	}
	public function prepareData($user,$fbgroups){
		
		$html ='';			
		$html .='<div style="height:50px;"><a href='.$user->link.' target="_blank"><img style="width:50px; height:50px;float:left;margin:5px" src="http://graph.facebook.com/'.$user->id.'/picture"></a><br/>';
		$html .='<a href='.$user->link.' target="_blank" >'.$user->name.'</a></div><br/>';
		
		foreach($fbgroups AS $key=>$group)
		{		
			if(isset($group->id)&& $group->id!=''){
				$html .= '<input type="checkbox" value="'.$group->id.'" name="group['.$key.'][checked]"/> ';
				$html .= '<a href="https://www.facebook.com/'.$group->id.'" target="_blank">'.$group->name.'</a><br/>';
				$html .='<input type="hidden" value="'.$group->id.'"" name="group['.$key.'][id]"/><br/>';
				$html .='<input type="hidden" value="'.$group->name.'" name="group['.$key.'][name]"/>';
			}
			
		}
		return $html;
	}
}