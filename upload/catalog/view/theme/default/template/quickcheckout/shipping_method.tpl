<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($shipping_methods) { ?>
<?php 
$exists = false;
foreach ($shipping_methods as $shipping_method) {
	foreach ($shipping_method['quote'] as $quote) {
		if ($quote['code'] == $code) {
			$exists = true;
			break;
		}
	}
}
?>
<p><?php echo $text_shipping_method; ?></p>
<?php if ($this->config->get('quickcheckout_shipping')) { ?>
<table class="radio">
  <?php foreach ($shipping_methods as $shipping_method) { ?>
  <tr>
    <td colspan="3"><b><?php echo $shipping_method['title']; ?></b></td>
  </tr>
  <?php if (!$shipping_method['error']) { ?>
  <?php foreach ($shipping_method['quote'] as $quote) { ?>
  <tr class="highlight">
    <td><?php if ($quote['code'] == $code || !$code || !$exists) { ?>
	  <?php $exists = true; ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" />
      <?php } ?></td>
    <td><label for="<?php echo $quote['code']; ?>"><?php echo $quote['title']; ?></label></td>
    <td style="text-align: right;"><label for="<?php echo $quote['code']; ?>"><?php echo $quote['text']; ?></label></td>
  </tr>
  <?php } ?>
  <?php } else { ?>
  <tr>
    <td colspan="3"><div class="error"><?php echo $shipping_method['error']; ?></div></td>
  </tr>
  <?php } ?>
  <?php } ?>
</table>
<?php } else { ?>
  <select style="max-width: 99%;" name="shipping_method">
   <?php foreach ($shipping_methods as $shipping_method) { ?>
     <?php if (!$shipping_method['error']) { ?>
		<?php foreach ($shipping_method['quote'] as $quote) { ?>
		  <?php if ($quote['code'] == $code || !$code || !$exists) { ?>
			 <?php $exists = true; ?>
			 <option value="<?php echo $quote['code']; ?>" selected="selected">
		  <?php } else { ?>
			<option value="<?php echo $quote['code']; ?>">
		  <?php } ?>
		  <?php echo $quote['title']; ?>&nbsp;&nbsp;(<?php echo $quote['text']; ?>) </option>
		<?php } ?>
	 <?php } ?>
   <?php } ?>
  </select><br />
<?php } ?>
<br />
<?php } ?>
<?php if ($this->config->get('quickcheckout_delivery')) { ?>
<strong><?php if ($this->config->get('quickcheckout_delivery_required')) { ?><span class="required">*</span> <?php } ?><?php echo $text_delivery; ?></strong><br />
<input type="text" name="delivery_date" value="<?php echo $delivery_date; ?>" style="width:98%;" />
<?php } else { ?>
<input type="text" name="delivery_date" value="<?php echo $delivery_date; ?>" style="display:none;" />
<?php } ?>
<textarea style="display:none;" name="comment" rows="8" style="width: 98%;"><?php echo $comment; ?></textarea>

