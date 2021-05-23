<link href="https://pay.vnpay.vn/lib/vnpay/vnpay.css" rel="stylesheet" />
<script src="https://pay.vnpay.vn/lib/vnpay/vnpay.js"></script>
<form action="index.php?route=payment/vnpayment/confirm" method="POST" id="frmCreateOrder">
    <div class="buttons">
        <div class="pull-right">
            <input id="button-confirm" type="submit" value="Thanh toán qua VNPAY" class="btn btn-primary" />
        </div>
    </div>
</form>
<script type="text/javascript">
            $("#frmCreateOrder").submit(function () {
                var postData = $("#frmCreateOrder").serialize();
                var submitUrl = $("#frmCreateOrder").attr("action");
                $.ajax({
                    type: "POST",
                    url: submitUrl,
                    data: postData,
                    dataType: 'JSON',
                    success: function (x) {
                        if (x.code === '00') {
                            vnpay.open({width: 340, height: 490, url: x.data});
                            return false;
                        } else {
                            alert(x.Message);
                        }
                    }
                });
                return false;
            });
        </script>
