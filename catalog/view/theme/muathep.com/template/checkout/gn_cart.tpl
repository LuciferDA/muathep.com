<table id="cart_table" class="table table-bordered table-hover table-responsive">
  <tbody>
  <?php foreach ($products as $product) { ?>
    <tr>
      <td class="text-left" style="min-width: 100px;"><img src="<?php echo $product['thumb']; ?>"></td>
      <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a><br>
      <span>Mã : <?php echo $product['model']; ?></span>
      <?php foreach ($product['option'] as $option) { ?>
      <br />
      &nbsp;<small> - <?php echo $option['name']; ?>: <?php if (isset($option['option_value']) && !empty($option['option_value'])) echo $option['option_value'];else if (isset($option['value'])) echo $option['value']; ?></small>
      <?php } ?></td>

      <td class="text-right hidden-xs"><?php echo $product['quantity']; ?></td>
      <td class="text-right hidden-xs"><?php echo $product['price']; ?></td>
    </tr>
  <?php } ?>
  <?php foreach ($vouchers as $voucher) { ?>
  <tr>
    <td class="text-left"><?php echo $voucher['description']; ?></td>
    <td class="text-right hidden-xs"><?php echo $voucher['amount']; ?></td>
    <td class="text-right"><?php echo $voucher['amount']; ?></td>
  </tr>
  <?php } ?>
    </tbody>
    <tfoot>
  <?php foreach ($totals as $total) { ?>
  <tr>
    <td colspan="3" class="text-right  hidden-xs"><strong><?php echo $total['title']; ?>:</strong></td>
    <td colspan="1" class="text-right  visible-xs"><strong><?php echo $total['title']; ?>:</strong></td>
    <td class="text-right"><?php echo $total['text']; ?></td>
  </tr>
  <?php } ?>
  </tfoot>
</table>
