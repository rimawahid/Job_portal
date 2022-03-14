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
						data-toggle="modal" data-target="#login-modal">LOG IN</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div style="padding-bottom: 10px;height:80px;">
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
	<div class="top-line"></div>
	