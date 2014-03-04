<div class="slideshow">
  <div id="bossslideshow<?php echo $module; ?>" class="flexslider" >
  
  <ul class="slides">
    <?php foreach ($banners as $banner) { ?>
    <li>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
    </li>
    <?php } ?>
    
    </ul>
    
  </div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	//alert("mot");
});

$(window).load(function(){
	//alert("hai");
	$('#bossslideshow<?php echo $module; ?>').flexslider({
		animation: "slide",
		slideshowSpeed: 4500,
		animationSpeed: 2000
		//start: function(slider){
		// $('body').removeClass('loading');
		//}
		});
	//alert("ba");
}); 
--></script>