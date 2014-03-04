
<div id="footer">
	<div class="footer-static-links">
  <?php if ($informations) { ?>
  <ul>
  <div class="footer-links-heading">
    <li><a><?php echo $text_information; ?></a></li>
   </div>
   <div class="footer-li">
   <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
   </div>
  </ul>
  <?php } ?>
  
  <ul>
  <div class="footer-links-heading">
    <li><a><?php echo $text_service; ?></a></li>
    </div>
    <div class="footer-li">
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
      </div>
    </ul>
  
    <ul>
    <div class="footer-links-heading">
    <li><a><?php echo $text_extra; ?></a></li>
    </div>
    <div class="footer-li">
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
      </div>
    </ul>
  
  
    <ul>
    <div class="footer-links-heading">
    <li><a><?php echo $text_account; ?></a></li>
    </div>
    <div class="footer-li">
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      </div>
    </ul>
  
  	<ul class="follow-us">
			<div class="footer-links-heading"><li><a>Follow us</a></li></div>
			<div class="footer-li">
				<li>
					<img src="catalog/view/theme/watch/image/fb_icon.png" alt="">&nbsp;
					<img src="catalog/view/theme/watch/image/twitter_icon.png" alt="">&nbsp;
					<img src="catalog/view/theme/watch/image/rss_icon.png" alt="">
				</li>
				<li class="paypal-icon">
					<img src="catalog/view/theme/watch/image/paypal_icon.png" alt="">
				</li>
			</div>
		</ul>
  </div>
  <div id="powered">
  
  
	  <ul>
	  <li><a href="http://opencart-demos.net/OPC04/OPC040099/index.php?route=product/special">Specials</a></li>
 	 <li><a href="http://opencart-demos.net/OPC04/OPC040099/index.php?route=affiliate/account">Affiliates</a></li>
 	 <li><a href="http://opencart-demos.net/OPC04/OPC040099/index.php?route=account/voucher">Gift Vouchers</a></li> 
	 <li><a href="http://opencart-demos.net/OPC04/OPC040099/index.php?route=product/manufacturer">Brands</a></li>	   
	 <li><a href="http://opencart-demos.net/OPC04/OPC040099/index.php?route=account/return/insert">Returns</a></li> 
	 <li><a href="http://opencart-demos.net/OPC04/OPC040099/index.php?route=information/sitemap">Site Map</a></li>
	 <li class="login-logout"><a href="http://opencart-demos.net/OPC04/OPC040099/index.php?route=information/contact">Contact Us</a></li>
	  </ul>
  	
  </div>
  <div class="copywrite"><?php echo $powered; ?></div>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>
</div>
</div>
</body></html>