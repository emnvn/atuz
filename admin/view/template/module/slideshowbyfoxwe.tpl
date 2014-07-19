<?php
/*********************************************
Author : Stephen Hudson - Foxwe Studio
Extname: Slide Show by Foxwe
Date   : 2011-01-26
Ver	   : 1.1.0
Site   : http://www.foxwe.com
Email  : stephen@foxwe.com
**********************************************/
?>

<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<!--Box-->
<div class="box">
	<div class="left"></div>
	<div class="right"></div>
	<!--Heading-->
	<div class="heading">
		<h1 style="background-image: url('view/image/module.png');"><?php echo $heading_title; ?></h1>
		<div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
	</div>
	<!--Content-->
	<div class="content">
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
			<table class="form">
				<!--Status-->
				<tr>
				  <td><?php echo $entry_status; ?></td>
				  <td><select name="slideshowbyfoxwe_status">
					  <?php if ($slideshowbyfoxwe_status) { ?>
					  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
					  <option value="0"><?php echo $text_disabled; ?></option>
					  <?php } else { ?>
					  <option value="1"><?php echo $text_enabled; ?></option>
					  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
					  <?php } ?>
					</select></td>
					
					<td width="20%"><?php echo $entry_sort_order; ?></td>
					<td><input name="slideshowbyfoxwe_sort_order" type="text" value="<?php if(isset($slideshowbyfoxwe_sort_order)) {echo $slideshowbyfoxwe_sort_order; } ?>" /></td>
				</tr>
				<!--Position-->
				<tr>
				  <td><?php echo $entry_position; ?></td>
				  <td><select name="slideshowbyfoxwe_position">
				      <?php if ($version != '1.4.7') { ?>
						  <?php if ($slideshowbyfoxwe_position == 'home') { ?>
						  <option value="content_top" selected="selected">Content top</option>
						  <?php } else { ?>
						  <option value="content_top">Content top</option>
						  <?php } ?>
					  <?php } ?>
					  
					  <?php if ($slideshowbyfoxwe_position == 'left') { ?>
					  <option value="left" selected="selected"><?php echo $text_left; ?></option>
					  <?php } else { ?>
					  <option value="left"><?php echo $text_left; ?></option>
					  <?php } ?>
					  
					  <?php if ($slideshowbyfoxwe_position == 'right') { ?>
					  <option value="right" selected="selected"><?php echo $text_right; ?></option>
					  <?php } else { ?>
					  <option value="right"><?php echo $text_right; ?></option>
					  <?php } ?>
					</select></td>

				  <td width="20%"><?php echo $entry_caption; ?></td>
				  <td><select name="slideshowbyfoxwe_caption">
					  <?php if (isset($slideshowbyfoxwe_caption)) { $selected = "selected"; ?>
					  <option value="0" <?php if($slideshowbyfoxwe_caption=='0'){echo $selected;} ?>>0</option>
					  <option value="0.1" <?php if($slideshowbyfoxwe_caption=='0.1'){echo $selected;} ?>>0.1</option>
					  <option value="0.2" <?php if($slideshowbyfoxwe_caption=='0.2'){echo $selected;} ?>>0.2</option>
					  <option value="0.3" <?php if($slideshowbyfoxwe_caption=='0.3'){echo $selected;} ?>>0.3</option>
					  <option value="0.4" <?php if($slideshowbyfoxwe_caption=='0.4'){echo $selected;} ?>>0.4</option>
					  <option value="0.5" <?php if($slideshowbyfoxwe_caption=='0.5'){echo $selected;} ?>>0.5</option>
					  <option value="0.6" <?php if($slideshowbyfoxwe_caption=='0.6'){echo $selected;} ?>>0.6</option>
					  <option value="0.7" <?php if($slideshowbyfoxwe_caption=='0.7'){echo $selected;} ?>>0.7</option>
					  <option value="0.8" <?php if($slideshowbyfoxwe_caption=='0.8'){echo $selected;} ?>>0.8</option>
					  <option value="0.9" <?php if($slideshowbyfoxwe_caption=='0.9'){echo $selected;} ?>>0.9</option>
					  <option value="1.0" <?php if($slideshowbyfoxwe_caption=='1.0'){echo $selected;} ?>>1.0</option>
					  <?php } else { ?>
					  <option selected="selected"><?php echo $text_select; ?></option>
					  <option value="0">0</option>
					  <option value="0.1">0.1</option>
					  <option value="0.2">0.2</option>
					  <option value="0.3">0.3</option>
					  <option value="0.4">0.4</option>
					  <option value="0.5">0.5</option>
					  <option value="0.6">0.6</option>
					  <option value="0.7">0.7</option>
					  <option value="0.8">0.8</option>
					  <option value="0.9">0.9</option>
					  <option value="1.0">1.0</option>
					  <?php } ?>
					</select></td>
				</tr>

				<!--Pause On Mouseover-->
				<tr>				
				  <td><?php echo $entry_effect; ?></td>
				  <td><select name="slideshowbyfoxwe_effect">
					  <?php if (isset($slideshowbyfoxwe_effect)) { $selected = "selected"; ?>
					  <option value="random" <?php if($slideshowbyfoxwe_effect=='random'){echo $selected;} ?>>Random</option>
					  <option value="fade" <?php if($slideshowbyfoxwe_effect=='fade'){echo $selected;} ?>>Fade</option>
					  <option value="fold" <?php if($slideshowbyfoxwe_effect=='fold'){echo $selected;} ?>>Fold</option>
					  <option value="slideInRight" <?php if($slideshowbyfoxwe_effect=='slideInRight'){echo $selected;} ?>>Slide In Right</option>
					  <option value="slideInLeft" <?php if($slideshowbyfoxwe_effect=='slideInLeft'){echo $selected;} ?>>Slide In Left</option>
					  <option value="sliceDown" <?php if($slideshowbyfoxwe_effect=='sliceDown'){echo $selected;} ?>>Slice Down</option>
					  <option value="sliceDownLeft" <?php if($slideshowbyfoxwe_effect=='sliceDownLeft'){echo $selected;} ?>>Slice Down Left</option>
					  <option value="sliceUp" <?php if($slideshowbyfoxwe_effect=='sliceUp'){echo $selected;} ?>>Slice Up</option>
					  <option value="sliceUpLeft" <?php if($slideshowbyfoxwe_effect=='sliceUpLeft'){echo $selected;} ?>>Slice Up Left</option>
					  <option value="sliceUpDown" <?php if($slideshowbyfoxwe_effect=='sliceUpDown'){echo $selected;} ?>>Slice Up Down</option>
					  <option value="sliceUpDownLeft" <?php if($slideshowbyfoxwe_effect=='sliceUpDownLeft'){echo $selected;} ?>>Slice Up Down Left</option>
					  <?php } else { ?>
					  <option selected="selected"><?php echo $text_select; ?></option>
					  <option value="random">Random</option>
					  <option value="fade">Fade</option>
					  <option value="fold">Fold</option>
					  <option value="slideInRight">Slide In Right</option>
					  <option value="slideInLeft">Slide In Left</option>
					  <option value="sliceDown">Slice Down</option>
					  <option value="sliceDownLeft">Slice Down Left</option>
					  <option value="sliceUp">Slice Up</option>
					  <option value="sliceUpLeft">Slice Up Left</option>
					  <option value="sliceUpDown">Slice Up Down</option>
					  <option value="sliceUpDownLeft">Slice Up Down Left</option>
					  <?php } ?>
					</select></td>
				  <td width="20%"><?php echo $entry_pause; ?>
				  <?php echo $tips_pause; ?></td>
				  <td><select name="slideshowbyfoxwe_pause">
					  <?php if ($slideshowbyfoxwe_pause) { ?>
					  <option value="1" selected="selected"><?php echo $text_true; ?></option>
					  <option value="0"><?php echo $text_false; ?></option>
					  <?php } else { ?>
					  <option value="1"><?php echo $text_true; ?></option>
					  <option value="0" selected="selected"><?php echo $text_false; ?></option>
					  <?php } ?>
					</select></td>
				</tr>
				
				<!--Delay & Speed-->
				<tr>
				  <!---Delay-->
				  <td><?php echo $entry_delay; ?>
				  <?php echo $tips_delay; ?>
				  </td>
				  <td><select name="slideshowbyfoxwe_delay">
					  <?php if (isset($slideshowbyfoxwe_delay)) { $selected = "selected"; ?>
					  <option value="1000" <?php if($slideshowbyfoxwe_delay=='1000'){echo $selected;} ?>>1000</option>
					  <option value="2000" <?php if($slideshowbyfoxwe_delay=='2000'){echo $selected;} ?>>2000</option>
					  <option value="3000" <?php if($slideshowbyfoxwe_delay=='3000'){echo $selected;} ?>>3000</option>
					  <option value="4000" <?php if($slideshowbyfoxwe_delay=='4000'){echo $selected;} ?>>4000</option>
					  <option value="5000" <?php if($slideshowbyfoxwe_delay=='5000'){echo $selected;} ?>>5000</option>
					  <option value="6000" <?php if($slideshowbyfoxwe_delay=='6000'){echo $selected;} ?>>6000</option>
					  <option value="7000" <?php if($slideshowbyfoxwe_delay=='7000'){echo $selected;} ?>>7000</option>
					  <option value="8000" <?php if($slideshowbyfoxwe_delay=='8000'){echo $selected;} ?>>8000</option>
					  <option value="9000" <?php if($slideshowbyfoxwe_delay=='9000'){echo $selected;} ?>>9000</option>
					  <option value="10000" <?php if($slideshowbyfoxwe_delay=='10000'){echo $selected;} ?>>10000</option>
					  <?php } else { ?>
					  <option selected="selected"><?php echo $text_select; ?></option>
					  <option value="1000">1000</option>
					  <option value="2000">2000</option>
					  <option value="3000">3000</option>
					  <option value="4000">4000</option>
					  <option value="5000">5000</option>
					  <option value="6000">6000</option>
					  <option value="7000">7000</option>
					  <option value="8000">8000</option>
					  <option value="9000">9000</option>
					  <option value="10000">10000</option>
					  <?php } ?>
					</select></td>
					
				  <!---Speed-->
				  <td width="20%"><?php echo $entry_speed; ?>
				  <?php echo $tips_speed; ?>
				  </td>
				  <td><select name="slideshowbyfoxwe_speed">
					  <?php if (isset($slideshowbyfoxwe_speed)) { $selected = "selected"; ?>
					  <option value="1000" <?php if($slideshowbyfoxwe_speed=='1000'){echo $selected;} ?>>1000</option>
					  <option value="2000" <?php if($slideshowbyfoxwe_speed=='2000'){echo $selected;} ?>>2000</option>
					  <option value="3000" <?php if($slideshowbyfoxwe_speed=='3000'){echo $selected;} ?>>3000</option>
					  <option value="4000" <?php if($slideshowbyfoxwe_speed=='4000'){echo $selected;} ?>>4000</option>
					  <option value="5000" <?php if($slideshowbyfoxwe_speed=='5000'){echo $selected;} ?>>5000</option>
					  <option value="6000" <?php if($slideshowbyfoxwe_speed=='6000'){echo $selected;} ?>>6000</option>
					  <option value="7000" <?php if($slideshowbyfoxwe_speed=='7000'){echo $selected;} ?>>7000</option>
					  <option value="8000" <?php if($slideshowbyfoxwe_speed=='8000'){echo $selected;} ?>>8000</option>
					  <option value="9000" <?php if($slideshowbyfoxwe_speed=='9000'){echo $selected;} ?>>9000</option>
					  <option value="10000" <?php if($slideshowbyfoxwe_speed=='10000'){echo $selected;} ?>>10000</option>
					  <?php } else { ?>
					  <option selected="selected"><?php echo $text_select; ?></option>
					  <option value="1000">1000</option>
					  <option value="2000">2000</option>
					  <option value="3000">3000</option>
					  <option value="4000">4000</option>
					  <option value="5000">5000</option>
					  <option value="6000">6000</option>
					  <option value="7000">7000</option>
					  <option value="8000">8000</option>
					  <option value="9000">9000</option>
					  <option value="10000">10000</option>
					  <?php } ?>
					</select></td>
				</tr>
				
				<!--Nav & Nav Hide-->
				<tr>				
				  <td><?php echo $entry_nav; ?>
				  <?php echo $tips_nav; ?></td>
				  <td><select name="slideshowbyfoxwe_nav">
					  <?php if ($slideshowbyfoxwe_nav) { ?>
					  <option value="1" selected="selected"><?php echo $text_true; ?></option>
					  <option value="0"><?php echo $text_false; ?></option>
					  <?php } else { ?>
					  <option value="1"><?php echo $text_true; ?></option>
					  <option value="0" selected="selected"><?php echo $text_false; ?></option>
					  <?php } ?>
					</select></td>
				  
				  <td width="20%"><?php echo $entry_navh; ?>
				  <?php echo $tips_navh; ?></td>
				  <td><select name="slideshowbyfoxwe_navh">
					  <?php if ($slideshowbyfoxwe_navh) { ?>
					  <option value="1" selected="selected"><?php echo $text_true; ?></option>
					  <option value="0"><?php echo $text_false; ?></option>
					  <?php } else { ?>
					  <option value="1"><?php echo $text_true; ?></option>
					  <option value="0" selected="selected"><?php echo $text_false; ?></option>
					  <?php } ?>
					</select></td>
				</tr>
				
				<!--Height & Width-->
				<tr>
				  <td><?php echo $entry_height; ?>
				  <span class="help"><?php echo $tips_height; ?></span></td>
				  <td><input name="slideshowbyfoxwe_height" type="text" value="<?php if(isset($slideshowbyfoxwe_height)) { echo $slideshowbyfoxwe_height; } ?>" /></td>

				  <td width="20%"><?php echo $entry_width; ?>
				  <span class="help"><?php echo $tips_width; ?></span></td>
				  <td><input name="slideshowbyfoxwe_width" type="text" value="<?php if(isset($slideshowbyfoxwe_width)) {echo $slideshowbyfoxwe_width; } ?>" /></td>
				</tr>
				<!--Add Slide Tips-->
				<tr>
				  <td colspan="4"><h3><?php echo $entry_addimg; ?></h3>
				  </td>
				</tr>
				<!--Image Box-->
				<tr>
					<td colspan="4">
						<table id="images" class="list">
							  <?php $image_row = 0; ?>
							  <?php
							  if(!empty($slide_images)){
									foreach ($slide_images as $key=>$slide_image) {
							  if(empty($slide_image['file'])){$preview_image = $no_image;}else{$preview_image = HTTP_IMAGE . $slide_image['file']; }
							  if(!isset($slide_image['url'])){ $slide_image['url'] == ""; }
							  if(!isset($slide_image['alt'])){ $slide_image['alt'] == ""; }
							  if(!isset($slide_image['descp'])){ $slide_image['descp'] == ""; }
							  ?>
							  <tbody id="image_row<?php echo $image_row; ?>">
								<tr>
								  <td class="left"><input type="hidden" name="slide_image[<?php echo $image_row; ?>][file]" value="<?php echo $slide_image['file']; ?>" id="image<?php echo $image_row; ?>" />
								  <img src="<?php echo $preview_image; ?>" alt="<?php echo $tips_browse; ?>" id="preview<?php echo $image_row; ?>" onclick="alert('abc');" style="cursor:pointer;height:100px;width:100px;" />&nbsp;
								  eee
								  </td>
								  <td><?php echo $entry_link; ?>
								  <input type="text" name="slide_image[<?php echo $image_row; ?>][url]" value="<?php echo $slide_image['url'] ?>" id="url<?php echo $image_row; ?>" /><?php echo $tips_link; ?><br />
								  <?php echo $entry_alt; ?>
								  <input type="text" name="slide_image[<?php echo $image_row; ?>][alt]" value="<?php echo $slide_image['alt'] ?>" id="alt<?php echo $image_row; ?>" /><?php echo $tips_alt; ?><br />
								  <?php echo $entry_target; ?>
								  <select name="slide_image[<?php echo $image_row; ?>][target]">
								  <?php if (isset($slide_image['target'])) {
								  $selected = "selected";
								  ?>
								  <option value="_self" <?php if($slide_image['target']=='_self'){echo $selected;} ?>>Same Window</option>
								  <option value="_new" <?php if($slide_image['target']=='_new'){echo $selected;} ?>>New Tab</option>
								  <option value="_blank" <?php if($slide_image['target']=='_blank'){echo $selected;} ?>>New Window</option>
								  <?php } else { ?>
								  <option selected="selected"><?php echo $text_select; ?></option>
								  <option value="_self">Same Window</option>
								  <option value="_new">New Tab</option>
								  <option value="_blank">New Window</option>
								  <?php } ?>
								  </select>
								  </td>
								  <td class="left"><?php echo $entry_descp; ?><br /><textarea name="slide_image[<?php echo $image_row; ?>][descp]" cols="40" rows="5"><?php echo $slide_image['descp'] ?></textarea></td>
								  <td class="left"><a onclick="$('#image_row<?php echo $image_row; ?>').remove();" class="button"><span><?php echo $button_remove; ?></span></a></td>
								
								</tr>
							  </tbody>
							  <?php $image_row++; ?>
							  <?php }
							  } ?>
							  <tfoot>
								<tr>
								  <td class="left" colspan="3"></td><td class="left"><a onclick="addImage();" class="button"><span><?php echo $button_add; ?></span></a></td>
								</tr>
							  </tfoot>	  
						</table>
					</td>
				</tr>
				<tr>
				<td>designed by <a href="http://www.foxwe.com">Foxwe Studio</a></td>
				</tr>
				
			</table>
		</form>
	</div>
