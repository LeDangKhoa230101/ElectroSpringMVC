<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title>Cart</title>
<body>
	<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <h3 class="breadcrumb-header">Cart</h3>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /BREADCRUMB -->
<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-12" style="padding: 0 12px;">
                <div class="cart-table clearfix">
                    <table class="table table-responsive">
                        <thead style="border-bottom: 2px solid red;">
                            <tr>
                                <th style="border-bottom: 2px solid red; font-weight: 500;">Product</th>
                                <th style="border-bottom: 2px solid red; font-weight: 500;">Price</th>
                                <th style="border-bottom: 2px solid red; font-weight: 500;">Quantity</th>
                                <th style="border-bottom: 2px solid red; font-weight: 500;">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                                <tr>
                                    <td class="cart_product_img d-flex align-items-center">
                                        <a style="display: inline-block;">
                                            <img style="width: 120px;" src="assets/user/img/shop01.png" alt="Product">
                                        </a>
                                        <a style="display: inline-block; font-size: 14px; font-weight: 500;">
                                            Dong ho cao cap
                                        </a>
                                    </td>
                                    <td class="price" style="vertical-align: middle;">
                                        <span>
                                            10000 VNĐ
                                        </span>
                                    </td>
                                    <td class="qty" style="vertical-align: middle;">
                                        <div class="quantity" style="display: inline-flex; border: 1px solid red; height: 30px; font-weight: 600;">
                                            <a type="button" style="border: none; background: transparent; border-right: 1px solid red; display: flex;
                                                        width: 30px;
                                                        height: 100%;
                                                        align-items: center;
                                                        justify-content: center;">
                                                <i class="fa fa-minus"></i>
                                            </a>
                                            <input class="qty-text" id="" name="" value="1" style="width: 44px; text-align: center;border: none; background: transparent">
                                            <a type="button" style="border: none; background: transparent; border-left: 1px solid red; display: flex;
                                                        width: 30px;
                                                        height: 100%;
                                                        align-items: center;
                                                        justify-content: center;">
                                                <i class="fa fa-plus"></i>
                                            </a>
                                        </div>
                                    </td>
                                    <td class="total_price" style="vertical-align: middle;">
                                        <span>10000 VNĐ</span>
                                    </td>
                                    <td class="total_price" style="vertical-align: middle;">
                                        <a style="background: transparent; border: none; font-size: 15px; color: red;">
                                            Remove
                                        </a>
                                    </td>
                                </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="col-12" style="padding: 0 12px; display: flex; justify-content: space-between; margin-top: 50px;">
                <div>
                    <a href="/" style="height: 40px; display: inline-block; padding: 10px 16px; border: 1px solid red; color: red;">CONTINUE SHOPPING</a>
                </div>
                <div style=" width: 350px;">
                    <h5 style=" font-size: 18px; margin-bottom: 18px;">CART TOTAL</h5>
                    <ul style="background-color: #f4f2f8; padding: 30px;">
                        <li style=" display: flex; align-items: center; justify-content: space-between; font-size: 16px; margin-bottom: 20px;">
                            <span>Subtotal</span>
                            <span>20000 VNĐ</span>
                        </li>
                        <li style=" display: flex; align-items: center; justify-content: space-between; font-size: 16px; margin-bottom: 20px;">
                            <span>Shipping</span>
                            <span>Free</span>
                        </li>
                        <li style=" display: flex; align-items: center; justify-content: space-between; font-size: 16px; margin-bottom: 20px;">
                            <span>
                                <strong>Total</strong>
                            </span> <span>
                                <strong>20000 VNĐ</strong>
                            </span>
                        </li>
                    </ul>
                    <a asp-action="Checkout" asp-controller="Cart" style="display: block; height: 40px; background: #d10024; color: white; font-size: 18px; font-weight: 600; text-align: center; padding: 7px 0;">
                        Checkout
                    </a>
                </div>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->
</body>