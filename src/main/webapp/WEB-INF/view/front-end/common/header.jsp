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
	<nav
		class="custom-back-color navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<button
				class="navbar-toggler navbar-toggler-right float-right ml-auto"
				type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav xml-auto">
					<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="/latestJobs">Latest
							Jobs</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Courses</a></li>
					<li class="nav-item"><a class="nav-link" href="/jobseekers">Jobseekers</a></li>
					<li class="nav-item"><a class="nav-link" href="/employers">Employers</a></li>
					<li class="nav-item"><a class="nav-link" href="">News</a></li>

					<li class="nav-item"><a class="nav-link" href="">Blog</a></li>
					<li class="nav-item"><a class="nav-link" href="/contact">Contact</a></li>
				</ul>

				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown"><a href="#"
						class="nav-link dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false"><img
							src="images/flags/EN.gif" class="language-flag-icon" /> English
							<span class="caret"></span></a> <!-- <div class="dropdown-menu dropdown-menu-right language-select">
							<a class="dropdown-item" href="es-Contact.html"><img
								src="images/flags/ES.gif" class="language-flag-icon" /> <span
								class="language-select-link">Spanish</span></a>
							<hr style="margin-top: 2px; margin-bottom: 2px" />
							</div> --></li>
					<li class="nav-item active"><a href=""
						class="nav-link login-trigger custom-back-color"
						data-toggle="modal" data-target="#exampleModal">LOG IN</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div style="padding-bottom: 10px; height: 80px;">
		<div class="container mt-5">
			<div class="logo">
				<a class="navbar-brand text-logo" href="#">Job Portal</a>
			</div>
			<div class="right-of-logo-ads text-right">

				<h6 style="margin-bottom: 2px">
					<strong>The job web site with the best job offers on the
						market!</strong>
				</h6>
				<h6>You may use this space for ads or announcements ...</h6>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>




	<!-- Button trigger modal -->
	

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Log in to your
						account</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>

						<div class="form-group">
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">@</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroup" placeholder="Username">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">@</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroup" placeholder="Password">
							</div>
						</div>
						<a href=""> <small id="emailHelp" class="form-text text-muted">Forgotten
								password?</small></a>


						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block mt-3 mb-2">Submit</button>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<div class="width-100">
						<strong>Still don't have an account?</strong> <br> <a
							class="underline-link gray-link" href="">Create your job
							seeker account</a> &nbsp; or &nbsp; <a
							class="underline-link gray-link" href="">Sign up as an
							employer</a>
					</div>

				</div>
			</div>
		</div>
	</div>