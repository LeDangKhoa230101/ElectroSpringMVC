<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<title>Checkout</title>
<body>
	<!-- BREADCRUMB -->
	<div id="breadcrumb" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<h3 class="breadcrumb-header">Checkout</h3>
					<ul class="breadcrumb-tree">
						<li><a href="<c:url value="/home"/>">Home</a></li>
						<li class="active">Checkout</li>
					</ul>
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
				<div class="col-md-7">
					<!-- Billing Details -->
					<form:form action="checkout" modelAttribute="bills" method="POST" class="billing-details">
						<div class="section-title">
							<h3 class="title">Billing address</h3>
						</div>
						<div class="form-group">
							<form:input path="display_name" class="input" type="text" placeholder="Fullname*"/>
						</div>
						<div class="form-group">
							<form:input path="user" class="input" type="email" placeholder="Email*"/>
						</div>
						<div class="form-group">
							<form:input path="phone" class="input" type="tel" placeholder="Phone*"/>
						</div> 
						<div class="form-group">
							<form:textarea path="address" class="input" placeholder="Address"/>
						</div>
						<div class="form-group">
							<form:textarea path="note" class="input" placeholder="Notes"/>
						</div>
						<input type="submit" value="Place order" class="primary-btn order-submit" style="width: 100%;"/>
					</form:form> 
					<!-- /Billing Details -->
				</div>

				<!-- Order Details -->
				<div class="col-md-5 order-details">
					<div class="section-title text-center">
						<h3 class="title">Your Order</h3>
					</div>
					<div class="order-summary">
						<div class="order-col">
							<div><strong>PRODUCT</strong></div>
							<div><strong>TOTAL</strong></div>
						</div>
						<div class="order-products">
							<c:forEach var="item" items="${ Cart }">
								<div class="order-col">
									<div>${ item.value.quantity }x ${ item.value.product.name }</div>
									<div>$${ item.value.totalPrice }</div>
								</div>
							</c:forEach>
						</div>
						<div class="order-col">
							<div>Shiping</div>
							<div><strong>FREE</strong></div>
						</div>
						<div class="order-col">
							<div><strong>TOTAL</strong></div>
							<div><strong class="order-total">$${ TotalPriceCart }</strong></div>
						</div>
					</div>
				</div> 
				<!-- /Order Details -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

	<!-- NEWSLETTER -->
	<div id="newsletter" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<div class="newsletter">
						<p>Sign Up for the <strong>NEWSLETTER</strong></p>
						<form>
							<input class="input" type="email" placeholder="Enter Your Email">
							<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
						</form>
						<ul class="newsletter-follow">
							<li>
								<a href="#"><i class="fa fa-facebook"></i></a>
							</li>
							<li>
								<a href="#"><i class="fa fa-twitter"></i></a>
							</li>
							<li>
								<a href="#"><i class="fa fa-instagram"></i></a>
							</li>
							<li>
								<a href="#"><i class="fa fa-pinterest"></i></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /NEWSLETTER -->
</body>