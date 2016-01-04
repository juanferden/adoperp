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

defined('_JEXEC') or die;
?>
<style>
body,#main{
	margin:0 !important;
	padding:0 !important;
	min-height:250px !important;
}
.sc-error {
    background-color: #DA2929;
    border: 1px solid #D1D2D5;
    border-radius: 3px;
    overflow: hidden;
    padding: 0 0 0 40px;
}

.sc-icon-error {
    background-image: url(<?php echo Juri::root().'/components/com_bt_socialconnect/images/error.png' ?>);
    background-repeat: no-repeat;
    background-size: auto auto;
    display: inline-block;
    height: 26px;
    width: 26px;
	float: left;
    margin: 9px 0 0 -29px;	
    height: 18px;
    width: 18px;
}

.sc-infoerror {
    font-size: 14px;
    line-height: 18px;
    background: none repeat scroll 0 0 #FFFFFF;
    margin: 0;
    padding: 9px 30px 9px 10px;
}

</style>

<div  class="sc-error">
<i class="sc-icon-error img sp_tKOWwl6ls3Z sx_c1edc7"></i>
<div class="sc-infoerror">	
	<?php	echo JTEXT::_('COM_BT_SOCIALCONNECT_INVALID_API'); ?>	
</div>
</div>
