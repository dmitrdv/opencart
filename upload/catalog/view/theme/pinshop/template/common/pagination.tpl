<?php echo $special_block; ?>
<?php
  if (!isset($this->request->get['filter_name'])) $filter_name = ''; else $filter_name = $this->request->get['filter_name'];
  if (!isset($this->request->get['filter_tag'])) $filter_tag = ''; else $filter_tag = $this->request->get['filter_tag'];
  if (!isset($this->request->get['filter_description'])) $filter_description = ''; else $filter_description = $this->request->get['filter_description'];
  if (!isset($this->request->get['filter_sub_category'])) $filter_sub_category = ''; else $filter_sub_category = $this->request->get['filter_sub_category'];
  if (!isset($this->request->get['filter_manufacturer_id'])) $manufacturer_id = ''; else $manufacturer_id = $this->request->get['filter_manufacturer_id'];
  if (!isset($this->request->get['sort'])) $sort = 'p.date_added'; else $sort = $this->request->get['sort'];
  if (!isset($this->request->get['order'])) $order = 'DESC'; else $order = $this->request->get['order'];
  if (!isset($this->request->get['c'])) $category = 0; else $category = $this->request->get['c'];
?>
<nav id="page-nav">
    <a href='index.php?route=common/pagination&c=<?php echo $category;?>&sort=<?php echo $sort;?>&order=<?php echo $order;?>&filter_name=<?php echo $filter_name;?>&filter_tag=<?php echo $filter_tag;?>&filter_description=<?php echo $filter_description;?>&filter_sub_category=<?php echo $filter_sub_category;?>&filter_manufacturer_id=<?php echo $manufacturer_id;?>&p=2'></a>
</nav>