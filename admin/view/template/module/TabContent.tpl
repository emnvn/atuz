<?php echo $header; ?>

<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table id="module" class="list">
          <thead>
            <tr>
              <td class="left"><?php echo $entry_page; ?></td>
              <td class="left"><?php echo $entry_layout; ?></td>
              <td class="left"><?php echo $entry_position; ?></td>
              <td class="left"><?php echo $entry_status; ?></td>
              <td class="right"><?php echo $entry_sort_order; ?></td>
              <td></td>
            </tr>
          </thead>
          <?php $module_row = 0; ?>
          <script>
          function  attachDeleteEvent(moduleRow,productId){
      		
      		var boxId = 'information-page-'+moduleRow;
      		$('#'+boxId+'-'+productId+'  img').live('click', function() {
      	    	// alert("productId: "+productId);
      			$(this).parent().remove();
      			$('#'+boxId+' div:odd').attr('class', 'odd');
      			$('#'+boxId+' div:even').attr('class', 'even');
      			$('#'+boxId + '-pages').val($('#'+boxId + '-pages').val().replace(productId+",",""));            		
      		});
      	}
          </script>
          <?php foreach ($modules as $module) { ?>
          <tbody id="module-row<?php echo $module_row; ?>">
            <tr>
              <td class="left">
              <div class="scrollbox" id="information-page-<?php echo $module_row ?>">
                <?php $class = 'odd'; ?>
                <?php foreach ($module["informations"] as $informations) { ?>
                <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
                <div id="information-page-<?php echo $module_row; ?>-<?php echo $informations['information_id']; ?>" class="<?php echo $class; ?>"><?php echo $informations['title']; ?> <img src="view/image/delete.png" />
                	<input type="hidden" value="<?php echo $informations['information_id']; ?>" />
                </div>
                <script type="text/javascript">
               // attachDeleteEvent();
               		 attachDeleteEvent(<?php echo $module_row?>,<?php echo $informations['information_id']?>);
                </script>
                <?php } ?>
              </div>
              <input type="text" name="page-<?php echo $module_row ?>" value="" />
              <input type="hidden" id="information-page-<?php echo $module_row ?>-pages" name="TabContent_module[<?php echo $module_row; ?>][pages]" value="<?php echo $module['pages']; ?>" />
              </td>
              <td class="left"><select name="TabContent_module[<?php echo $module_row; ?>][layout_id]">
                  <?php foreach ($layouts as $layout) { ?>
                  <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                  <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
              <td class="left"><select name="TabContent_module[<?php echo $module_row; ?>][position]">
                  <?php if ($module['position'] == 'content_top') { ?>
                  <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                  <?php } else { ?>
                  <option value="content_top"><?php echo $text_content_top; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'content_bottom') { ?>
                  <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                  <?php } else { ?>
                  <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_left') { ?>
                  <option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
                  <?php } else { ?>
                  <option value="column_left"><?php echo $text_column_left; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_right') { ?>
                  <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                  <?php } else { ?>
                  <option value="column_right"><?php echo $text_column_right; ?></option>
                  <?php } ?>
                </select></td>
              <td class="left"><select name="TabContent_module[<?php echo $module_row; ?>][status]">
                  <?php if ($module['status']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
              <td class="right"><input type="text" name="TabContent_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
              <td class="left"><a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a></td>
            </tr>
          </tbody>
          <?php $module_row++; ?>
          <?php } ?>
          <tfoot>
            <tr>
              <td colspan="6"></td>
              <td class="left"><a onclick="addModule();" class="button"><?php echo $button_add_module; ?></a></td>
            </tr>
          </tfoot>
        </table>
      </form>
    </div>
  </div>
</div>

<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;
for(var row_index = 0;row_index<module_row; row_index++){
	attachEvent(row_index);
	
}

//function  attachDeleteEvent(moduleRow,productId){


function addModule() {	
	html  = '<tbody id="module-row' + module_row + '">';
	html += '  <tr>';
	html += '    <td class="left"><div id="information-page-'+module_row+'" class="scrollbox"></div>';
	html += '	 	<input type="text" name="page-'+module_row+'" value="" />';
	html += '		<input type="hidden" id="information-page-'+module_row+'-pages" name="TabContent_module[' + module_row + '][pages]" value="" size="10" /></td>';
	html += '    <td class="left"><select name="TabContent_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '      <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
	<?php } ?>
	html += '    </select></td>';
	html += '    <td class="left"><select name="TabContent_module[' + module_row + '][position]">';
	html += '      <option value="content_top"><?php echo $text_content_top; ?></option>';
	html += '      <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	html += '      <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '      <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '    </select></td>';
	html += '    <td class="left"><select name="TabContent_module[' + module_row + '][status]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
	html += '    <td class="right"><input type="text" name="TabContent_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    <td class="left"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
	$('#module tfoot').before(html);
	attachEvent(module_row);
	module_row++;
}

function attachEvent(module_row){
	var temp_id = module_row;
	$('input[name=\'page-'+module_row+'\']').autocomplete({
		delay: 0,
		source: function(request, response) {
			$.ajax({
				url: 'index.php?route=module/TabContent/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request.term),
				dataType: 'json',
				success: function(json) {
					response($.map(json, function(item) {
						return {
							label: item.title,
							value: item.information_id
						}
					}));
				}
			});
		}, 
		select: function(event, ui) {

			$('input[name=\'page-'+module_row+'\']').val('');
			var boxId='information-page-'+temp_id;
			$('#'+boxId + ui.item.value).remove();
			$('#'+boxId + '-pages').val($('#'+boxId + '-pages').val()+ui.item.value+",");
			$('#'+boxId).append('<div id="information-page-'+temp_id+'-' + ui.item.value + '">' + ui.item.label + '<img src="view/image/delete.png" /><input type="hidden" value="' + ui.item.value + '" /></div>');
			
			$('#'+boxId+' div:odd').attr('class', 'odd');
			$('#'+boxId+' div:even').attr('class', 'even');

			$('#'+boxId+'-'+ui.item.value+'  img').live('click', function() {
				$(this).parent().remove();
				$('#'+boxId+' div:odd').attr('class', 'odd');
				$('#'+boxId+' div:even').attr('class', 'even');
				$('#'+boxId + '-pages').val($('#'+boxId + '-pages').val().replace(ui.item.value+",",""));
			});
			
			return false;
		},
		focus: function(event, ui) {
	      	return false;
	   	}
	});
}
//--></script> 
<?php echo $footer; ?>