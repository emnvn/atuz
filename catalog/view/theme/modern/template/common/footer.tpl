<div id="footer" class="sixteen columns">
<div class="boss_block_footer_4">
<ul>
	<li>
	<div class="one_boss_block one_block1"><a href="#"><img alt="statick image" src="http://demo.bossthemes.com/mobilestore/image/data/bt_mobilestore/block_41.jpg" title="statick image"></a>
	<div class="text-box">
	<h4>In Stock</h4>

	<p>100% A-tick Approved</p>
	</div>
	</div>
	</li>
	<li>
	<div class="one_boss_block one_block2"><a href="#"><img alt="statick image" src="http://demo.bossthemes.com/mobilestore/image/data/bt_mobilestore/block_42.jpg" title="statick image"></a>
	<div class="text-box">
	<h4>Express Delivery</h4>

	<p>Registered &amp; Online Tracking</p>
	</div>
	</div>
	</li>
	<li>
	<div class="one_boss_block one_block3"><a href="#"><img alt="statick image" src="http://demo.bossthemes.com/mobilestore/image/data/bt_mobilestore/block_43.jpg" title="statick image"></a>
	<div class="text-box">
	<h4>100% money back</h4>

	<p>Satisfaction Guaranteed</p>
	</div>
	</div>
	</li>
	<li>
	<div class="one_boss_block one_block4"><a href="#"><img alt="statick image" src="http://demo.bossthemes.com/mobilestore/image/data/bt_mobilestore/block_44.jpg" title="statick image"></a>
	<div class="text-box">
	<h4>Warrannty</h4>

	<p>Local Manufactory Service Centre</p>
	</div>
	</div>
	</li>
</ul>
</div>
<div id="footer-top"><?php $index = 1;?> <?php if ($informations) { ?>
<div class="boss-footer-column column-<?php echo $index ?>"><?php $index++;?>
<h3><?php echo $text_information; ?></h3>
<ul>
<?php foreach ($informations as $information) { ?>
	<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
	<?php } ?>
</ul>
</div>
	<?php } ?>

<div class="boss-footer-column column-<?php echo $index ?>"><?php $index++;?>
<h3><?php echo $text_service; ?></h3>
<ul>
	<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
	<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
	<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
</ul>
</div>

<div class="boss-footer-column column-<?php echo $index ?>"><?php $index++;?>
<h3><?php echo $text_extra; ?></h3>
<ul>
	<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
	<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
	<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
	<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
</ul>
<div class="box-connect">
<a href="#"> <img title="Facebook" src="image/icons/social_11.jpg"
		alt="Facebook"> </a>
<a href="#"> <img title="Twitter"
		src="image/icons/social_12.jpg" alt="Twitter"> </a>
<a href="#"> <img title="RSS Feed"
		src="image/icons/social_13.jpg" alt="RSS Feed"> </a>
<a href="#"> <img title="Flickr"
		src="image/icons/social_14.jpg" alt="Flickr"> </a>
<a href="#"> <img title="stumbleupon"
		src="image/icons/social_15.jpg" alt="stumbleupon"> </a>								
</div>
</div>

</div>
<div class="boss-footer-column column-<?php echo $index ?>">
<h3><?php echo $text_account; ?></h3>
<ul>
	<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
	<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
	<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
	<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
</ul>
</div>

</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<div id="powered" class="sixteen columns">
	<div id="footer-bottom"><?php echo $powered; ?>
		<div class="payment">
			<ul>
				<li><a href="#"> <img title="Visa" src="image/data/payment/visa.png"
					alt="Visa"> </a></li>
				<li><a href="#"> <img title="Master"
					src="image/data/payment/master.png" alt="Master"> </a></li>
				<li><a href="#"> <img title="Express"
					src="image/data/payment/express.png" alt="Express"> </a></li>
				<li><a href="#"> <img title="Paypal"
					src="image/data/payment/paypal.png" alt="Paypal"> </a></li>
				<li><a href="#"> <img title="Skrill"
					src="image/data/payment/skrill.png" alt="Skrill"> </a></li>
			</ul>
		</div>
	</div>
	<div class="language_currency"><?php echo $language; ?> <?php echo $currency; ?>
	</div>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>
</body>
</html>
