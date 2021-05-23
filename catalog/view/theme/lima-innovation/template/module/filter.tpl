<div id="filter">
    <?php if(!empty($filter_checked)) { ?> 
        <div class="filter_checked">
            <h5>Bạn đang tìm sản phẩm : </h5>
            <ul>
                <?php foreach($filter_checked as $item ){ ?>
                    <li><strong><?php echo $item['name'];?></strong> <span onclick="changeStatusFilter('<?php echo $item['filter_id']; ?>')">X</span></li>
                <?php  } ?>
            </ul>
        </div>
    <?php } ?>
    <ul class="filter_product">
        <?php foreach ($filter_groups as $filter_group) { ?>
            <div class="filter_mm">
                <li class="filter_title"><span><?php echo $filter_group['name']; ?></span></li>
                <div class="items">
                    <?php foreach ($filter_group['filter'] as $filter) { ?>
                    <div class="checkbox">
                        <input type="checkbox" id="<?php echo $filter['filter_id']; ?>" class="item_filter" name="filter[]" value="<?php echo $filter['filter_id']; ?>" <?php if(in_array($filter['filter_id'],$filter_category)) echo 'checked'; ?>  />
                        <?php echo $filter['name']; ?>
                    </div>
                    <?php } ?>
                </div>
            </div>
        <?php  } ?>
    </ul>
</div>
    <style type="">
        #filter {
            /* background-color: #26acce; */
            /* color: white; */
            border: none;
            float: left;
            width: 100%;
        }

        .filter_checked {
            padding: 10px 0px;
            width: 100%;
            float: left;
        }
        .filter_checked h5{
            float: left;
            padding: 0px 10px 0px 0px;
        }
        .filter_product{
            list-style: none;
            margin:0px;
            padding:0px;
            float:left;
            width: 100%;
        }
        .filter_product .filter_mm .filter_title {
            float: left;
            margin: 0px 10px 0px 0px;
            cursor: pointer;
        }
        .filter_mm {
            float: left;
            position: relative;

        }
        .items{
            position: absolute;
            top: 20px;
            left: 0px;
            width: 300px;
            z-index: 9999;
            background-color: #fff;
            padding: 0px 30px;
            border: 1px solid #bbafaf;
            display: none;
        }
        .filter_product .filter_title span{color:#1688c5;}
        .filter_product .filter_title:after {
            content: "\f0d7";
            font-size: 18px;
            font-family: FontAwesome;
            color: #1688c5;
            right: 20px;
            /* border-top: 6px solid #288ad6; */
            border-left: 6px solid transparent;
            /* border-right: 6px solid transparent; */
            display: inline-block;
            vertical-align: middle;
            margin-left: 1px;
        }
        .filter_mm:hover .items {
            transform: scale(1, 1);
            -webkit-transform: scale(1, 1);
            opacity: 1;
            display: block;
        }
        #filter .filter_checked ul{
            list-style: none;
            float: left;
            margin: 0px;
            padding: 0px;
        }
        #filter .filter_checked ul li {
            float: left;
            background-color: #5cbef3;
            margin: 0px 10px 0px 0px;
            padding: 5px 8px;
            border-radius: 5px;
            color: #fff;
        }
        #filter .filter_checked span {
            color: white;
            border: 1px solid white;
            padding: 2px 6px;
            border-radius: 50%;
            margin: 0px 0px 0px 6px;
            cursor: pointer;
        }
    </style>

    <script type="text/javascript"><!--
    $('.item_filter').on('click', function() {
        filter = [];
    
        $('input[name^=\'filter\']:checked').each(function(element) {
            filter.push(this.value);
        });
    
        location = '<?php echo $action; ?>&filter=' + filter.join(',');
    });
    function changeStatusFilter(filter_id){
        filter = [];
        $("#"+filter_id).prop("checked", false);

        $('input[name^=\'filter\']:checked').each(function(element) {
            filter.push(this.value);
        });
    
        location = '<?php echo $action; ?>&filter=' + filter.join(',');
    }
    //--></script>