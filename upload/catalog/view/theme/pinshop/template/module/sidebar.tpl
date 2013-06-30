<div id="sidebar">
    <div class="well sidebar-nav" data-spy="affix" data-offset-top="600">
        <ul class="nav nav-list">
            <li class="nav-header">
                Geography
            </li>
            <li>
                <select>
                    <option value="0">City</option>
                    <option value="1">Москва</option>
                    <option value="2">Петербург</option>
                    <option value="3">Екатеринбург</option>
                </select>
            </li>
            <li>
                <select>
                    <option value="0">Metro Station</option>
                    <option value="1">Площадь революции</option>
                    <option value="2">Театральная</option>
                </select>
            </li>
            <li>
                <select id="manufacturers">
                    <option value="">Manufacturers</option>
                    <?php foreach ($manufacturers as $manufacturer) { ?>
                    <option value="<?php echo $manufacturer['manufacturer_id']; ?>"><?php echo $manufacturer['name']; ?></option>
                    <?php } ?>
                </select>
            </li>
        </ul>
        <ul class="nav nav-list" id="category">
            <?php echo $category_block?>
        </ul>
    </div>
</div>
<script type="text/javascript"><!--
    $('body').scrollspy({ target: '#sidebar' });

    $('#manufacturers').change(function () {
        var manufacturer_id = $(this).val();
        $('#category').load('index.php?route=module/sidecategory&filter_manufacturer_id=' + manufacturer_id);

        var href = 'index.php?route=common/pagination&c=0&filter_manufacturer_id=' + manufacturer_id + '&p=1';
        $('#pinboard').load(href, function () {
            $("#pinboard").masonry('reload').masonry();
        });
    });

    $('#category li a').on("click", function(e){
        e.preventDefault();

        var manufacturer_id = $('#manufacturers :selected').val();

        var href = $(this).attr('href') + '&filter_manufacturer_id=' + manufacturer_id;
        $('#pinboard').load(href, function () {
            $("#pinboard").masonry('reload').masonry();
        });
    });
//--></script>

