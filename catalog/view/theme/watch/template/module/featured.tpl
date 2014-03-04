<div class="box">
  <div class="box-heading"><h1><?php echo $heading_title; ?></h1></div>
  <div class="box-content">
    <div class="box-product">
    
      <?php foreach ($products as $product) { ?>
      <div class="big" style="z-index:0">
      <div style="margin-top: 0px; margin-left: 0px; top: 10px; left: 10px; width: 160px; height: 191px; padding: 0px; overflow: hidden;" class="small" >
      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>  
      <?php if ($product['thumb']) { ?>
        <div class="image" ><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" style="width:150px;height:150px"/></a></div>
        <?php } ?>
        
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <div class="desc"><?php echo $product['description']; ?></div>
		<div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');">Add to Wish List</a></div>
     	<div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');">Add to Compare</a></div>
      </div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
	//Larger thumbnail preview
	$(".big").hover(function() {
	$(this).css({'z-index' : '10'});
	$(this).find('.small').addClass("hover").stop()
	.animate({
	marginTop: '-180px',
	marginLeft: '-123px',
	top: '50%',
	left: '50%',
	width: '204px',
	height: '350px',
	padding: '20px'
	}, 200);
	} , function() {
	$(this).css({'z-index' : '0'});
	$(this).find('.small').removeClass("hover").stop()
	.animate({
	marginTop: '0',
	marginLeft: '0',
	top: '10',
	left: '10',
	width: '160px',
	height: '191px',
	padding: '0px'
	}, 200);
	});
	});
</script>
 