<?php if ($news) { ?>
<?php 
//var_dump($news);?>
<div class="box">
  <div class="box-heading"><?php //echo $heading_title; ?></div>
  <div class="box-content" >
    <?php foreach ($news as $news_story ) { ?>
      <div class="box-news" style="clear:both;color:#666666;">
      <?php if($news_story["image"]!=""){?>
      <div class="thumb" style="float:left">
      <img src="<?php echo $news_story["image"]?>"></img>
      </div>
      <?php }?>
      <div class="summary">
        <?php if ($show_headline) { ?>
        <h4>
        <a href="<?php echo $news_story['href']; ?>"><?php echo $news_story['title']; ?></a>
        </h4>
        <?php } ?>
        <?php echo $news_story['meta_description']; ?> &nbsp; <br/>
        <!--  
        <a class="read-more" href="<?php echo $news_story['href']; ?>"><?php echo $text_read_more; ?></a>
        -->
        </p>
      
        </div>
        
      </div>
         <?php } ?>
  </div>
</div>
<?php } ?>