<?php if ($this->config->get('quickcheckout_delivery_time')) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<?php } ?>
<script type="text/javascript"><!--
	$('#shipping-method input[name=\'shipping_method\'], #shipping-method select[name=\'shipping_method\']').bind('change', function() {
		<?php if (!$this->customer->isLogged()) { ?>
			if ($('#payment-address input[name=\'shipping_address\']:checked').attr('value')) {
				var country_id = $('#payment-address select[name=\'country_id\']').val();
				var zone_id = $('#payment-address select[name=\'zone_id\']').val();
				var city = $('#payment-address input[name=\'city\']').val();
				var postcode = $('#payment-address input[name=\'postcode\']').val();
				var delivery_date = $('input[name=\'delivery_date\']').val();
			} else {
				var country_id = $('#shipping-address select[name=\'country_id\']').val();
				var zone_id = $('#shipping-address select[name=\'zone_id\']').val();
				var city = $('#shipping-address input[name=\'city\']').val();
				var postcode = $('#shipping-address input[name=\'postcode\']').val();
				var delivery_date = $('input[name=\'delivery_date\']').val();
			}
			
			<?php if ($this->config->get('quickcheckout_shipping')) { ?>
				var shipping_method = $('#shipping-method input[type=\'radio\']:checked').val();
			<?php } else { ?>
				var shipping_method = $('#shipping-method select').val();
			<?php } ?>
			
			$.ajax({
				url: 'index.php?route=quickcheckout/shipping_method/set&isset=1&country_id=' + country_id + '&zone_id=' + zone_id + '&city=' + city + '&postcode=' + postcode + '&shipping_method=' + shipping_method + '&delivery_date=' + delivery_date,
				dataType: 'html',
				success: function(html) {
					<?php if ($this->config->get('quickcheckout_cart')) { ?>
						loadCart();	
					<?php } ?>
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});	
		<?php } else { ?>
			if ($('#shipping-address-new:checked').attr('value')) {
				var country_id = $('#shipping-address select[name=\'country_id\']').val();
				var zone_id = $('#shipping-address select[name=\'zone_id\']').val();
				var city = $('#shipping-address input[name=\'city\']').val();
				var postcode = $('#shipping-address input[name=\'postcode\']').val();
				var delivery_date = $('input[name=\'delivery_date\']').val();
				var address_id = '';
				var isset = 0;
			} else {
				var country_id = '';
				var zone_id = '';
				var city = '';
				var postcode = '';
				var delivery_date = $('input[name=\'delivery_date\']').val();
				var address_id = $('#shipping-existing select').val();
				var isset = 1;
			}
			
			<?php if ($this->config->get('quickcheckout_shipping')) { ?>
				var shipping_method = $('#shipping-method input[type=\'radio\']:checked').val();
			<?php } else { ?>
				var shipping_method = $('#shipping-method select').val();
			<?php } ?>
			
			$.ajax({
				url: 'index.php?route=quickcheckout/shipping_method/set&address_id=' + address_id + '&isset=' + isset + '&country_id=' + country_id + '&zone_id=' + zone_id + '&city=' + city + '&postcode=' + postcode + '&shipping_method=' + shipping_method + '&delivery_date=' + delivery_date,
				dataType: 'html',
				success: function(html) {
					<?php if ($this->config->get('quickcheckout_cart')) { ?>
						loadCart();	
					<?php } ?>
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});	
		<?php } ?>
	});
	
	$(document).ready(function() {
		$('#shipping-method input[name=\'shipping_method\']:checked, #shipping-method select[name=\'shipping_method\']').trigger('change');

		<?php if ($this->config->get('quickcheckout_delivery')) { ?>
			var unavailableDates = [<?php echo html_entity_decode($this->config->get('quickcheckout_delivery_unavailable')); ?>];
			
			<?php if ($this->config->get('quickcheckout_delivery_time')) { ?>
				$( "input[name=\'delivery_date\']" ).datetimepicker({
					dateFormat: 'DD d MM yy',
					minDate: 0,
					maxDate: '+<?php echo $this->config->get('quickcheckout_delivery_max'); ?>D',
					hourMin: <?php echo $this->config->get('quickcheckout_delivery_min_hour'); ?>,
					hourMax: <?php echo $this->config->get('quickcheckout_delivery_max_hour'); ?>,
					beforeShowDay: unavailable
				});
			<?php } else { ?>
				$( "input[name=\'delivery_date\']" ).datepicker({
					dateFormat: 'DD d MM yy',
					minDate: 0,
					maxDate: '+<?php echo $this->config->get('quickcheckout_delivery_max'); ?>D',
					beforeShowDay: unavailable
				});
			<?php } ?>
			
			function unavailable(date) {
				dmy = date.getDate() + "-" + (date.getMonth()+1) + "-" + date.getFullYear();
				if ($.inArray(dmy, unavailableDates) == -1) {
					return [true, ""];
				} else {
					return [false,"","Not Available"];
				}
			}
		<?php } ?>
	});
//--></script> 