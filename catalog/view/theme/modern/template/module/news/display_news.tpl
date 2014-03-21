<div class="title">
<?php //var_dump($news_info) ?>
<?php echo $news_info["title"]?>
<!-- 
<span class="date"> (<?php echo $news_info["date_added"]?>)</span>
-->
</div>

<div style="float:left;margin-top:10px;">
<?php if(isset($news_info["thumb"])){?>
<img src="<?php echo $news_info["thumb"]?>" style="float:left; margin-right:10px"></img>
<?php }?>
<?php echo $news_info["meta_description"]?>
<?php echo $news_info["description"]?>
</div>
</div>