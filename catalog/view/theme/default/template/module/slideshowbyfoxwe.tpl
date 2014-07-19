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
<style type="text/css" media="screen">
#slider { position:relative;width:<?php echo $width; ?>px;height:<?php echo $height; ?>px;background:url(image/byfoxwe/slideshow/loading.gif) no-repeat 50% 50%;margin-bottom:10px;}
#slider img { position:absolute;top:0px; left:0px; display:none;}
#slider a { border:0; display:block;}
.nivoSlider { position:relative; }
.nivoSlider img { position:absolute; top:0px; left:0px; }
.nivoSlider a.nivo-imageLink { position:absolute; top:0px; left:0px; width:100%; height:100%; border:0; padding:0; margin:0; z-index:60; display:none;}
.nivo-controlNav { position:absolute; left:260px; bottom:-42px;}
.nivo-controlNav a { display:block; width:22px; height:22px; background:url(image/byfoxwe/slideshow/bullets.png) no-repeat; text-indent:-9999px; border:0; margin-right:3px; float:left; }
.nivo-controlNav a.active { background-position:0 -22px; } 
.nivo-directionNav a { display:block; width:30px; height:30px; background:url(image/byfoxwe/slideshow/arrows.png) no-repeat; text-indent:-9999px; border:0; }
a.nivo-nextNav { background-position:-30px 0; right:15px; }
a.nivo-prevNav { left:15px; }
.nivo-caption { text-shadow:none; font-family: Helvetica, Arial, sans-serif; }
.nivo-caption a { color:#efe9d1; text-decoration:underline; }
.nivo-slice { display:block; position:absolute; z-index:50; height:100%; }
.nivo-caption { position:absolute; left:0px; bottom:0px; background:#000; color:#fff; opacity:0.8; width:100%; z-index:89; }
.nivo-caption p { padding:5px; margin:0; }
.nivo-caption a { display:inline !important; }
.nivo-html-caption { display:none; }
.nivo-directionNav a { position:absolute; top:45%; z-index:99; cursor:pointer; }
.nivo-prevNav { left:0px; }
.nivo-nextNav { right:0px; }
.clear { clear:both; }
</style>

<script type="text/javascript" src="<?php echo $config_url; ?>catalog/view/javascript/byfoxwe/slideshowbyfoxwe.js"></script>

<div  id="slider" class="nivoSlider">
		<?php 
			  foreach($slide_images as $key=>$slide_image){ 
		?>
						<a href="<?php echo $slide_image['url']; ?>" target="<?php echo $slide_image['target']; ?>">
						   <img src="<?php echo $config_url . "image/" . $slide_image['file']; ?>" alt="<?php echo $slide_image['alt']; ?>" title="<?php echo $slide_image['descp']; ?>" />
						</a>
		<?php } ?>	
</div>

<script type="text/javascript">
$(window).load(function() {
    $('#slider').nivoSlider({
        effect:'<?php echo $effect; ?>', 
        animSpeed:<?php echo $speed; ?>,
        pauseTime:<?php echo $delay; ?>,
        directionNav:<?php echo $nav; ?>,
        directionNavHide:<?php echo $navh; ?>,
        pauseOnHover:<?php echo $pause; ?>,
        captionOpacity:<?php echo $caption; ?>,
		controlNav:false
	});
});
</script>
