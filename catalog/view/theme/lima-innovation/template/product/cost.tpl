<?php echo $header; ?>
<div class="container">
    <div class="row">
        <div id="content">
            <div class="col-md-12">
                <table class="table table-striped">
                    <thead style="color: white;font-size: 16px; background-color: #1491d7;">
                        <tr>
                            <td><?php echo $stt;?></td>
                            <td><?php echo $name_product;?></td>
                            <td><?php echo $image;?></td>
                            <td><?php echo $description;?></td>
                            <td><?php echo $price;?></td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($products as $product){ ?>
                        <tr>
                            <td></td>
                            <td>
                                <a href="<?php echo $product['link'];?>" ><?php echo $product['name'];?></a>
                            </td>
                            <td>
                                <img src="<?php echo $product['thumb'];?>" title="<?php echo $product['name'];?>" />
                            </td>
                            <td>
                                <?php echo $product['description'];?>
                            </td>
                            <td>
                                <?php echo $product['price_format'];?>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                    
                    <tfoot>
                        <tr>
                            <td colspan="4">TỔNG TIỀN</td>
                            <td><?php echo $total_price;?></td>
                        </tr>
                    </tfoot>
                </table>

            </div>
            <div class="col-md-4"><a href="<?php echo $reset_href;?>" class="btn btn-primary"><?php echo $reset;?></a></div>
            <div class="col-md-4"><a href="#" class="btn btn-danger"><?php echo $cart;?></a></div>
        </div>
    </div>
</div>
<?php echo $footer; ?>