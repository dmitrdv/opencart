<li class="nav-header">
    <?php echo $heading_title; ?>
</li>
<?php foreach ($categories as $category) { ?>
<li>
    <?php if ($category['category_id'] == $category_id) { ?>
    <label class="checkbox active handpoint">
        <input type="checkbox" data-category-id="<?php echo $category['category_id'];?>"><?php echo $category['name']; ?>
    </label>
    <?php } else { ?>
    <label class="checkbox handpoint">
        <input type="checkbox" data-category-id="<?php echo $category['category_id'];?>"><?php echo $category['name']; ?>
    </label>
    <?php } ?>

    <?php if ($category['children']) { ?>
    <ul class="nav nav-list">
        <?php foreach ($category['children'] as $child) { ?>
        <li>
            <?php if ($child['category_id'] == $child_id) { ?>
            <label class="checkbox checkbox2 active handpoint">
                <input type="checkbox" data-category-id="<?php echo $child['category_id'];?>"><?php echo $child['name']; ?>
            </label>
            <?php } else { ?>
            <label class="checkbox checkbox2 handpoint">
                <input type="checkbox" data-category-id="<?php echo $child['category_id'];?>"><?php echo $child['name']; ?>
            </label>
            <?php } ?>
        </li>
        <?php } ?>
    </ul>
    <?php } ?>
</li>
<script type="text/javascript"><!--
    $( '#category input[type=checkbox]' ).on( 'click', function() {
        var manufacturer_id = $('#manufacturers :selected').val();

        var categories = $( '#category input:checked' );

        var res = '';
        $.each(categories, function(index, value) {
            //alert($(value).data('category-id'));
            if(res == '') {
                res = $(value).data('category-id');
            } else {
                res = res + ',' + $(value).data('category-id');
            }
        });

        var href = 'index.php?route=common/pagination&c=' + res + '&filter_manufacturer_id=' + manufacturer_id + '&p=1';
        $('#pinboard').load(href, function () {
            $("#pinboard").masonry('reload').masonry();
        });
    });
    //--></script>
<?php } ?>
