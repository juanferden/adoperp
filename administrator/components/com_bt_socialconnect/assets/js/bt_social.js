jQuery.noConflict();
 jQuery(document).ready(function(){
	jQuery('#submenu li a.active').parents('li').addClass('active');  
	
	jQuery('.user_setting').height(jQuery('.user_setting .cpanel').height());
	jQuery('.social_setting').height(jQuery('.social_setting .cpanel').height());
	jQuery('.extension_setting').height(jQuery('.extension_setting .cpanel').height());
	jQuery('.widget_setting').height(jQuery('.widget_setting .cpanel').height());
	
	jQuery('.toogle-user').click(function(){
		jQuery('.user_setting').stop(true,true).slideToggle(300,"linear");
	});
	
	jQuery('.toogle-social').click(function(){
		jQuery('.social_setting').stop(true,true).slideToggle(300,"linear");
	});
	
	jQuery('.toogle-extension').click(function(){
		jQuery('.extension_setting').stop(true,true).slideToggle(300,"linear");
	});
	
	jQuery('.toogle-widget').click(function(){
		jQuery('.widget_setting').stop(true,true).slideToggle(300,"linear");
	});
      
	jQuery('#submenu li').eq(0).addClass('sub-panel');  
	jQuery('#submenu li').eq(1).addClass('sub-user');  
	jQuery('#submenu li').eq(2).addClass('sub-userfield'); 		 	
	jQuery('#submenu li').eq(3).addClass('sub-cloud');  
	jQuery('#submenu li').eq(4).addClass('sub-joomla');  
	jQuery('#submenu li').eq(5).addClass('sub-log');  
	jQuery('#submenu li').eq(6).addClass('sub-statistic'); 
	
	//Set tooltip for component all tab
	originalURL  =location.href;	
	jQuery.ajax({
					url: originalURL,
					data: "task=cpanel.setBoxActive&active=1",
					type: "post",					
					success: function(response){
					var data = jQuery.parseJSON(response);	
						if(data.data){							
								jQuery('#system-message-container').css('display','none').html(data.data).fadeIn('slow');
								evenclick(jQuery('.bt_config'));
							
						}
					}
	});
 });
	
	function evenclick(event){
				event.click(function(){
				SqueezeBox.open(jQuery(this).attr('href'),{
					handler:"iframe",
					size:{
						x:800,
						y:400
					}
				});
				return false;
			});
	}
	function checkClick(option){
		var title ='';
		switch(option){
			case'dashboard':
				title='Are you sure you want to disable this warning?';
				break;
			default:
				title='Are you sure you want to disable these tips?';
				break;
		}
		if (confirm(title)) {
				jQuery.ajax({
					url: location.href,
					data: "task=cpanel.setBoxActive&active=0",
					type: "post",					
					success: function(response){
						var data = jQuery.parseJSON(response);	
						if(data.success){
							jQuery('.box-message').fadeOut();
						}
					
					}
			});
			
		}
	}		
	
 