<?php
jimport('joomla.application.component.modellist');
jimport('joomla.html.pagination');
JHtml::addIncludePath(JPATH_ADMINISTRATOR.'/components/com_content/helpers/html');
class autoSubmitContent {		
	protected static function getItemContent()
	{
		
		$db		= JFactory::getDbo();
		$query	= $db->getQuery(true);
		$user	= JFactory::getUser();		
		$mainframe = JFactory::getApplication();
		// Select the required fields from the table.
		$query->select(					
				'a.id, a.title, a.alias, a.checked_out, a.checked_out_time, a.catid' .
				', a.state, a.access, a.created, a.created_by, a.created_by_alias, a.ordering, a.featured, a.language, a.hits' .
				', a.publish_up, a.publish_down'			
		);
		$query->from('#__content AS a');

		// Join over the language
		$query->select('l.title AS language_title');
		$query->join('LEFT', $db->quoteName('#__languages').' AS l ON l.lang_code = a.language');

		// Join over the users for the checked out user.
		$query->select('uc.name AS editor');
		$query->join('LEFT', '#__users AS uc ON uc.id=a.checked_out');

		// Join over the asset groups.
		$query->select('ag.title AS access_level');
		$query->join('LEFT', '#__viewlevels AS ag ON ag.id = a.access');

		// Join over the categories.
		$query->select('c.title AS category_title');
		$query->join('LEFT', '#__categories AS c ON c.id = a.catid');

		// Join over the users for the author.
		$query->select('ua.name AS author_name');
		$query->join('LEFT', '#__users AS ua ON ua.id = a.created_by');		
		
		$poststatus = $mainframe->getUserStateFromRequest('com_content.posts.filter_poststatus', 'filter_poststatus', '', 'string');		
		if($poststatus =='notpost'){
			$query->where('(select count(*) from #__bt_messages AS bt where bt.params like CONCAT(\'%"id":"\',a.id,\'","table":"#__content"%\')) = 0');
		}elseif($poststatus =='posted'){
			$query->where('(select count(*) from #__bt_messages AS bt where bt.params like CONCAT(\'%"id":"\',a.id,\'","table":"#__content"%\')) > 0');
		}
		
		// Filter by access level.
		if ($access = $mainframe->getUserStateFromRequest('com_content.posts.filter.access', 'filter_access', 0, 'int')) {
			$query->where('a.access = ' . (int) $access);
		}

		// Implement View Level Access
		if (!$user->authorise('core.admin'))
		{
		    $groups	= implode(',', $user->getAuthorisedViewLevels());
			$query->where('a.access IN ('.$groups.')');
		}

		// Filter by published state
		$published = $mainframe->getUserStateFromRequest('com_content.posts.filter.published', 'filter_published', '');
		if (is_numeric($published)) {
			$query->where('a.state = ' . (int) $published);
		}
		elseif ($published === '') {
			$query->where('(a.state = 0 OR a.state = 1)');
		}
		
		$baselevel = 1;
		$categoryId = $mainframe->getUserStateFromRequest('com_content.posts.filter.category_id', 'filter_category_id');
		if (is_numeric($categoryId)) {
			$cat_tbl = JTable::getInstance('Category', 'JTable');
			$cat_tbl->load($categoryId);
			$rgt = $cat_tbl->rgt;
			$lft = $cat_tbl->lft;
			$baselevel = (int) $cat_tbl->level;
			$query->where('c.lft >= '.(int) $lft);
			$query->where('c.rgt <= '.(int) $rgt);
		}
		elseif (is_array($categoryId)) {
			JArrayHelper::toInteger($categoryId);
			$categoryId = implode(',', $categoryId);
			$query->where('a.catid IN ('.$categoryId.')');
		}	
		
		$search = $mainframe->getUserStateFromRequest('com_content.posts.filter.search', 'filter_search');
		if (!empty($search)) {
			if (stripos($search, 'id:') === 0) {
				$query->where('a.id = '.(int) substr($search, 3));
			}
			elseif (stripos($search, 'author:') === 0) {
				$search = $db->Quote('%'.$db->escape(substr($search, 7), true).'%');
				$query->where('(ua.name LIKE '.$search.' OR ua.username LIKE '.$search.')');
			}
			else {
				$search = $db->Quote('%'.$db->escape($search, true).'%');
				$query->where('(a.title LIKE '.$search.' OR a.alias LIKE '.$search.')');
			}
		}
	
		if ($language = $mainframe->getUserStateFromRequest('com_content.posts.filter.language', 'filter_language', '')) {
			$query->where('a.language = '.$db->quote($language));
		}	
		$listOrder			= $mainframe->getUserStateFromRequest('com_content.posts.posts.filter_order', 'filter_order', 	'a.title', 'cmd' );
		$listDirn	= $mainframe->getUserStateFromRequest('com_content.posts.posts.filter_order_Dir',	'filter_order_Dir',	'DESC', 'word' );
		
		if ($listOrder && $listDirn)
		{		
			$query .= " ORDER BY {$listOrder} {$listDirn} ";
		}
		
		$limit = $mainframe->getUserStateFromRequest('global.list.limit', 'limit', $mainframe->getCfg('list_limit'), 'int');
		$limitstart = $mainframe->getUserStateFromRequest('com_content.posts.limitstart', 'limitstart', 0, 'int');		
		$db->setQuery($query, $limitstart, $limit);
		$items = $db->loadObjectList();		
		return $items;		
	}
	
