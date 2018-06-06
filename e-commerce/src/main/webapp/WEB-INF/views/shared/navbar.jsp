<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="${contextRoot}/home">E-commerce</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav">
				<li id="about"><a class="nav-link" href="${contextRoot}/about">About</a>
				</li>

				<li id="listProducts"><a class="nav-link"
					href="${contextRoot}/show/all/products">View Products</a></li>
				<li id="contact"><a class="nav-link"
					href="${contextRoot}/contact">Contact</a></li>
				<li id="manageProducts"><a class="nav-link"
					href="${contextRoot}/manage/products">Manage Products</a></li>
			</ul>

			<ul class="navbar-nav ml-auto">
				<li id="register"><a class="nav-link" href="${contextRoot}/register">Sign Up</a></li>
				<li id="login"><a class="nav-link" href="${contextRoot}/login">Login</a>
				</li>
				<li class="dropdown">
					<a href="javascript:void(0)"
						class="btn btn-secondary dropdown-toggle" id="dropdownMenu1"
						data-toggle="dropdown">  ${userModel.fullName}<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li class="dropdown-item"><a href="${contextRoot}/cart">
								<span class="fas fa-shopping-cart"></span>															
								<i class="badge">${userModel.cart.cartLines} </i>&#x20B1; ${userModel.cart.grandTotal}

						</a></li>
						<li class="divider dropdown-item" role="seperator"></li>
						<li class="dropdown-item"><a href="${contextRoot}/logout">Logout</a>
						</li>
					</ul>
					</li>
			</ul>
		</div>
	</div>
</nav>













