<div style="clear: both"></div>
<div id="boss-featured<?php echo $module?>" class="box boss-featured">
  <div class="box-heading"><?php echo $heading_title; ?></div>
 <?php if($position!="column_left" && $position!="column_right") {?>
  <div class="boss-featured-content  featured-es-carousel-wrapper">
    <div class="featured-es-carousel">
    <ul class="skin-opencart" style="width: 1290px; margin-left: 0px;">
      <?php foreach ($products as $product) { ?>
      <li style="margin-right: 10px; width: 150px;">
      <div class="box-product-newproducts">
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button_cart" /></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        </div>
      </li>
      <?php } ?>
      </ul>
    </div>
   
  </div>
   <?php } else {?>
   <div class="box-content">
	   <div class="box-product">
	   <?php foreach ($products as $product) { ?>
    
      <div>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button_cart" /></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        </div>
      
      <?php } ?>
	   </div>
   </div>
   <?php }?>
</div>
<script type="text/javascript">
<!--
if(getWidthBrowser() > 767 && getWidthBrowser() < 960) {
	$('#boss-featured<?php echo $module?> .boss-featured-content').elastislide({
		imageW : 140,
		border : 0,
		current : 0,
		margin : 10,
		onClick : true,
		minItems : 2,
		disable_touch : false
	});
}
else if(getWidthBrowser() > 479 && getWidthBrowser() < 768){
	$('#boss-featured<?php echo $module?> .boss-featured-content').elastislide({
		imageW : 135,
		border : 0,
		current : 0,
		margin : 5,
		onClick : true,
		minItems : 2,
		disable_touch : false
	});
}
else{ // > 960 && < 480
	$('#boss-featured<?php echo $module?> .boss-featured-content').elastislide({
		imageW : 150,
		border : 0,
		current : 0,
		margin : 10,
		onClick : true,
		minItems : 2,
		disable_touch : false
	});
}
//-->
</script>