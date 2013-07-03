<?php echo $header; ?>
<div class="container container2">
    <?php echo $content_top; ?>

    <div id="pinhead">
        <?php echo $pinhead; ?>
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