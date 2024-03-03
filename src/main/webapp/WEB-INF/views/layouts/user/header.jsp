<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<header>
	<!-- TOP HEADER -->
	<div id="top-header">
		<div class="container">
			<ul class="header-links pull-left">
				<li><a href="#"><i class="fa fa-phone"></i> +021-95-51-84</a></li>
				<li><a href="#"><i class="fa fa-envelope-o"></i>
						email@email.com</a></li>
				<li><a href="#"><i class="fa fa-map-marker"></i> 1734
						Stonecoal Road</a></li>
			</ul>
			<ul class="header-links pull-right">
				<li><a href="#"><i class="fa fa-dollar"></i> USD</a></li>
				<li><a href="#"><i class="fa fa-user-o"></i> My Account</a></li>
			</ul>
		</div>
	</div>
	<!-- /TOP HEADER -->

	<!-- MAIN HEADER -->
	<div id="header">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- LOGO -->
				<div class="col-md-3">
					<div class="header-logo">
						<a href='<c:url value="/home" />' class="logo"> <img src="<c:url value="/assets/user/img/logo.png"/>" alt="">
						</a>
					</div>
				</div>
				<!-- /LOGO -->

				<!-- SEARCH BAR -->
				<div class="col-md-6">
					<div class="header-search">
						<form>
							<input class="input" placeholder="Search here" style="width: calc(100% - 160px);border-top-left-radius: 40px;border-bottom-left-radius: 40px;">
							<button class="search-btn">Search</button>
						</form>
					</div>
				</div>
				<!-- /SEARCH BAR -->

				<!-- ACCOUNT -->
				<div class="col-md-3 clearfix">
					<div class="header-ctn">
						<!-- Wishlist -->
						<div>
							<a href="#"> <i class="fa fa-heart-o"></i> <span>Your
									Wishlist</span>
								<div class="qty">0</div>
							</a>
						</div>
						<!-- /Wishlist -->

						<!-- Cart -->
						<a href="<c:url value="/cart"/>" class="dropdown-toggle" 
								style="display: inline-block;color: #fff;width: 90px;text-align: center;position: relative;"> 
								<i class="fa fa-shopping-cart" style="display: block; font-size: 18px;"></i> 
								<span>Your Cart</span>
									<c:if test="${ Cart == null }">
										<div class="qty" style="position: absolute;
                                                                right: 15px;
                                                                top: -10px;
                                                                width: 20px;
                                                                height: 20px;
                                                                line-height: 20px;
                                                                text-align: center;
                                                                border-radius: 50%;
                                                                font-size: 10px;
                                                                color: #FFF;
                                                                background-color: #D10024;">0</div>
									</c:if>
									<c:if test="${ Cart != null }">
										<div class="qty" style="position: absolute;
	                                                                right: 15px;
	                                                                top: -10px;
	                                                                width: 20px;
	                                                                height: 20px;
	                                                                line-height: 20px;
	                                                                text-align: center;
	                                                                border-radius: 50%;
	                                                                font-size: 10px;
	                                                                color: #FFF;
	                                                                background-color: #D10024;">${ TotalQuantityCart }</div>
									</c:if>
							</a> 
						<!-- /Cart -->

						<!-- Menu Toogle -->
						<div class="menu-toggle">
							<a href="#"> <i class="fa fa-bars"></i> <span>Menu</span>
							</a>
						</div>
						<!-- /Menu Toogle -->
					</div>
				</div>
				<!-- /ACCOUNT -->
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</div>
	<!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->
