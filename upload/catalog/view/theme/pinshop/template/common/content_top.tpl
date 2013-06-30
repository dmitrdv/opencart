<?php if ($modules) { ?>
<div class="container">
    <div class="content">
        <div class="row-fluid">
            <?php foreach ($modules as $module) { ?>
            <?php echo $module; ?>
            <?php } ?>
        </div>
    </div>
</div>
<hr>
<?php } ?>