	static function getTotal()
	{
		$db		= JFactory::getDbo();
		$query	= $db->getQuery(true);
		$user	= JFactory::getUser();		
		$mainframe = JFactory::getApplication();
		// Select the required fields from the table.
		$query->select(					
				'a.id, a.title, a.alias, a.checked_out, a.checked_out_time, a.catid' .
				', a.state, a.access, a.created, a.created_by, a.created_by_alias, a.ordering, a.featured, a.language, a.hits' .
				', a.publish_up, a.publish_down'			
		);
		$query->from('#__content AS a');

		// Join over the language
		$query->select('l.title AS language_title');
		$query->join('LEFT', $db->quoteName('#__languages').' AS l ON l.lang_code = a.language');

		// Join over the users for the checked out user.
		$query->select('uc.name AS editor');
		$query->join('LEFT', '#__users AS uc ON uc.id=a.checked_out');

		// Join over the asset groups.
		$query->select('ag.title AS access_level');
		$query->join('LEFT', '#__viewlevels AS ag ON ag.id = a.access');

		// Join over the categories.
		$query->select('c.title AS category_title');
		$query->join('LEFT', '#__categories AS c ON c.id = a.catid');

		// Join over the users for the author.
		$query->select('ua.name AS author_name');
		$query->join('LEFT', '#__users AS ua ON ua.id = a.created_by');		
		
		$poststatus = $mainframe->getUserStateFromRequest('com_content.posts.filter_poststatus', 'filter_poststatus', 0, 'string');
		
		if($poststatus =='notpost'){
			$query->where('(select count(*) from #__bt_messages AS bt where bt.params like CONCAT(\'%"id":"\',a.id,\'","table":"#__content"%\')) = 0');
		}elseif($poststatus =='posted'){
			$query->where('(select count(*) from #__bt_messages AS bt where bt.params like CONCAT(\'%"id":"\',a.id,\'","table":"#__content"%\')) > 0');
		}
		
		// Filter by access level.
		if ($access = $mainframe->getUserStateFromRequest('com_content.posts.filter.access', 'filter_access', 0, 'int')) {
			$query->where('a.access = ' . (int) $access);
		}

		// Implement View Level Access
		if (!$user->authorise('core.admin'))
		{
		    $groups	= implode(',', $user->getAuthorisedViewLevels());
			$query->where('a.access IN ('.$groups.')');
		}

		// Filter by published state
		$published = $mainframe->getUserStateFromRequest('com_content.posts.filter.published', 'filter_published', '');
		if (is_numeric($published)) {
			$query->where('a.state = ' . (int) $published);
		}
		elseif ($published === '') {
			$query->where('(a.state = 0 OR a.state = 1)');
		}
		
		$baselevel = 1;
		$categoryId = $mainframe->getUserStateFromRequest('com_content.posts.filter.category_id', 'filter_category_id');
		if (is_numeric($categoryId)) {
			$cat_tbl = JTable::getInstance('Category', 'JTable');
			$cat_tbl->load($categoryId);
			$rgt = $cat_tbl->rgt;
			$lft = $cat_tbl->lft;
			$baselevel = (int) $cat_tbl->level;
			$query->where('c.lft >= '.(int) $lft);
			$query->where('c.rgt <= '.(int) $rgt);
		}
		elseif (is_array($categoryId)) {
			JArrayHelper::toInteger($categoryId);
			$categoryId = implode(',', $categoryId);
			$query->where('a.catid IN ('.$categoryId.')');
		}	
		
		$search = $mainframe->getUserStateFromRequest('com_content.posts.filter.search', 'filter_search');
		if (!empty($search)) {
			if (stripos($search, 'id:') === 0) {
				$query->where('a.id = '.(int) substr($search, 3));
			}
			elseif (stripos($search, 'author:') === 0) {
				$search = $db->Quote('%'.$db->escape(substr($search, 7), true).'%');
				$query->where('(ua.name LIKE '.$search.' OR ua.username LIKE '.$search.')');
			}
			else {
				$search = $db->Quote('%'.$db->escape($search, true).'%');
				$query->where('(a.title LIKE '.$search.' OR a.alias LIKE '.$search.')');
			}
		}
	
		if ($language = $mainframe->getUserStateFromRequest('com_content.posts.filter.language', 'filter_language', '')) {
			$query->where('a.language = '.$db->quote($language));
		}
		$db->setQuery($query);
		$items =count($db->loadObjectList());
		
		return $items;	
	}
	
