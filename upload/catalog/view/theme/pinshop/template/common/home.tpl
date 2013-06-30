<?php echo $header; ?>
<div class="container container2">
    <?php echo $content_top; ?>

    <div class="categorytitle">Hewlett-Packard
        <div class="btn-group inline">
            <a data-toggle="dropdown" href="#">
                <div class="reorder colorback"><i class="icon-th"></i></div>
            </a>
            <ul class="dropdown-menu">
                <li rel="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=p.sort_order&amp;order=ASC"><a href="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=p.sort_order&amp;order=ASC">Default</a></li>
                <li rel="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=pd.name&amp;order=ASC"><a href="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=pd.name&amp;order=ASC">Name (A - Z)</a></li>
                <li rel="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=pd.name&amp;order=DESC"><a href="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=pd.name&amp;order=DESC">Name (Z - A)</a></li>
                <li rel="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=p.price&amp;order=ASC"><a href="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=p.price&amp;order=ASC">Price (Low &gt; High)</a></li>
                <li rel="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=p.price&amp;order=DESC"><a href="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=p.price&amp;order=DESC">Price (High &gt; Low)</a></li>
                <li rel="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=rating&amp;order=DESC"><a href="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=rating&amp;order=DESC">Rating (Highest)</a></li>
                <li rel="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=rating&amp;order=ASC"><a href="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=rating&amp;order=ASC">Rating (Lowest)</a></li>
                <li rel="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=p.model&amp;order=ASC"><a href="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=p.model&amp;order=ASC">Model (A - Z)</a></li>
                <li rel="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=p.model&amp;order=DESC"><a href="http://localhost/opencart/upload/index.php?route=product/manufacturer/info&amp;manufacturer_id=7&amp;sort=p.model&amp;order=DESC">Model (Z - A)</a></li>
            </ul>
        </div>
    </div>

    <div style="margin:0 auto;">
        <?php echo $sidebar; ?>
        <div id="pinboard">
            <?php echo $special_block; ?>
            <nav id="page-nav">
                <a href="index.php?route=common/pagination&c=0&p=2"></a>
            </nav>
        </div>
    </div>
</div>
<div id="content">
    <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>