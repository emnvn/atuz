

<h1><?php echo $heading_title; ?></h1>
  <?php if (isset($news_info)) { ?>
    <div class="content" <?php if ($image) { echo 'style="min-height: ' . $min_height . 'px;"'; } ?>>
      <?php if ($image) { ?>
        <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="fancybox"><img align="right" style="border: none; margin-left: 10px;" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
      <?php } ?>
      <?php echo $description; ?>
    </div>
    <div class="buttons">
      <div class="right"><a onclick="location='<?php echo $news; ?>'" class="button"><span><?php echo $button_news; ?></span></a></div>
    </div>
  <?php } elseif (isset($news_data)) { ?>
    <?php foreach ($news_data as $news) { ?>
      <div class="content">
        <h3 style="margin-top: 5px;"><?php echo $news['title']; ?></h3>
        <?php echo $news['description']; ?> &hellip; <a href="<?php echo $news['href']; ?>"><?php echo $text_read_more; ?></a></p>
        <p><b><?php echo $text_date_available; ?></b>&nbsp;<?php echo $news['date_available']; ?></p>
      </div>
    <?php } ?>
  <?php } ?>