	public static function display(){
		
		if (JFactory::getApplication()->isSite()) {
			JSession::checkToken('get') or die(JText::_('JINVALID_TOKEN'));
		}

		require_once JPATH_ROOT . '/components/com_content/helpers/route.php';
		$mainframe = JFactory::getApplication();
		JHtml::addIncludePath(JPATH_COMPONENT.'/helpers/html');
		JHtml::_('behavior.tooltip');			
		$access = $mainframe->getUserStateFromRequest('com_content.posts.filter.access', 'filter_access', 0, 'int');	
		$published = $mainframe->getUserStateFromRequest('com_content.posts.filter.published', 'filter_published', '');
		$category_id =$mainframe->getUserStateFromRequest('com_content.posts.filter.category_id', 'filter_category_id');
		$language =$mainframe->getUserStateFromRequest('com_content.posts.filter.language', 'filter_language', '');
		$search = $mainframe->getUserStateFromRequest('com_content.posts.filter.search', 'filter_search');
		$listOrder			= $mainframe->getUserStateFromRequest('com_content.posts.posts.filter_order', 'filter_order', 	'a.title', 'cmd' );
		$listDirn	= $mainframe->getUserStateFromRequest('com_content.posts.posts.filter_order_Dir',	'filter_order_Dir',	'DESC', 'word' );
		$limit = $mainframe->getUserStateFromRequest('global.list.limit', 'limit', $mainframe->getCfg('list_limit'), 'int');
		$limitstart = $mainframe->getUserStateFromRequest('com_content.posts.limitstart', 'limitstart', 0, 'int');	
		$filter_poststatus= $mainframe->getUserStateFromRequest('com_content.posts.filter_poststatus', 'filter_poststatus', 0, 'string');
		$poststatus = array();
		$poststatus[] = JHTML::_('select.option', -1, JText::_('COM_BT_SOCIALCONNECT_ADDING_STATUS'));
		$poststatus[] = JHtml::_('select.option', 'notpost', JText::_('COM_BT_SOCIALCONNECT_NOT_YET'));
		$poststatus[] = JHtml::_('select.option', 'posted', JText::_('COM_BT_SOCIALCONNECT_ADDED'));
		
		$total =self::getTotal();		
		$pageNav = new JPagination($total, $limitstart, $limit);		
		$items =self::getItemContent();		
		$html ='<div id="admin-loading">'
				.'	<fieldset class="filter clearfix">'
				.'	<div class="left">'
				.'	<label  style="display:inline" for="filter_search">'.JText::_('JSEARCH_FILTER_LABEL').'</label>'
				.'	<input type="text" name="filter_search" id="filter_search" value="'.$search.'" size="30" title="'.JText::_('COM_CONTENT_FILTER_SEARCH_DESC').'" />'
				.'	<button  class="btn btn-small" type="submit">'.JText::_('JSEARCH_FILTER_SUBMIT').'</button>'
				.'	<button  class="btn btn-small" type="button" onclick="document.id(\'filter_search\').value=\'\';this.form.submit();">'.JText::_('JSEARCH_FILTER_CLEAR').'</button>'
				.'	</div>'
				.'	<div class="right">'
				.'<select name="filter_poststatus" class="inputbox" onchange="this.form.submit()">'				
					.JHtml::_('select.options', $poststatus, 'value', 'text', $filter_poststatus).''
				.'	</select>'
				.'	<select name="filter_access" class="inputbox" onchange="this.form.submit()">'
				.'		<option value="">'.JText::_('JOPTION_SELECT_ACCESS').'</option>'
						.JHtml::_('select.options', JHtml::_('access.assetgroups'), 'value', 'text', $access).''
				.'	</select>'
				.'	<select name="filter_published" class="inputbox" onchange="this.form.submit()">'
				.'		<option value="">'.JText::_('JOPTION_SELECT_PUBLISHED').'</option>'
						.JHtml::_('select.options', JHtml::_('jgrid.publishedOptions'), 'value', 'text',$published, true).''
				.'	</select>'
				.'	<select name="filter_category_id" class="inputbox" onchange="this.form.submit()">'
				.'		<option value="">'.JText::_('JOPTION_SELECT_CATEGORY').'</option>'
						.JHtml::_('select.options', JHtml::_('category.options', 'com_content'), 'value', 'text', $category_id).''
				.'	</select>'
				.'	<select name="filter_language" class="inputbox" onchange="this.form.submit()">'
				.'		<option value="">'. JText::_('JOPTION_SELECT_LANGUAGE').'</option>'
						.JHtml::_('select.options', JHtml::_('contentlanguage.existing', true, true), 'value', 'text',$language).''
				.'	</select>'
				
				.'	</div>'
				.'	</fieldset>'	
				.'<table class="adminlist table table-striped">'
				.'<thead>'
				.'	<tr>'
				.'		<th width="1%">'
				.'			<input type="checkbox" name="checkall-toggle" value="" title="'.JText::_('JGLOBAL_CHECK_ALL').'" onclick="Joomla.checkAll(this)" />'
				.'		</th>'
				.'		<th class="title">'
						.JHtml::_('grid.sort', 'JGLOBAL_TITLE', 'a.title', $listDirn, $listOrder).''
				.'		</th>'
				.'		<th width="5%">'
						.JHtml::_('grid.sort', 'JSTATUS', 'a.state', $listDirn, $listOrder).''
				.'		</th>'
				.'	<th width="5%">'
						. JHtml::_('grid.sort', 'JFEATURED', 'a.featured', $listDirn, $listOrder, NULL, 'desc').''
				.'	</th>'
				.'		<th width="15%">'
							.JHtml::_('grid.sort',  'JGRID_HEADING_ACCESS', 'access_level', $listDirn, $listOrder).''
				.'		</th>'
				.'		<th width="15%">'
							.JHtml::_('grid.sort', 'JCATEGORY', 'a.catid', $listDirn, $listOrder).''
				.'		</th>'
				.'		<th width="5%">'
							.JHtml::_('grid.sort', 'JGRID_HEADING_LANGUAGE', 'language', $listDirn, $listOrder).''
				.'		</th>'
				.'		<th width="5%">'
							.JHtml::_('grid.sort',  'JDATE', 'a.created', $listDirn, $listOrder).''
				.'		</th>'
				.'		<th width="1%" class="nowrap">'
						.JHtml::_('grid.sort', 'JGRID_HEADING_ID', 'a.id', $listDirn, $listOrder).''
				.'		</th>'
				.'	</tr>'
				.'</thead>'	
				.'<tfoot>'
				.'	<tr>'
				.'		<td colspan="15">'
						.$pageNav->getListFooter().''
				.'		</td>'
				.'	</tr>'
				.'</tfoot>';				
				$html.= '<tbody>';
				
			foreach ($items as $i => $item) :
				$html .='<tr class="row'.($i % 2).'">'
						.'<td class="center">'
							.JHtml::_('grid.id', $i, $item->id).''
						.'</td>'						
						.'<td>'			
							.$item->title.''
						.'</td>'
						.'<td class="center">'
						.JHtml::_('jgrid.published', $item->state, $i, 'articles.','', 'cb', $item->publish_up, $item->publish_down).''
						.'</td>'
						.'<td class="center">'
							.JHtml::_('contentadministrator.featured', $item->featured, $i, '').''
						.'</td>'
						.'<td class="center">'
							.$item->access_level.''
						.'</td>'
						.'<td class="center">'
							.$item->category_title.''
						.'</td>'
						.'<td class="center">';
							 if ($item->language=='*'):
								$html.=JText::alt('JALL', 'language');
							 else:
								$html.=$item->language_title ? $item->language_title : JText::_('JUNDEFINED');
							 endif;
						$html.= '</td>'
						.'<td class="center nowrap">'
							.JHtml::_('date', $item->created, JText::_('DATE_FORMAT_LC4')).''
						.'</td>'
						.'<td class="center">'
							. $item->id.''
						.'</td>'
						.'</tr>';
				endforeach;
			$html .='</tbody>'
				.'</table>'
				.'<div>'
					.'<input type="hidden" name="task" value="" />'
					.'<input type="hidden" name="boxchecked" value="0" />'
					.'<input type="hidden" name="filter_order" value="'.$listOrder.'" />'
					.'<input type="hidden" name="filter_order_Dir" value="'.$listDirn.'" />'
					.JHtml::_('form.token').''
				.'</div>'
				.'	</div>' ;					
		echo $html;		
			
	}
}


?>