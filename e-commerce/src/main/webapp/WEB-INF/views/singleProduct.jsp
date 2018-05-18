<div class="container">
	<div class="row">
		<div class="col-12">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
				<li class="breadcrumb-item"><a
					href="${contextRoot}/show/all/products">Products</a></li>
				<li class="breadcrumb-item active">${product.name}</li>
			</ol>
		</div>
	</div>
	<div class="row">
		<!-- image -->
		<div class="col-5">
			<div class="thumbnail">
				<img src="${images}/${product.code}.jpg" class="img-fluid" />
			</div>
		</div>
		<!-- description -->
		<div class="col-5">
			<h3>${product.name}</h3>
			<hr />
			<p>${product.description}</p>
			<hr />
			<h4>
				Price: <strong> &#8369; ${product.unitPrice}</strong>
			</h4>
			<hr />
			<c:choose>
				<c:when test="${product.quantity < 1}">
					<h6>
						Qty.Available: <span style="color:red">Out of Stock</span>
					</h6>
				</c:when>
				<c:otherwise>
					<h6>Qty.Available: ${product.quantity}</h6>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${product.quantity < 1}">
					<h6>
						<a href="javascript:void(0)" class="btn btn-primary disabled">							
								<i class="fas fa-shopping-cart"><del>Add to Cart</del></i>							
						</a>
					</h6>
				</c:when>
				<c:otherwise>
					<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-primary"> 
						<i class="fas fa-shopping-cart">Add to Cart</i>
					</a>
				</c:otherwise>
			</c:choose>
			<a href="${contextRoot}/show/all/products" class="btn btn-success">
				<span class=""></span>Back
			</a>
		</div>
	</div>
</div>