</div>
<script type="text/javascript" src="view/javascript/jquery/ui/ui.draggable.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/ui.resizable.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/ui.dialog.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/external/bgiframe/jquery.bgiframe.js"></script>
<script type="text/javascript"><!--
function image_upload(field, preview) {
	alert("field: "+field);
}
function image_upload2(field, preview) {
	
	$('#dialog').remove();

	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $this->session->data['token']; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');

	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $this->session->data['token']; ?>',
					type: 'POST',
					data: 'image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" style="cursor:pointer;height:100px;width:100px;" onclick="image_upload(\'' + field + '\', \'' + preview + '\');" />');
					}
				});
			}
		},
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script>
<script type="text/javascript"><!--
var image_row = <?php echo $image_row; ?>;

function addImage() {
    html  = '<tbody id="image_row' + image_row + '">';
	html += '<tr>';
	html += '<td class="left">abc<input type="hidden" name="slide_image[' + image_row + '][file]" value="" id="image' + image_row + '" /><img src="<?php echo $no_image; ?>" alt="<?php echo $tips_browse; ?>" id="preview' + image_row + '" style="cursor:pointer;height:100px;width:100px;" onclick="alert('a');" />eee</td>';
	html += '<td class="left"><?php echo $entry_link; ?><input type="text" name="slide_image[' + image_row + '][url]" value="" id="url' + image_row + '" /><?php echo $tips_link; ?><br />';
	html += '<?php echo $entry_alt; ?><input type="text" name="slide_image[' + image_row + '][alt]" value="" id="alt' + image_row + '" /><?php echo $tips_alt; ?><br />';
	html += '<?php echo $entry_target; ?><select name="slide_image[' + image_row + '][target]"><option selected="selected"><?php echo $text_select; ?></option><option value="_self">Same Window</option><option value="_new">New Tab</option><option value="_blank">New Window</option></select></td>';
	html += '<td class="left"><?php echo $entry_descp; ?><br /><textarea name="slide_image[' + image_row + '][descp]" cols="40" rows="5"></textarea></td>'
	html += '<td class="left"><a onclick="$(\'#image_row' + image_row  + '\').remove();" class="button"><span><?php echo $button_remove; ?></span></a></td>';
	html += '</tr>';
	html += '</tbody>';
	$('#images tfoot').before(html);
	image_row++;
}
//--></script>
<?php echo $footer; ?>