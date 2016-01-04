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
?>
<form action="index.php" method="post" name="adminForm" class="form-validate <?php echo (!Bt_SocialconnectLegacyHelper::isLegacy() ? 'isJ30' : 'isJ25') ?>">	
	
	<table cellpadding="0" cellspacing="0" border="0" style="width:100%" id="StatisticPage" class="table">
	<tr>
	<td>			
		<fieldset class="adminform">					
			 <table class="adminlist table table-striped">
			  <thead>
				<tr>
				  <th width="300"><?php echo JText::_('COM_BT_SOCIALCONNECT_STATISTIC_USER_CONNECTION'); ?></th>						 
				  <th width="300" colspan="2"><?php echo JText::_('COM_BT_SOCIALCONNECT_STATISTIC_MESSAGE_POST'); ?></th>						 
				</tr>
			  </thead>
			  <tfoot>
				<tr>
				  <th colspan="3">&nbsp;</th>
				</tr>
			  </tfoot>
			  <tbody>
				<tr>
				  <td>	
					<div id="chart_div"></div>						  
				  </td>
				  <td colspan="2">
					<div id="table_div" style="border-bottom: 1px solid #CCCCCC;padding-left:40px"></div>
					<div id="post_div"></div>
				  </td>
				</tr>
			</tbody>
			<thead>
				<tr>					
				  <th><?php echo JText::_('COM_BT_SOCIALCONNECT_STATISTIC_WIDGET_INUSE'); ?></th>
				  <th><?php echo JText::_('COM_BT_SOCIALCONNECT_STATISTIC_TYPE'); ?></th>
				  <th><?php echo JText::_('COM_BT_SOCIALCONNECT_STATISTIC_USER_CONNECTION_NUMBER'); ?></th>
				</tr>							
			</thead>
			<tbody>
			<?php foreach ($this->model->getWidgets() AS $key=>$item): ?>			
				<tr>
				  <td><?php echo implode(', ',$this->model->getWgname($item->wgtype)); ?></td>
				  <td><?php echo $item->wgtype?></td>
				  <td><?php echo count($this->model->getWgname($item->wgtype));?></td>
				</tr>							 
			<?php endforeach; ?>
			</tbody>	
			<thead>
				<tr>					
				  <th><?php echo JText::_('COM_BT_SOCIALCONNECT_STATISTIC_PUBLISHING_INUSE'); ?></th>
				  <th><?php echo JText::_('COM_BT_SOCIALCONNECT_STATISTIC_TYPE'); ?></th>
				  <th><?php echo JText::_('COM_BT_SOCIALCONNECT_STATISTIC_USER_CONNECTION_NUMBER'); ?></th>
				</tr>							
			</thead>
			<tbody>
			<?php foreach ($this->model->getChannels() AS $key=>$item): ?>
				<tr>
				  <td><?php echo implode(', ',$this->model->getNameChannel($item->type)); ?></td>
				  <td><?php echo $item->type?></td>
				  <td><?php echo count($this->model->getNameChannel($item->type));?></td>
				</tr>			 
			<?php endforeach; ?>
			</tbody>
			
			</table>						
		</fieldset>
	
	</td>
	</tr>		
	</table>
	
</form>

