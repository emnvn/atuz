<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/modern/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/modern/stylesheet/color_default.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/modern/stylesheet/boss_add_cart.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/modern/stylesheet/boss_megamenu.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/modern/stylesheet/boss_slideshow.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/modern/stylesheet/boss_carousel.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/modern/stylesheet/boss_homecategory.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/modern/stylesheet/boss_featured.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/modern/stylesheet/skeleton.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/modern/stylesheet/responsive.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/modern/stylesheet/news.css" />

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/moderntheme/getwidthbrowser.js"></script>
<script type="text/javascript" src="catalog/view/javascript/moderntheme/bossthemes.js"></script>
<script type="text/javascript" src="catalog/view/javascript/moderntheme/notify.js"></script>
<script type="text/javascript" src="catalog/view/javascript/moderntheme/jquery.easing.js"></script>
<script type="text/javascript" src="catalog/view/javascript/moderntheme/jquery.flexslider.js"></script>
<script type="text/javascript" src="catalog/view/javascript/moderntheme/jquery.elastislide.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $page_type?>"  data-twttr-rendered="true">
<div class="viewport">
<div id="container" class="container">
<div id="header" class="sixteen columns">
	<div class="boss_header_top">
		<div id="header-top-right">
		<!-- 
			<div id="welcome">
			    <?php if (!$logged) { ?>
			    <?php echo $text_welcome; ?>
			    <?php } else { ?>
			    <?php echo $text_logged; ?>
			    <?php } ?>
			</div>
  			<div class="links"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
  			-->
  			<div class="language_currency"><?php echo $language; ?></div>
		</div>
	</div>
	<div class="boss_header_bottom">
		<?php if ($logo) { ?>
		  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
		  <?php } ?>
		  <?php //echo $cart; ?>
		  <div id="header-top-static">
				<div class="static-header">
					<a href="#">
<img class="call-us" title="call-us" src="catalog/view/theme/modern/image/callus.png" alt="call-us">
</a>
					<h4>Call us today</h4>
					<p><?php echo $telephone ?></p>
				</div>
		</div>
		<div id="search">
			    <div class="button-search" title="Search"></div>
			    <?php if ($filter_name) { ?>
			    <input type="text" name="search" value="<?php echo $filter_name; ?>" />
			    <?php } else { ?>
			    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" />
			    <?php } ?>
		</div>
		<div id="m-welcome-link"></div>
	</div>
  
  
</div>
<?php $num_of_items = count($categories);?>
<?php $index = 0?>
<?php if ($categories) { ?>

<div id="boss_menu" class="mega-menu">
  <ul>
  <!--  <li><a href="<?php echo $menu_home['href']; ?>"><?php echo $menu_home['name']; ?></a></li>
  -->
  <li><a href="<?php echo $menu_home['href']; ?>"><img src="image/icons/home_w.png" width="32px" border="0"></a></li>
    <?php foreach ($categories as $category) { 
    $css_class = "";
    //if($index==$num_of_items-1)$css_class="class='last'";
    $index++;
    ?>
  
    <li <?php echo $css_class?>><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
    <?php if(isset($category["related_news"])){?>
    <div class="dropdown" style="width:420px">
    	<div  class="option" style="width:260px;float:left">
    	<a class="parent"><?php echo $text_guide?></a>
    	
    	<ul style="margin-left:5px">
    	
    	<?php foreach($category["related_news"] as $news){?>
    	<li>
    		<a  href="<?php echo $news['href']; ?>">
    		<?php echo $news["title"]?>
    		</a>
    	</li>
    	<?php }?>
    	</ul>
    	
    	</div>
    	<?php if ($category['children']) { ?>
      <div class="option" style="width:160px;float:left">
      
      <a class="parent"><?php echo $text_template?></a>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li style="vertical-align: top">
          <a href="<?php echo $category['children'][$i]['href']; ?>">
          	<table>
          		<tr>
          			<td>
          			<?php if($category['children'][$i]["image"]!=""){?>
          	<img src="<?php echo $category['children'][$i]["image"]?>"></img>
          	<?php }?>
          			</td>
          			<td>
          <?php echo $category['children'][$i]['name']; ?>
          			</td>
          		</tr>
          	</table>
          	
          </a>	
          
          </li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </div>
    <?php }?>
    </li>
    <?php } ?>
    
     <!-- 
    <li><a href="<?php echo $menu_news['href']; ?>"><?php echo $menu_news['name']; ?></a></li>
    -->
    <li class="last"><a href="<?php echo $menu_contact['href']; ?>"><?php echo $menu_contact['name']; ?></a></li>
  </ul>
</div>
<?php } ?>
<div id="notification"></div>
