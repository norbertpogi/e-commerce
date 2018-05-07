<div class="container">
	<div class="row">
		<div class="col-12">
			<ol class="breadcrumb">				
				<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
				<li class="breadcrumb-item"><a href="${contextRoot}/show/all/products">Products</a></li>
				<li class="breadcrumb-item active">${product.name}</li>
			</ol>
		</div>
	</div>
	<div class="row">
			<!-- image -->
		<div class="col-5">
			<div class="thumbnail">
				<img src="${images}/${product.code}.jpg" class="img-fluid"/> 				
			</div>			
		</div>
			<!-- description -->
		<div class="col-5">
			<h3>${product.name}</h3>
			<hr/>
			<p>${product.description}</p>
			<hr/>
			<h4>Price: <strong> &#8369; ${product.unitPrice}</strong></h4>
			<hr/>
			<h6>Qty.Available: ${product.quantity}</h6>
			
			<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-primary">
				<i class="fas fa-shopping-cart">Add to Cart</i>
			</a>
			<a href="${contextRoot}/show/all/products" class="btn btn-success">
				<span class=""></span>Back
			</a>
			
		</div>
		
			<!-- description -->
			<%-- <div class="col-lg-8-sm-8">
			<h3>${product.name}</h3>
			<hr/>
			
			<p>${product.description}</p>
			<hr/>
			<h4>Price: <strong> &#8369; ${product.unitPrice} /-</strong></h4>
			<hr/>
			
			<h6>Qty.Available: ${product.quantity}</h6>
			
			<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-sucess">
				<i class="fas fa-shopping-cart">Add to Cart
			</a>
			<a href="${contextRoot}/show/all/products" class="btn btn-primary">
				<span class=""></span>Back
			</a>
		</div> --%>
		
	</div>
</div>