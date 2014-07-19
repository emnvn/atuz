<?php ?>

<link rel="stylesheet" type="text/css" href="catalog/view/javascript/tree_category/dtree.css" media="all" />
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
        <div class="box-nav2">
            <script type="text/javascript">
                <!--
                d = new dTree('d');
                d.add(0,-1,'');
                <?php print $categories_tree;?>
                document.write(d);
                //-->
            </script>
        </div>
        </div>
