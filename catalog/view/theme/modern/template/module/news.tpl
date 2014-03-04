<?php if ($news) { ?>
<div class="box">
  <div class="box-heading"><?php //echo $heading_title; ?></div>
  <div class="box-content2">
    <?php foreach ($news as $news_story ) { ?>
      <div class="box-news2" style="clear:both">
      <?php if($news_story["image"]!=""){?>
      <div class="thumb">
      <img src="<?php echo $news_story["image"]?>"></img>
      </div>
      <?php }?>
      <div class="summary">
        <?php if ($show_headline) { ?>
        <h4><?php echo $news_story['title']; ?></h4>
        <?php } ?>
        <?php echo $news_story['description']; ?> &nbsp; <br/>
        <a class="read-more" href="<?php echo $news_story['href']; ?>"><?php echo $text_read_more; ?></a></p>
        
        </div>
      </div>
    <?php } ?>
  </div>
</div>
<?php } ?>
