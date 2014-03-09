<div class="boss-frame">
<div class="boss-block-home">

<div class="block-home-1 block-home-column">
<a href="#"><img
	alt="block-home1"
	src="image/data/banners/web_basic.png" width="250px"
	title="block-home1"></a>
<h3><?php echo $basic_web_title; ?></h3>
<p><?php echo $basic_web_text; ?></p>
<p><a class="view-more" ><?php echo $view_more; ?></a></p>
</div>

<div class="block-home-2 block-home-column">
<h3><?php echo $pro_web_title; ?></h3>
<p><?php echo $pro_web_text; ?></p>
<p><a class="view-more" href="#" ><?php echo $view_more; ?></a></p>
<a href="#"><img
	alt="block-home2"
	src="image/data/banners/web_ecomerce.jpg" width="250px"
	title="Web ecommerce"></a>

</div>


<div class="block-home-3 block-home-column">
	<h3><?php echo $free_web_title; ?></h3>
	<p><?php echo $free_web_text; ?></p>
	
	<a href="#"><img
		alt="block-home2"
		src="image/data/banners/100_free.png" 
		title="Free"></a>
		<p><a class="view-more" href="#" ><?php echo $view_more; ?></a></p>
</div>

<!-- 
<div class="block-home-1 block-home-column">

<a href="#"><img
	alt="block-home1"
	src="image/data/banners/top_block_01.png"
	title="block-home1"></a>
<h4>Quisque in<br>
mauris sed arcur</h4>

<p>Nam eu risus ac odio gravida scelerisque vitae et erat.</p>
</div>
<div class="block-home-2 block-home-column">
<h4>Pellentesque Sit<br>
Amet Pulvinar</h4>

<p>Aliquam fringilla pulvinar congue. Duis sollicitudin tristique est.</p>
<a href="#"><img alt="block-home4"
	src="image/data/banners/top_block_04.png"
	title="block-home4"></a></div>
	
<div class="block-home-4 block-home-column">
<h4>Maecenas etes<br>
nuncfun</h4>
<a class="view-more" href="#">View more</a> <a href="#"><img
	alt="block-home3"
	src="image/data/banners/top_block_03.png"
	title="block-home3"></a></div>
</div>
-->

</div>
<div id="boss_category_tabs<?php echo $module?>" class="category_tabs">
<h4><?php echo $heading_title; ?></h4>
<?php foreach ($categories as $category) { ?> <a
	href="#categorytab-<?php echo $category['category_id']?>"> <span style="margin-right:30px"><?php echo $category['name'] ?>
</span> </a> <?php }?></div>
<div id="boss_category_content<?php echo $module?>"
	class="boss_home_category"><?php foreach ($categories as $category) { ?>
<div class="box-heading selected" style="display: none"><span><?php echo $category['name'] ?></span>
</div>
<div id="categorytab-<?php echo $category["category_id"] ?>" class="box"
	style="display: none;">
<div class="box-content es-carousel-wrapper">
<div class="hc-box-product es-carousel">
<ul class="skin-opencart"
	style="width: 958px; display: block; margin-left: 0px;">
	<?php foreach($category["products"] as $product ){?>
	<li>
	<div class="image"><a
		href="index.php?route=product/product&product_id=<?php echo $product['product_id']?>">
	<img title="<?php echo $product["name"]?>"
		alt="<?php echo $product["name"]?>"
		src="<?php echo $product['image']?>"> </a></div>
	<div class="name"><a
		href="index.php?route=product/product&product_id=<?php echo $product['product_id']?>"><?php echo $product["name"]?></a>
	</div>
	<a class="button_cart" title="Add to Cart"
		onclick="boss_addToCart('<?php echo $product['product_id']?>');"
		style="border-width: 0px;">Add to Cart</a>
	<div class="price"><?php if (!$product['special']) { ?> <?php echo $product['price']; ?>
	<?php } else { ?> <span class="price-old"><?php echo $product['price']; ?></span>
	<span class="price-new"><?php echo $product['special']; ?></span> <?php } ?>
	</div>
	<div class="rating"><img alt="text_reviews"
		src="catalog/view/theme/modern/image/stars-3.png"></div>
	</li>
	<?php }?>
</ul>
</div>
</div>
</div>

<script type="text/javascript">
if(getWidthBrowser() > 767 && getWidthBrowser() < 960) {
	$('#categorytab-<?php echo $category['category_id']?> .box-content').elastislide({
		imageW : 135,
		border : 0,
		current : 0,
		margin : 9,
		onClick : true,
		minItems : 2,
		disable_touch : false
	});
}
else if(getWidthBrowser() > 479 && getWidthBrowser() < 768){
	$('#categorytab-<?php echo $category['category_id']?> .box-content').elastislide({
		imageW : 135,
		border : 0,
		current : 0,
		margin : 5,
		onClick : true,
		minItems : 2,
		disable_touch : false
	});
}
else if(getWidthBrowser() < 480){
	$('#categorytab-<?php echo $category['category_id']?> .box-content').elastislide({
		imageW : 142,
		border : 0,
		current : 0,
		margin : 8,
		onClick : true,
		minItems : 2,
		disable_touch : false
	});
}
else{ // > 960
	$('#categorytab-<?php echo $category['category_id']?> .box-content').elastislide({
		imageW : 150,
		border : 0,
		current : 0,
		margin : 8,
		onClick : true,
		minItems : 2,
		disable_touch : false
	});
}
</script> <?php }?>


</div>
<div style="clear: both"></div>

<script type="text/javascript">
<!--
$('#boss_category_content<?php echo $module?> div.box-heading').first().addClass('selected');
$('#boss_category_content<?php echo $module?> div.box-heading').click(function() {
$(this).next().toggle();
if($(this).next().css('display') == 'block'){
$(this).addClass('selected');
}else{
$(this).removeClass('selected');
}
return false;
}).next().hide();
$(document).ready(function() {
boos_homecategory_resize();
});
$(window).resize(function() {
boos_homecategory_resize();
});
function boos_homecategory_resize() {
if(getWidthBrowser() < 767){
$('#boss_category_tabs<?php echo $module?>').hide();
$('#boss_category_content<?php echo $module?> div.box-heading').show();
} else {
$('#boss_category_tabs<?php echo $module?>').show();
$('#boss_category_content<?php echo $module?> div.box-heading').hide();
}
}
//-->
</script>
<script type="text/javascript">
$('#boss_category_tabs<?php echo $module?> a').tabs();
</script>