<script type="text/javascript">

  // Load the Visualization API and the piechart package.
  google.load('visualization', '1.0', {'packages':['corechart']});
  // Set a callback to run when the Google Visualization API is loaded.
  google.setOnLoadCallback(drawChart);
 
  function drawChart() {
	// Create the data table.
	var data = new google.visualization.DataTable();
	data.addColumn('string', 'Topping');
	data.addColumn('number', 'Slices');
	data.addRows([
	  ['Normal user', <?php echo (int) $this->numb; ?>],
	  ['Facebook', <?php echo (int)$this->model->getStatistic('facebook');?>],
	  ['Twitter', <?php echo (int)$this->model->getStatistic('twitter'); ?>],
	  ['Google', <?php echo (int)$this->model->getStatistic('google'); ?>],
	  ['Linkedin', <?php echo (int)$this->model->getStatistic('linkedin'); ?>]
	]);
	// Set chart options
	var options = {'title':'Number of users',
				   'width':400,
				   'height':380};

	// Instantiate and draw our chart, passing in some options.
	var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
	chart.draw(data, options);
  } 
  
  // Table map
   google.load('visualization', '1', {'packages': ['table', 'map', 'corechart']});
      google.setOnLoadCallback(draw);
       function draw() {
          var data = google.visualization.arrayToDataTable([
			['Data', 'Error', { role: 'style' },
			 'Pending',{ role: 'style' }, 'Success', { role: 'annotation' },{ role: 'style' } ],
			['Facebook', <?php echo (int) $this->model->getMessageState('facebook',0); ?>,'#FB3601 ',<?php echo (int) $this->model->getMessageState('facebook',2); ?>,'#DD7E0F',<?php echo (int) $this->model->getMessageState('facebook',1); ?>, '', '#91AC13'],
			['Google',   <?php echo (int) $this->model->getMessageState('google',0); ?>, '#FB3601',	<?php echo (int) $this->model->getMessageState('google',2); ?>,'#DD7E0F',  <?php echo (int) $this->model->getMessageState('google',1); ?>, '', '#91AC13'],
			['Twitter',  <?php echo (int) $this->model->getMessageState('twitter',0); ?>, '#FB3601',<?php echo (int) $this->model->getMessageState('twitter',2); ?>,'#DD7E0F', <?php echo (int) $this->model->getMessageState('twitter',1); ?>, '', '#91AC13'],
			['Linkedin', <?php echo (int) $this->model->getMessageState('linkedin',0); ?>,'#FB3601',<?php echo (int) $this->model->getMessageState('linkedin',2); ?>,'#DD7E0F',<?php echo (int) $this->model->getMessageState('linkedin',1); ?>, '', '#91AC13'],
		  ]);

		  var options = {
			title:'Message status',
			width: 600,
			height: 200,
			legend: { position: 'right', maxLines: 3 },
			bar: { groupWidth: '75%' },
			colors: ['#FB3601', '#DD7E0F','#91AC13'],
			isStacked: true,
		  };
	
		   var chart = new google.visualization.ColumnChart(document.getElementById('post_div'));
		   chart.draw(data, options);
      }
	  
	  google.load('visualization', '1', {packages:['table']});
      google.setOnLoadCallback(drawTable);
      function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Type');
        data.addColumn('number', 'Number of posts');
        data.addColumn('number', 'Number of clicks');
        data.addRows([
          ['Facebook',  {v: <?php echo $this->model->getPostmessage('facebook'); ?>, f: '<?php echo $this->model->getPostmessage('facebook'); ?>'}, <?php echo (int) $this->model->getCountclick('facebook'); ?>],
          ['Twitter',   {v:<?php echo $this->model->getPostmessage('twitter'); ?>,   f: '<?php echo $this->model->getPostmessage('twitter'); ?>'},  <?php echo (int) $this->model->getCountclick('twitter'); ?>],
          ['Google', {v: <?php echo $this->model->getPostmessage('google'); ?>, f: '<?php echo $this->model->getPostmessage('google'); ?>'}, <?php echo (int) $this->model->getCountclick('google'); ?>],
          ['Linked-in',   {v: <?php echo $this->model->getPostmessage('linkedin'); ?>,  f: '<?php echo $this->model->getPostmessage('linkedin'); ?>'}, <?php echo (int) $this->model->getCountclick('linkedin'); ?>]
        ]);
		 var options = {			
			width: 700,
			height: 180,		
		  };

        var table = new google.visualization.Table(document.getElementById('table_div'));
        table.draw(data,options,{showRowNumber: true});
      }

</script>