<div class="categorytitle">
    <?php echo $heading_title; ?>
    <div class="btn-group inline">
        <a data-toggle="dropdown" href="#">
            <div class="reorder colorback"><i class="icon-th"></i></div>
        </a>
        <ul class="dropdown-menu">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <li rel="<?php echo $sorts['href']; ?>">
                <a href="<?php echo $sorts['href']; ?>">
                    <?php echo $sorts['text']; ?>
                </a>
            </li>
            <?php } else { ?>
            <li rel="<?php echo $sorts['href']; ?>">
                <a href="<?php echo $sorts['href']; ?>">
                    <?php echo $sorts['text']; ?>
                </a>
            </li>
            <?php } ?>
            <?php } ?>
        </ul>
    </div>
</div>