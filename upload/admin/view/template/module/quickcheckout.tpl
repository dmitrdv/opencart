<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
    </div>
    <div class="content">
	  <div class="htabs"><a href="#general"><?php echo $tab_general; ?></a><a href="#field"><?php echo $tab_field; ?></a><a href="#module"><?php echo $tab_module; ?></a><a href="#survey"><?php echo $tab_survey; ?></a><a href="#delivery"><?php echo $tab_delivery; ?></a><a href="#support"><?php echo  $tab_support; ?></a></div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
	    <div id="general">
		  <table class="form">
            <tr>
			  <td style="width:200px;"><?php echo $entry_status; ?></td>
			  <td style="width: 200px;"><select name="quickcheckout_status">
                <?php if ($quickcheckout_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
			  <td style="width:200px;"><?php echo $entry_load_screen; ?></td>
              <td><select name="quickcheckout_load_screen">
                <?php if ($quickcheckout_load_screen) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
            </tr>
			<tr>
			  <td style="width:200px;"><?php echo $entry_newsletter; ?></td>
              <td><select name="quickcheckout_newsletter">
                <?php if ($quickcheckout_newsletter) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
			  <td><?php echo $entry_payment_logo; ?></td>
			  <td><select name="quickcheckout_payment_logo">
                <?php if ($quickcheckout_payment_logo) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
			</tr>
			<tr>
			  <td><?php echo $entry_shipping; ?></td>
			  <td><select name="quickcheckout_shipping">
                <?php if ($quickcheckout_shipping) { ?>
                <option value="1" selected="selected"><?php echo $text_radio; ?></option>
                <option value="0"><?php echo $text_select; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_radio; ?></option>
                <option value="0" selected="selected"><?php echo $text_select; ?></option>
                <?php } ?>
              </select></td>
			  <td><?php echo $entry_payment; ?></td>
			  <td><select name="quickcheckout_payment">
                <?php if ($quickcheckout_payment) { ?>
                <option value="1" selected="selected"><?php echo $text_radio; ?></option>
                <option value="0"><?php echo $text_select; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_radio; ?></option>
                <option value="0" selected="selected"><?php echo $text_select; ?></option>
                <?php } ?>
              </select></td>
            </tr>
			<tr>
			  <td><?php echo $entry_country_reload; ?></td>
			  <td><select name="quickcheckout_country_reload">
                <?php if ($quickcheckout_country_reload) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
			  <td><?php echo $entry_payment_reload; ?></td>
			  <td><select name="quickcheckout_payment_reload">
                <?php if ($quickcheckout_payment_reload) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
            </tr>
			<tr>
			  <td><?php echo $entry_highlight_error; ?></td>
			  <td><select name="quickcheckout_highlight_error">
                <?php if ($quickcheckout_highlight_error) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
			  <td><?php echo $entry_text_error; ?></td>
			  <td><select name="quickcheckout_text_error">
                <?php if ($quickcheckout_text_error) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
            </tr>
			<tr>
			  <td><?php echo $entry_edit_cart; ?></td>
			  <td><select name="quickcheckout_edit_cart">
                <?php if ($quickcheckout_edit_cart) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
			  <td><?php echo $entry_auto_submit; ?></td>
			  <td><select name="quickcheckout_auto_submit">
                <?php if ($quickcheckout_auto_submit) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
			</tr>
		  </table>
		</div>
        <div id="field">
		  <table class="form">
		    <tr>
			  <td style="width:200px;"><?php echo $entry_company; ?></td>
			  <td style="width:200px;"><select name="quickcheckout_company">
				<?php if ($quickcheckout_company) { ?>
				<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
				<option value="0"><?php echo $text_disabled; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_enabled; ?></option>
				<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			  </select></td>
			  <td style="width:200px;"><?php echo $entry_address_2; ?></td>
			  <td><select name="quickcheckout_address_2">
				<?php if ($quickcheckout_address_2) { ?>
				<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
				<option value="0"><?php echo $text_disabled; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_enabled; ?></option>
				<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			  </select></td>
			</tr>
			<tr>
			  <td><?php echo $entry_telephone; ?></td>
			  <td><select name="quickcheckout_telephone">
				<?php if ($quickcheckout_telephone) { ?>
				<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
				<option value="0"><?php echo $text_disabled; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_enabled; ?></option>
				<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			  </select></td>
			  <td><?php echo $entry_fax; ?></td>
			  <td><select name="quickcheckout_fax">
				<?php if ($quickcheckout_fax) { ?>
				<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
				<option value="0"><?php echo $text_disabled; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_enabled; ?></option>
				<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			  </select></td>
			</tr>
			<tr>
			  <td><?php echo $entry_city; ?></td>
			  <td><select name="quickcheckout_city">
				<?php if ($quickcheckout_city) { ?>
				<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
				<option value="0"><?php echo $text_disabled; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_enabled; ?></option>
				<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			  </select></td>
			  <td><?php echo $entry_postcode; ?></td>
			  <td><select name="quickcheckout_postcode">
				<?php if ($quickcheckout_postcode) { ?>
				<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
				<option value="0"><?php echo $text_disabled; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_enabled; ?></option>
				<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			  </select></td>
			</tr>
			<tr>
			  <td><?php echo $entry_country; ?></td>
			  <td><select name="quickcheckout_country">
				<?php if ($quickcheckout_country) { ?>
				<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
				<option value="0"><?php echo $text_disabled; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_enabled; ?></option>
				<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			  </select></td>
			  <td><?php echo $entry_zone; ?></td>
			  <td><select name="quickcheckout_zone">
				<?php if ($quickcheckout_zone) { ?>
				<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
				<option value="0"><?php echo $text_disabled; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_enabled; ?></option>
				<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			  </select></td>
			</tr>
		  </table>
		</div>
		<div id="module">
		  <table class="form">
		    <tr>
              <td style="width:200px;"><?php echo $entry_coupon; ?></td>
			  <td style="width:200px;"><select name="quickcheckout_coupon">
                <?php if ($quickcheckout_coupon) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
			  <td style="width:200px;"><?php echo $entry_voucher; ?></td>
			  <td><select name="quickcheckout_voucher">
                <?php if ($quickcheckout_voucher) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
            </tr>
		    <tr>
			  <td><?php echo $entry_reward; ?></td>
			  <td><select name="quickcheckout_reward">
                <?php if ($quickcheckout_reward) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
              <td><?php echo $entry_cart; ?></td>
			  <td><select name="quickcheckout_cart">
                <?php if ($quickcheckout_cart) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
            </tr>
			<tr>
			  <td><?php echo $entry_login; ?></td>
			  <td><select name="quickcheckout_login">
                <?php if ($quickcheckout_login) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
            </tr>
          </table>
		</div>
		<div id="survey">
		  <table class="form">
			<tr>
		  	  <td style="width:200px;"><?php echo $entry_survey; ?></td>
			  <td style="width:200px;"><select name="quickcheckout_survey">
                <?php if ($quickcheckout_survey) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
			  <td style="width:200px;"><?php echo $entry_survey_required; ?></td>
			  <td><select name="quickcheckout_survey_required">
                <?php if ($quickcheckout_survey_required) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
			</tr>
			<tr>
			  <td><?php echo $entry_survey_text; ?></td>
			  <td><input type="text" name="quickcheckout_survey_text" value="<?php echo $quickcheckout_survey_text; ?>" /></td>
			</tr>
		  </table>
		</div>
		<div id="delivery">
		  <table class="form">
		    <tr>
			  <td style="width:200px;"><?php echo $entry_delivery; ?></td>
			  <td style="width:200px;"><select name="quickcheckout_delivery">
			    <?php if ($quickcheckout_delivery) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
			  <td style="width:200px;"><?php echo $entry_delivery_time; ?></td>
			  <td><select name="quickcheckout_delivery_time">
			    <?php if ($quickcheckout_delivery_time) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
			</tr>
			<tr>
			  <td><?php echo $entry_delivery_required; ?></td>
			  <td><select name="quickcheckout_delivery_required">
			    <?php if ($quickcheckout_delivery_required) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
			  <td><?php echo $entry_delivery_max; ?></td>
			  <td><input type="text" name="quickcheckout_delivery_max" value="<?php echo $quickcheckout_delivery_max; ?>" size="3" /></td>
			</tr>
			<tr>
			  <td><?php echo $entry_delivery_min_hour; ?></td>
			  <td><input type="text" name="quickcheckout_delivery_min_hour" value="<?php echo $quickcheckout_delivery_min_hour; ?>" size="3" /></td>
			  <td><?php echo $entry_delivery_max_hour; ?></td>
			  <td><input type="text" name="quickcheckout_delivery_max_hour" value="<?php echo $quickcheckout_delivery_max_hour; ?>" size="3" /></td>
			</tr>
			<tr>
			  <td><?php echo $entry_delivery_unavailable; ?></td>
			  <td><textarea name="quickcheckout_delivery_unavailable" style="width:170px; height: 90px;"><?php echo $quickcheckout_delivery_unavailable; ?></textarea></td>
			</tr>
		  </table>
		</div>
		<div id="support">
		  <table class="form">
		    <tr>
			  <td colspan="2"><?php echo $text_support; ?></td>
			</tr>
		    <tr>
			  <td><?php echo $entry_mail_name; ?></td>
			  <td><input type="text" name="mail_name" value="" /></td>
			</tr>
			<tr>
			  <td><?php echo $entry_mail_email; ?></td>
			  <td><input type="text" name="mail_email" value="" /></td>
			</tr>
			<tr>
			  <td><?php echo $entry_mail_order_id; ?></td>
			  <td><input type="text" name="mail_order_id" value="" /></td>
			</tr>
			<tr>
			  <td><?php echo $entry_mail_message; ?></td>
			  <td><textarea name="mail_message" style="width:300px; height:100px;"></textarea></td>
			</tr>
			<tr>
			  <td colspan="2"><a class="button" id="button-mail"><span><?php echo $button_mail; ?></span></a></td>
			</tr>
			<tr>
			  <td><a class="button" href="http://www.opencart.com/index.php?route=extension/extension/info&extension_id=7382" target="_blank" rel="nofollow"><span><?php echo $text_review; ?></span></a></td>
			  <td><a class="button" href="http://www.marketinsg.com/quick-checkout" target="_blank"><span><?php echo $text_purchase; ?></span></a></td>
			</tr>
		  </table>
		</div>
      </form>
    </div>
  </div>
  <div style="text-align:center; color:#222222;">Quick Checkout v6.1 by <a target="_blank" href="http://www.marketinsg.com/">MarketInSG</a><br /><a href="http://www.marketinsg.com/news" target="_blank">Our News</a></div>
</div>
<script type="text/javascript"><!--
$('.htabs a').tabs();

$('#button-mail').live('click', function() {
	$.ajax({
		url: 'index.php?route=module/quickcheckout/mail&token=<?php echo $token; ?>',
		type: 'post',
		data: $('input[name=\'mail_name\'], input[name=\'mail_email\'], input[name=\'mail_order_id\'], textarea[name=\'mail_message\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-mail').after('<span class="wait">&nbsp;<img src="view/image/loading.gif" alt="" /></span>');
		},
		success: function(json) {
			$('.wait, .error').remove();
			
			if (json['error']) {
				if (json['error']['warning']) {
					alert(json['error']['warning']);
				}
				
				if (json['error']['name']) {
					$('input[name=\'mail_name\']').after('<span class="error">' + json['error']['name'] + '</span>');
				}
				
				if (json['error']['email']) {
					$('input[name=\'mail_email\']').after('<span class="error">' + json['error']['email'] + '</span>');
				}
				
				if (json['error']['order_id']) {
					$('input[name=\'mail_order_id\']').after('<span class="error">' + json['error']['order_id'] + '</span>');
				}
				
				if (json['error']['message']) {
					$('textarea[name=\'mail_message\']').after('<span class="error">' + json['error']['message'] + '</span>');
				}
			} else {
				alert(json['success']);
				
				$('input[name=\'mail_name\']').val('');
				$('input[name=\'mail_email\']').val('');
				$('input[name=\'mail_order_id\']').val('');
				$('textarea[name=\'mail_message\']').val('');
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
});
//--></script> 
<?php echo $footer; ?>