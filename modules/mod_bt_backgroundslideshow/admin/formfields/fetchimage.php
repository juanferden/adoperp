<?php
/**
 * @package 	formfields
 * @version		1.0
 * @created		Apr 2012
 * @author		BowThemes
 * @email		support@bowthems.com
 * @website		http://bowthemes.com
 * @support		Forum - http://bowthemes.com/forum/
 * @copyright	Copyright (C) 2012 Bowthemes. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 *
 */
// no direct access
defined('_JEXEC') or die('Restricted access');
jimport('joomla.form.formfield');

class JFormFieldFetchImage extends JFormField {

    protected $type = 'fetchimage';

    protected function getInput() {
        JHtml::_('behavior.framework', true);
        JHtml::_('behavior.modal');

        $moduleID = $this->form->getValue('id');
        if ($moduleID == '')
            $moduleID = 0;
        return $this->_build($moduleID);
    }
    protected function _build($moduleID){
        if($moduleID == '') $moduleID = 0;
        
        //check phocagallery component exists
        $phocaPath = JPATH_ADMINISTRATOR.'/components/com_phocagallery';
        $phocaExists = (is_dir($phocaPath)) ? 1 : 0;
        //check joomgallery component exists
        $jgalleryPath = JPATH_ADMINISTRATOR.'/components/com_joomgallery';
        $jgalleryPathExists = (is_dir($jgalleryPath)) ? 1 : 0;
        $root = JURI::root();
		$class = $this->element['class'] ? (string) $this->element['class'] : '';
        $html = '<button id="btnGetImages" class="'.$class.'">Get Images</button>
                <script type= "text/javascript">
                    jQuery.noConflict();
                    jQuery(document).ready(function(){

                        var phocaExists = '.$phocaExists.';
                        var jgalleryExists = '.$jgalleryPathExists.';
                        var source = jQuery("#jform_params_source").val(); 
                        var inProgess = new Object();
                        inProgess.value = false;
                        jQuery("#btnGetImages").click(function(){
                            if(inProgess.value){
                                alert("'.JText::_('MOD_BTBGSLIDESHOW_ERROR_ON_PROGESS').'");
                            }else{


                                var cw = ch = th = tw = "";
                                if(jQuery("#jform_params_crop_image").val() == 1){
                                    cw = jQuery("#jform_params_crop_width").val();
                                    ch = jQuery("#jform_params_crop_height").val();
                                }
                                var strParams = "";
                                if(cw != "" && ch != "") strParams +="&cw="+cw+"&ch="+ch;
                                var getLimit = (jQuery("#jform_params_get_limit").val() != "") ? "&get_limit=" + jQuery("#jform_params_get_limit").val() : "" ;
                                var query = "";
								source = jQuery("#jform_params_source").val();
                                switch (source){
                                    case "jfolder":
                                        if(jQuery("#jform_params_jfolder_path").val()!=""){
                                            query = "jFolderPath="+jQuery("#jform_params_jfolder_path").val() +strParams;
                                        }else{
                                            alert("'.JText::_("MOD_BTBGSLIDESHOW_JOOMLAFOLDER_ALERT").'");
                                            return false;
                                        }

                                        break;
                                    case "flickr":
                                        if(jQuery("#jform_params_flickr_api").val() != "" && jQuery("#jform_params_flickr_userid").val() != ""){
                                            query = "flickrUserID="+jQuery("#jform_params_flickr_userid").val() + "&flickrAPI="+jQuery("#jform_params_flickr_api").val();
                                            if(jQuery("#jform_params_flickr_photosetid").val() != 0)
                                                query+="&photosetid="+jQuery("#jform_params_flickr_photosetid").val();
                                        }else{
                                            alert("'.JText::_("MOD_BTBGSLIDESHOW_FLICKR_ALERT").'");
                                            return false;
                                        }
                                        break;
                                    case "picasa":
                                        if(jQuery("#jform_params_picasa_userid").val() !=""){
                                            query="picasaUserID=" + jQuery("#jform_params_picasa_userid").val();
                                            if(jQuery("#jform_params_picasa_albumid").val() != "0" && jQuery("#jform_params_picasa_albumid").val() != null)
                                                query+="&albumid="+jQuery("#jform_params_picasa_albumid").val();
                                        }else{
                                            alert("'.JText::_('MOD_BTBGSLIDESHOW_PICASA_ALERT').'");
                                            return false;
                                        }
                                        break;
                                    case "phocagallery":
                                        if(phocaExists == 1){
                                            if(jQuery("#jform_params_phoca_catid").val() !=""){
                                                 query="phoca_catid=" + jQuery("#jform_params_phoca_catid").val();
                                            }else{
                                                 query="phoca_catid=0";
                                            }
                                        }else{
                                            alert("'.JTEXT::_('MOD_BTBGSLIDESHOW_PHOCA_ALERT').'");
                                            return false;
                                        }
                                        break;
                                    case "jgallery":
                                        if(jgalleryExists == 1){
                                            if(jQuery("#jform_params_jgallery_catid").val() !=""){
                                                query="jgallery_catid=" + jQuery("#jform_params_jgallery_catid").val();
                                            }else{
                                                query="jgallery_catid=0";
                                            }
                                        }else{
                                            alert("'.JTEXT::_('MOD_BTBGSLIDESHOW_JOOMGALLERY_ALERT').'");
                                            return false;
                                        }
                                        break;
									
									case "ytlink":
										if(jQuery("#jform_params_yt_link").val() !== ""){
											var videoId = getUrlParameter(jQuery("#jform_params_yt_link").val(), "v");
											var playlist = getUrlParameter(jQuery("#jform_params_yt_link").val(), "list");
											if(videoId){
												query = "video_id=" + videoId;
											}else if(playlist){
												query = "playlist_id=" + playlist;
											}else{
												alert("'.JTEXT::_('MOD_BTBGSLIDESHOW_YOUTUBE_LINK_ALERT').'");
												return false;
											}
										}else{
											alert("'.JTEXT::_('MOD_BTBGSLIDESHOW_YOUTUBE_LINK_ALERT').'");
											return false;
										}
                                    default:
                                        break;
                                }
								
                                query = "action=get&" + query + getLimit+ "&id='.$moduleID.'";
                                inProgess.value = true;
                                jQuery.ajax({
                                    url: location.href,
                                    data: query,
                                    type: "post",
                                    beforeSend: function(){
                                        BTSlideshow.showMessage("btss-message", "Loading images... <span class=\"btss-upload-spinner\"></span>");
                                        jQuery("#btnGetImages").html("Loading...");
                                    },
                                    success: function(responseJSON){
                                            var data = jQuery.parseJSON(responseJSON);
                                            if (!data.success) {
                                                inProgess = false;
                                                jQuery("#btnGetImages").html("Get Images");
                                                BTSlideshow.showMessage("btss-message", "<b>Loading Failed</b> - " + data.message);
                                                BTSlideshow.removeLog();
                                            }
                                            else {
												sendRequest(jQuery.parseJSON(data.files), 0, BTSlideshow, strParams, inProgess);
                                            }

                                    },
                                    error: function(jqXHR, textStatus, errorThrown){
                                        inProgess = false;
                                        jQuery("#btnGetImages").html("Get Images");
                                        //BTSlideshow.showMessage("btss-message", "Sending ajax request is failed. Check <b>ajax.php</b>, please.");
                                        //BTSlideshow.removeLog();
                                    }
                                });

                            }
                            return false;
                        });
                        // for delete all images
                        jQuery("#btnDeleteAll").click(function(){
							if(jQuery("#btss-gallery-container li").length > 0){
                                if(confirm("'.JText::_('MOD_BTBGSLIDESHOW_CONFIRM_DELETE_ALL').'")){
									BTSlideshow.removeAll();	
								}	
							}
                            return false;
                        });
                        //ajax load photosets for flickr
                        var flickrAPI = jQuery("#jform_params_flickr_api").val();
                        var flickrUserID = jQuery("#jform_params_flickr_userid").val();
                        var slcFlickrPhotoset = jQuery("#jform_params_flickr_photosetid");
                        if(flickrAPI != "" && flickrUserID != ""){
                            getFlickrPhotoSet(slcFlickrPhotoset, flickrAPI, flickrUserID, BTSlideshow);
                        }
                        jQuery("#jform_params_flickr_userid").focus(function(){
                            flickrUserID = jQuery(this).val();
                            flickrAPI = jQuery("#jform_params_flickr_api").val();
                        }).focusout(function(){
                            if(jQuery(this).val() != flickrUserID && flickrAPI != ""){
                                getFlickrPhotoSet(slcFlickrPhotoset, flickrAPI, jQuery(this).val(), BTSlideshow);
                            }
                        });
                        jQuery("#jform_params_flickr_api").focus(function(){
                            flickrAPI = jQuery(this).val();
                            flickrUserID = jQuery("#jform_params_flickr_userid").val();
                        }).focusout(function(){
                            if(jQuery(this).val() != flickrAPI && flickrUserID != ""){
                                getFlickrPhotoSet(slcFlickrPhotoset, jQuery(this).val(),flickrUserID, BTSlideshow);
                            }
                        });
                        //ajax load album for picasa
                        var picasaUserID = jQuery("#jform_params_picasa_userid").val();
                        var slcPicasaAlbum = jQuery("#jform_params_picasa_albumid");
                        if(picasaUserID != ""){
                            getPicasaAlbums(slcPicasaAlbum, picasaUserID, BTSlideshow);
                        }
                        jQuery("#jform_params_picasa_userid").focus(function(){
                            picasaUserID = jQuery(this).val();
                        }).focusout(function(){
                            if(jQuery(this).val() != picasaUserID){
                                getPicasaAlbums(slcPicasaAlbum, jQuery(this).val(), BTSlideshow);
                            }
                        });
						
						

                    });
                    function sendRequest(files, i, BTSlideshow, strParams, inProgess){
                        if(i < files.length){
							var remote = jQuery("#jform_params_remote_image1").is(":checked") ? 1 : 0;	
							
                            jQuery.ajax({
                                url: location.href,
                                data: "action=upload&id='.$moduleID.'&btfile="+ files[i].file + "&title="+files[i].title + "&source="+files[i].source+ strParams  + (files[i].videoId ? "&videoid=" + files[i].videoId : "") + "&remote=" + remote,
                                type: "post",
                                beforeSend: function(){
                                    var j;
                                    for(j = files[i].file.length - 1; j >= 0; j--){
                                        if(files[i].file.charAt(j) == \'/\' || files[i].file.indexOf(j) == \'\\\\\') break;
                                    }
									var filename = "";
									if(files[i].videoId){
										filename = "video " + files[i].title;
									}else{
										filename = "image " + files[i].file.substr(j+1);
									}
                                    BTSlideshow.showMessage("btss-message", "<div id=\"btss-upload-file-" + i + "\">Loading <b>" + filename + "</b><span class=\"btss-upload-spinner\"></span></div>");

                                },
                                success: function(response){
                                    var data2 = jQuery.parseJSON(response);
                                    if(data2 == null){
                                        BTSlideshow.showMessage("btss-message", "<b>Loading Failed</b> - Have errors");
                                        BTSlideshow.removeLog();
                                    }else{
                                        var file = data2.files;
                                        jQuery("#btss-upload-file-"+i+" .btss-upload-spinner").remove();
                                        if (!data2.success) {
                                            jQuery("#btss-upload-file-"+i).append("<span style=\"color: red;\"> " + data2.message +"</span>");
                                        }
                                        else {

                                            var item = {
                                                  file: file.filename,
                                                  title: file.title,
                                                  desc: file.desc,
												  remote: file.remote,
												  youid: file.videoId
                                            };
                                            BTSlideshow.add(item, true);
                                            jQuery("#btss-upload-file-"+i).append("<span style=\"color: green;\"> Completed</span>");
                                        }
									}
									sendRequest(files, ++i, BTSlideshow, strParams, inProgess);
                                },
                                error: function(jqXHR, textStatus, errorThrown){
                                    //BTSlideshow.showMessage("btss-message", "Sending ajax request is failed. Check <b>ajax.php</b>, please.");
                                    //BTSlideshow.removeLog();
                                }
                            });
                        }else{
                            BTSlideshow.removeLog();
                            inProgess.value = false;
                            jQuery("#btnGetImages").html("Get Images").removeAttr("disabled");
                            return;
                        }
                    }
                    function getFlickrPhotoSet(select, api, userid, BTSlideshow){
                        //remove old option
                        var options = select.children();
                        for(var i = 0; i < options.length; i++){
                            options.eq(i).remove();
                        }
                        select.trigger("liszt:updated");
                        jQuery.ajax({
                            url: location.href,
                            type: "post",
                            data: "action=load_options&flickrAPI="+ api + "&flickrUserID=" + userid,
                            beforeSend: function(){
                                BTSlideshow.showMessage("btss-message", "<div>Loading Flickr Photosets <span class=\"btss-upload-spinner\"></span></div>");
                                jQuery("#btnGetImages").html("Loading...").attr("disabled","disabled");
                            },
                            success: function(response){
                                var data = jQuery.parseJSON(response);
                                if(data != null && data.success){
                                    if(data.options.length > 0){
                                        for(var i = 0; i< data.options.length; i++){
                                            select.append("<option value=\""+data.options[i].value+"\">"+data.options[i].text+"</option>");
                                        }
                                        select.trigger("liszt:updated");
                                    }else{
                                        BTSlideshow.showMessage("btss-message", "<div>Have no photoset.</div>");
                                    }
                                }else{
                                    BTSlideshow.showMessage("btss-message", "<div>Loading Flickr Photosets failed. "+ data.message + "</div>");
                                }
                                BTSlideshow.removeLog();
                                jQuery("#btnGetImages").html("Get Images").removeAttr("disabled");
                            },
                            error: function(jqXHR, textStatus, errorThrown){
                                    jQuery("#btnGetImages").html("Get Images");
                                    //BTSlideshow.showMessage("btss-message", "Sending ajax request is failed. Check <b>ajax.php</b>, please.");
                                    //BTSlideshow.removeLog();
                                }
                        });
                    }
                    function getPicasaAlbums(select, userid, BTSlideshow){
                        //remove old option
                        var options = select.children();
                        for(var i = 0; i < options.length; i++){
                            options.eq(i).remove();
                        }
                        select.trigger("liszt:updated");
                        jQuery.ajax({
                            url: location.href,
                            type: "post",
                            data: "action=load_options&picasaUserID="+ userid,
                            beforeSend: function(){
                                BTSlideshow.showMessage("btss-message", "<div>Loading Picasa albums <span class=\"btss-upload-spinner\"></span></div>");
                                jQuery("#btnGetImages").html("Loading...").attr("disabled","disabled");
                            },
                            success: function(response){
                                var data = jQuery.parseJSON(response);
                                if(data != null && data.success){
                                    if(data.options.length > 0){
                                        for(var i = 0; i< data.options.length; i++){
                                            select.append("<option value=\""+data.options[i].value+"\">"+data.options[i].text+"</option>");
                                        }
                                        select.trigger("liszt:updated");
                                    }else{
                                        BTSlideshow.showMessage("btss-message", "<div>Have no album.</div>");
                                    }
                                }else{
                                    BTSlideshow.showMessage("btss-message", "<div>Loading Picasa albums failed. " + data.message + "</div>");
                                }
                                BTSlideshow.removeLog();
                                jQuery("#btnGetImages").html("Get Images").removeAttr("disabled");
                            },
                            error: function(jqXHR, textStatus, errorThrown){
                                    jQuery("#btnGetImages").html("Get Images");
                                    //BTSlideshow.showMessage("btss-message", "Sending ajax request is failed. Check <b>ajax.php</b>, please.");
                                    //BTSlideshow.removeLog();
                                }
                        });
                    }
					
					
					function getUrlParameter(url, name)
					{
					
					  return decodeURIComponent(
						(RegExp(name + "=" + "(.+?)(&|$)", "i").exec(url) || [, ""])[1]
						);
					}
                </script>';

		return $html;
    }
}

?>
