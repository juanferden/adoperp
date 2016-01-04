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
	
		
	public function doPost() {	
		
		$client_id =JRequest::getString('client_id');
		
		$client_secret =JRequest::getString('client_secret');
		$redirect_uri =JRequest::getString('redirect_uri');
		
		$code =JRequest::getString('code');
		$method =JRequest::getString('method');
		
		if($method =='gettoken'){
			$params = array('grant_type' => 'authorization_code',
                'client_id' => $client_id,
                'client_secret' => $client_secret,
                'code' => $code,
                'redirect_uri' => $redirect_uri,
			); 	
			
			$url = 'https://www.linkedin.com/uas/oauth2/accessToken?' . http_build_query($params);		 
				
			$response =self::getContentUrl($url);						
			$token = json_decode($response);
			$this->result['access_token']=$token->access_token;
			return json_encode ($this->result);
		}		
		if($method =='getcompany'){
			$access_token =JRequest::getString('access_token');
			$params = array('oauth2_access_token' => $access_token,
                    'format' => 'json',
              ); 
			$urlprofile = 'https://api.linkedin.com/v1/people/~:(id,public-profile-url,picture-url,formatted-name)?' . http_build_query($params);
			$urlcompany = 'https://api.linkedin.com/v1/people/~/following/companies?' . http_build_query($params) ;
    
			$user = self::getContentUrl($urlprofile);					
			$company = self::getContentUrl($urlcompany);							
			$user =json_decode($user);
			$company =json_decode($company);
			self::update_token($access_token,$user->id);
			$this->result['uid']=$user->id;
			$this->result['uname']=$user->formattedName;
			$this->result['uimage']=$user->pictureUrl;
			$this->result['data']= self::prepareData($user,$company);
			return json_encode ($this->result);			
		}
		
	}
	
	public static function getContentUrl($url) {
	
	  $ch = curl_init($url);
	  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	  curl_setopt($ch, CURLOPT_BINARYTRANSFER,1);
	  curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)');
	  curl_setopt($ch, CURLOPT_TIMEOUT, 200);
	  curl_setopt($ch, CURLOPT_AUTOREFERER, false);
	  curl_setopt($ch, CURLOPT_REFERER, 'http://google.com');
	  curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
	  curl_setopt($ch, CURLOPT_HEADER, 0);
	  curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);    // Follows redirect responses
	  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

	  $file = curl_exec($ch);
	  if($file === false) trigger_error(curl_error($ch));

	  curl_close ($ch);
	  return $file;
	}
	
	public function prepareData($user,$companies){
		
		$html ='';			
		$html .='<div style="height:50px;"><a href='.$user->publicProfileUrl.' target="_blank"><img style="width:50px; height:50px;float:left;margin:5px" src="'.$user->pictureUrl.'"></a><br/>';
		$html .='<a href='.$user->publicProfileUrl.' target="_blank" >'.$user->formattedName.'</a></div><br/>';
		
		foreach($companies->values AS $key=>$company)
		{		
		
			if(isset($company->id)&& $company->id!=''){
							
				$html .= '<input type="checkbox" value="'.$company->id.'" name="group['.$key.'][checked]"/> ';				
				$html .= '<a href="http://www.linkedin.com/company/'.$company->id.'" target="_blank">'.$company->name.'</a><br/>';
				
				$html .='<input type="hidden" value="'.$company->id.'"" name="group['.$key.'][id]"/><br/>';
				$html .='<input type="hidden" value="'.$company->name.'" name="group['.$key.'][name]"/>';
				
			}
			
		}
		return $html;
	}
	
	public static function update_token($access_token,$uid){
		$db = JFactory::getDbo();
		$newArray= array();
		$params = self::getparams($uid);
		foreach ($params AS $key =>$value){
			$newArray[$key]['id'] =$value ->id;
			$tmp = json_decode($value->params);
			$tmp->access_token = $access_token;
			$newArray[$key]['params'] = json_encode($tmp);
		}
		
		foreach ($newArray As$key =>$condition){		
			$db->setQuery('UPDATE #__bt_channels SET params =\''.$condition['params'].'\' WHERE id =\''.$condition['id'].'\'');
			$db->query();
		}
	}
	
	public static function getparams($uid){	
		$db = JFactory::getDbo();
		$db->setQuery(
			'SELECT `params`,`id`' .
			' FROM #__bt_channels '.
			'WHERE params LIKE\'%"uid":"'.$uid.'"%\''
		);
		$options = $db->loadObjectList();
		return $options;
	}
}