<?php echo $header; ?><?php echo $column_right; ?>
<div id="sixteen columns">
 <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
<?php echo $column_left; ?>
<div id="content"><?php echo $content_top; ?>
 <div class="line_left">
  <div class="line_right boss-padding">
  <h1><?php echo $heading_title; ?></h1>
  <?php echo $description; ?>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="gray_button"><span><?php echo $button_continue; ?></span></a></div>
  </div>
  </div>
  </div>
  <?php echo $content_bottom; ?></div>
 </div> 
<?php echo $footer; ?>