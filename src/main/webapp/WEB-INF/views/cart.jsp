<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Shopping Cart</title>
<body>
	<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <h3 class="breadcrumb-header">Shopping Cart</h3>
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
                                <th style="border-bottom: 2px solid red; font-weight: 500;">Update</th>
                                <th style="border-bottom: 2px solid red; font-weight: 500;">Total</th>
                            </tr>
                        </thead>
                        <tbody>
	                        	<c:forEach var="item" items="${ Cart }">
	                                <tr>
	                                    <td class="cart_product_img d-flex align-items-center">
	                                        <a style="display: inline-block;">
	                                            <img style="width: 90px;" src="<c:url value="${ item.value.product.img }"/>" alt="Product">
	                                        </a>
	                                        <a style="display: inline-block; font-size: 14px; font-weight: 500;">
	                                            ${ item.value.product.name }
	                                        </a>
	                                    </td>
	                                    <td class="price" style="vertical-align: middle;">
	                                        <span>
	                                            $${ item.value.product.price }
	                                        </span>
	                                    </td>
	                                    <td class="qty" style="vertical-align: middle;">
	                                        <div class="quantity" style="display: inline-flex; border: 1px solid red; height: 30px; font-weight: 600;">
	                                            <input type="number" id="quanty-cart-${ item.key }" class="qty-text" value="${ item.value.quantity }" min="0" max="1000" style="width: 44px; text-align: center;border: none; background: transparent">
	                                        </div>
	                                    </td>
	                                    <td style="vertical-align: middle;">
	                                    	<button data-id="${ item.key }" class="btn btn-mini btn-danger edit-cart" type="button">
	                        					Update 
	                                    	</button>
	                                    </td>
	                                    <td class="total_price" style="vertical-align: middle;">
	                                        <span>$${ item.value.totalPrice }</span>
	                                    </td>
	                                    <td class="total_price" style="vertical-align: middle;">
	                                        <a href='<c:url value="/deleteCart/${ item.key }"/>' style="background: transparent; border: none; font-size: 15px; color: red;">
	                                            Remove
	                                        </a>
	                                    </td>
	                                </tr>
	                        	</c:forEach>
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
                            <span>$${ TotalPriceCart }</span>
                        </li>
                        <li style=" display: flex; align-items: center; justify-content: space-between; font-size: 16px; margin-bottom: 20px;">
                            <span>Shipping</span>
                            <span>Free</span>
                        </li>
                        <li style=" display: flex; align-items: center; justify-content: space-between; font-size: 16px; margin-bottom: 20px;">
                            <span>
                                <strong>Total</strong>
                            </span> <span>
                                <strong>$${ TotalPriceCart }</strong>
                            </span>
                        </li>
                    </ul>
                    <a href="<c:url value="/checkout"/>" style="display: block; height: 40px; background: #d10024; color: white; font-size: 18px; font-weight: 600; text-align: center; padding: 7px 0;">
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

<content tag="script">
	<script>
		$(".edit-cart").on("click", function(){
			var id = $(this).data("id");
			var quanty = $("#quanty-cart-"+id).val();
			window.location = "editCart/"+id+"/"+quanty;
		}); 
	</script>
</content>

</body>


