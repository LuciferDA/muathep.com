                  <ul class="dropdown-menu pull-right">
                    <li>
                      <div class="div-sdiviped">
                        
                            <?php if ($products || $vouchers) { ?>
                                <?php foreach ($products as $product) { ?>
                                <div class="row-cart">
                                    <div class="image-cart text-left"> 
                                        <a href="<?php echo $product['href']; ?>">
                                            <?php if ($product['thumb']) { ?><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" ><?php } ?>
                                        </a>
                                    </div>
                                    <div class="cart-content">
                                      <div class="product-name text-left">
                                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                        <span class="small-option"></span>
                                      </div>
                                      <span class="box-cart-price text-left">
                                        <strong class="text-right">x <?php echo $product['quantity']; ?></strong>
                                        <span class="cart-price text-right"><?php echo $product['total']; ?></span >
                                      </span>
                                      <div class="cart-button text-center"><button type="button" onclick="cart.remove('<?php echo $product['product_id']; ?>');" title="Remove" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-remove icon-remove"></i></button></div>
                                    </div>
                                </div>                                
                                <?php } ?>
                            <?php } ?>

                        
                      </div>
                    </li>
                    <li>
                    <div class="row2-cart  div-bordered">
                        <div class="box-cart">
                            <span class="box-total"><?php echo $totals[1]['title']; ?>
                            <span class="text1"><?php echo $totals[1]['text']; ?></span></span>
                        </div>
                        <div class="button-cart text-right">
                            <a href=<?php echo $cart; ?>">
                              <strong><i class="fa fa-shopping-cart"></i> View Cart</strong>
                            </a>
                            <a href="<?php echo $checkout; ?>">
                              <strong><i class="fa fa-sign-in"></i> Checkout</strong>
                            </a>
                          </div>
                    </div>
                    </li>
                </ul>