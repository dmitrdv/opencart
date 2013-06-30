<div id="main-slide" class="carousel slide" data-pause="remove">
    <div class="carousel-inner">
        <?php
          $i = 0;
          foreach ($products as $product) {
        ?>
        <div class="item <?php if(!$i) echo 'active'; ?>" data-slide-number="<?php echo $i++?>">
            <div class="span6">
                <div class="image">
                    <a href="<?php echo $product['href']; ?>">
                        <img src="<?php echo $product['thumb']; ?>" class="pull-right" alt="<?php echo $product['name']; ?>">
                    </a>
                </div>
            </div>
            <div class="span6">
                <div class="caption">
                    <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="btn btn-large btn-success bigbtn" />
                    <h3>
                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                    </h3>
                    <div class="price">
                        <?php if ($product['price']) { ?>
                        <?php if (!$product['special']) { ?>
                        <?php echo $product['price']; ?>
                        <?php } else { ?>
                        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                        <?php } ?>
                        <?php } ?>
                    </div>
                    <?php if ($product['rating']) { ?>
                    <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                    <?php } ?>

                    <p>
                        <?php echo $product['description']; ?>
                    </p>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
    <a class="left carousel-control" href="#main-slide" data-slide="prev">‹</a>
    <a class="right carousel-control" href="#main-slide" data-slide="next">›</a>
</div>
<div class="pagination pagination-centered">
    <ul>
        <li>
            <a href="#main-slide" data-target="#main-slide" data-slide="prev">Prev</a>
        </li>
        <?php
          $i = 0;
          foreach ($products as $product) {
        ?>
        <li>
            <a href="#main-slide" data-target="#main-slide" data-slide-to="<?php echo $i; ?>" class="<?php if(!$i++) echo 'active'; ?>"><?php echo $i; ?></a>
        </li>
        <?php } ?>
        <li>
            <a href="#main-slide" data-target="#main-slide" data-slide="next">Next</a>
        </li>
    </ul>
</div>
