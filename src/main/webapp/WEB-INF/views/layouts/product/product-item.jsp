<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form method="get" action="<c:url value="/addCart/${ item.id_product }"/>" class="product">
	<div class="product-img">
		<a href='<c:url value="/detail/${ item.id_product }"/>'
			class="product-img" style="display: block;"> 
			<img src="${item.img}" alt="">
		</a>
		<div class="product-label">
			<span class="sale">-30%</span> <span class="new">NEW</span>
		</div>
	</div>
	<div class="product-body">
		<p class="product-category">Category</p>
		<h3 class="product-name">
			<a href="#">${item.name}</a>
		</h3>
		<h4 class="product-price">
			$${item.price}
			<del class="product-old-price">$9999</del>
		</h4>
		<div class="product-rating">
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
				class="fa fa-star"></i> <i class="fa fa-star"></i> <i
				class="fa fa-star"></i>
		</div>
		<div class="product-btns">
			<button class="add-to-wishlist">
				<i class="fa fa-heart-o"></i><span class="tooltipp">add to
					wishlist</span>
			</button>
			<button class="add-to-compare">
				<i class="fa fa-exchange"></i><span class="tooltipp">add to
					compare</span>
			</button>
			<button class="quick-view">
				<i class="fa fa-eye"></i><span class="tooltipp">quick view</span>
			</button>
		</div>
	</div>
	<div class="add-to-cart">
		<button type="submit" class="add-to-cart-btn">
			<i class="fa fa-shopping-cart"></i> add to cart
		</button>
	</div>
</form>