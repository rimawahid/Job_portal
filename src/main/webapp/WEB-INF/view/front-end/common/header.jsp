<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Job Portal</title>
<link rel="stylesheet" href="/resources/vendor/css/bootstrap.css">
<link rel="stylesheet" href="/resources/vendor/css/style.css">
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light">
			<a class="navbar-brand" style="color: #14a800; font-weight: bold;"
				href="#">rimazing</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto nav-mr">
					<li class="nav-item nav-hover"><a class="nav-link " href="#">Find
							Talent </a></li>
					<li class="nav-item"><a class="nav-link" href="/freelancer-jobs">Find
							Work</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Why
							Rimazing</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Enterprise</a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
<!-- 					<input class="form-control rounded-pill mr-sm-2" type="search" -->
<!-- 						placeholder="Search" aria-label="Search">  -->
						<select class="form-control rounded-pill mr-sm-2 pl-4" style="width:250px;">
						<option selected>Search</option>
						<option value="1">Talent</option>
						<option value="2">Projects</option>
						<option value="3">Jobs</option>
					</select>

<!-- 					<button type="submit" class="btn btn-success ml-2"> -->
<!-- 						<i class="fa-solid fa-magnifying-glass"></i> -->
<!-- 					</button> -->
				</form>

				<div>
					<ul class="navbar-nav mr-auto ">
						<li class="nav-item"><a class="nav-link text-decoration-none"
							href="/user/login">Log In</a></li>
						<a class="btn btn-success rounded-pill pr-4 pl-4"
							href="user/singup">Sign Up</a>
					</ul>
				</div>
			</div>

		</nav>

	</div>
	<hr class="h-break">