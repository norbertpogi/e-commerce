<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<spring:url var="webfonts" value="/resources/webfonts" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>E-commerce ${title}</title>

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">

<!-- font awesome -->
<link href="${css}/fontawesome-all.css" rel="stylesheet">
<link href="${css}/fontawesome-all.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/shop-homepage.css" rel="stylesheet">


</head>

<body>

	<div class="se-pre-con"></div>
	<div class="wrapper">
		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<div class="container">
			<!-- this will be displayed if the credentials are wrong -->
			<c:if test="${not empty message}">
				<div class="row">
				    <div class="offset-md-3 col-lg-6">
				        <div class="alert alert-danger">${message}</div>
				    </div>
				</div>			
			</c:if>
		
			<!-- this will be displayed if the logout -->
			<c:if test="${not empty logout}">
				<div class="row">
				    <div class="offset-md-3 col-lg-6">
				        <div class="alert alert-success">${logout}</div>
				    </div>
				</div>			
			</c:if>
		
		
			<div class="row">
				<div class="col-lg-6 offset-md-3">
					<div class="border border-primary">
						<div class="card bg-primary text-white">
							<div class="card-body">
								<h4>Login</h4>
							</div>
						</div>
						<div class="card">
							<div class="card-body">							
							<form action="${contextRoot}/login" method="POST" class="form-horizontal" id="loginForm">
								<div class="form-group row">
									<label class="col-form-label col-lg-4">Username</label>
									<div class="col-lg-8">
										<input type="text" name="username" class="form-control" placeholder="juan.delacruz@gmail.com" />										
									</div>
								</div>
								<div class="form-group row">
									<label class="col-form-label col-lg-4">Password</label>
									<div class="col-lg-8">
										<input type="password" name="password" class="form-control" placeholder="Password" />										
									</div>
								</div>
								 <div class="offset-md-4 col-lg-8">
								    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
								    <input type="submit" value="login" class="btn btn-primary"/>								    
								</div>
							</form>
							</div>
							<div class="card-footer">
								<div class="text-right">
									New User - <a href="${contextRoot}/register">Register Here</a>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- /.container -->

		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.min.js"></script>

		<!-- Jquery Validation -->
		<script src="${js}/jquery.validate.js"></script>

		<script src="${js}/bootstrap.bundle.min.js"></script>

		<script src="${js}/myapp.js"></script>
	</div>

</body>

</html>
