<div class="container">
	<div class="row">
		<div class="col-md-3">
			<%@include file="./shared/sidebar.jsp"%>
		</div>

		<!-- display actual products -->
		<div class="col-md-9">

			<!-- added breadcrumbs component -->
			<div class="row">
				<div class="col-lg-12">
					<c:if test="${userClickAllProducts == true}">
					
						<script>
							window.categoryId = '';
						</script>

						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
							<li class="breadcrumb-item active">All Products</li>
						</ol>
					</c:if>
					<c:if test="${userClickCategoryProducts == true }">
					
						<script>
							window.categoryId = '${category.id}';
						</script>
						
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
							<li class="breadcrumb-item active">Category</li>
							<li class="breadcrumb-item active">${category.name}</li>
						</ol>
					</c:if>
				</div>
			</div> 
			<div class="row">
				<div class="col-md-12">
				
					<table id="productListTable" class="table table-striped table-bordered" style="width:100%">
					
						<thead>
							<tr>
								<th></th>
								<th>NAME</th>
								<th>BRAND</th>
								<th>PRICE</th>
								<th>QTY. Available</th>
								<th></th>
															
							</tr>							
						</thead>
						<tfoot>
							<tr>
							
								<th>NAME</th>
								<th>BRAND</th>
								<th>PRICE</th>
								<th>QTY. Available</th>
								<th></th>
								
							
							</tr>
						</tfoot>
					
					</table>
				</div>
			</div>
		</div>
	</div>

</div>