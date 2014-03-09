<div class="boss_carousel">
	<h2>Web design Portfolio</h2>
	<p></p>
	<div id="boss_carousel<?php echo $module; ?>" class="b-es-carousel-wrapper">
		<div class="b-es-carousel">
			  <ul class="jcarousel-skin-opencart">
			    <?php foreach ($banners as $banner) { ?>
			    <li ><a href="<?php echo $banner['link']; ?>" style="background-color:#333333"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></li>
			    <?php } ?>
			  </ul>
		  </div>
	</div>
</div>
<script type="text/javascript"><!--

$('#boss_carousel<?php echo $module; ?>').elastislide({
	imageW : 130,
	current : 0,
	border : 1,
	margin : 0,
	minItems : 2,
	onClick : true,
	disable_touch : true
	}); 
//--></script>