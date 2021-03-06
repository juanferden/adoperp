<?php
/**
 * @package 	mod_bt_contentshowcase - BT ContentShowcase Module
 * @version		1.0
 * @created		June 2012
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
?>

<?php if(count($list)>0) :?>
<div class="fpshow">
	<div id="btcontentshowcase<?php echo $module->id; ?>"  class="bt-contentshowcase<?php echo $moduleclass_sfx ? ' bt-contentshowcase'.$params->get('moduleclass_sfx'):'';?>">
		<?php if( trim($params->get('content_title')) ):?>
		<div class="bt-header">
			<h3>
				<?php if($params->get('content_title_link')):?>
					<a href="<?php echo $params->get('content_title_link');?>"><span><?php echo $params->get('content_title') ?> </span></a>
				<?php else: ?>
					<span><?php echo $params->get('content_title') ?> </span>                    
				<?php endif; ?>
			</h3>
		</div>
		<?php endif; ?>
		<div class="bt-sliders">
			<div class="bt-window">
			<?php foreach( $list as $i => $row ): ?>	
			<div class="bt-slide">
				<?php if($row->thumbnail): ?>
					<img class="bt-mainimg" src="<?php echo $row->thumbnail; ?>" alt="<?php echo $row->title?>" />
				<?php endif; ?>
				<div class="bt-caption">
					<div class="bt-caption-bg"></div>
					<div class="bt-caption-content">
						<div class="bt-category">
							<?php if( $show_category_name ): ?>
								<?php if($show_category_name_as_link) : ?>
									<a target="<?php echo $openTarget; ?>"
										title="<?php echo $row->category_title; ?>"
										href="<?php echo $row->categoryLink;?>"> <?php echo $row->category_title; ?>
									</a>
								<?php else :?>
									<span class="bt-category"> <?php echo $row->category_title; ?> </span>
								<?php endif; ?>
							<?php endif; ?>
						</div>
						<div class="bt-title">
							<?php if( $showTitle ): ?>
								<a target="<?php echo $openTarget; ?>"	href="<?php echo $row->link;?>"> 
									<?php echo $row->title; ?>
								</a>
							<?php endif; ?>
						</div>
						<?php if( $show_intro ): ?>
							<div class="bt-introtext">
								<?php echo $row->description; ?>
							</div>
						<?php endif; ?>
						
						<?php if( $showReadmore ) : ?>
							<p class="bt-readmore">
								<a target="<?php echo $openTarget; ?>"
									title="<?php echo $row->title;?>"
									href="<?php echo $row->link;?>"> <?php echo JText::_('READ_MORE');?>
								</a>
							</p>
						<?php endif; ?>
					</div>
					
				</div>
			</div>
			<?php endforeach; ?>
			</div>
			<?php if($params->get('next_prev')):?>
			<div class="bt-handles">
				<div class="prev"></div>
				<div class="next"></div>
			</div>
			<?php endif; ?>
		</div>
		<div class="bt-footernav">
			<div class="bt-navpipe">
				<?php foreach( $list as $i => $row ): ?>	
				<div class="bt-nav <?php echo $i==0 ? 'bt-nav-first' : (($i==count($list)-1) ? 'bt-nav-last' : ''); ?>">
					<?php if( $showAuthor ): ?>
						<div class="bt-author"><?php echo $row->author; ?></div>
					<?php endif; ?>
					<?php if( $showDate ): ?>
						<div class="bt-date"><?php echo $row->date; ?></div>
					<?php endif; ?>
					<?php if( $showTitle ): ?>
						<div class="bt-title"><?php echo $row->title_cut; ?></div>
					<?php endif; ?>	
				</div>
				<?php endforeach; ?>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">	
	$B('#btcontentshowcase<?php echo $module->id; ?>').btsliders({
		autoPlay:<?php echo ($params->get('auto_start')) ?>,
		hoverPause: <?php echo $params->get('pause_hover',1) ?>,
		easing: '<?php echo $params->get('easing')?>',
		slideSpeed: <?php echo (int)$params->get('duration', '500')?>,
		captionSpeed:<?php echo (int)$params->get('captionSpeed', '500')?>,
		interval:<?php echo $params->get('interval', 5)*1000 ?>,
		effect:'<?php echo $params->get('fpshow_effect'); ?>', // slide or fade
		touchScreen:<?php echo $params->get('touchscreen',0)?>
	});
</script>
<?php else : ?>
<div>No result...</div>
<?php endif; ?>
<div style="clear: both;"></div>
