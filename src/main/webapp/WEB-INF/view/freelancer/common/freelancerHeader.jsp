<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Freelancer Dashboard</title>

<!-- Custom fonts for this template-->
<link href="/resources/admin/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
<link href="/resources/admin/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="/resources/vendor/css/bootstrap.css">
<link rel="stylesheet" href="/resources/freelancer/css/style.css">
<link rel="stylesheet" href="/resources/vendor/css/style.css">
<!-- datatable -->
<link
	href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css">
</head>
<body id="page-top">
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-freelancer sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<img src="/resources/images/profile.png" class="profile_img">
<!-- 			<a class="sidebar-brand d-flex align-items-center justify-content-center" -->
<!-- 				href="index.html"> -->
<!-- 				<div class="sidebar-brand-icon rotate-n-15"> -->
<!-- 					<i class="fas fa-laugh-wink"></i> -->
<!-- 				</div> -->
<!-- 				<div class="sidebar-brand-text mx-3">Freelancer</div> -->
<!-- 			</a> -->

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Find
						Work -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#home" aria-expanded="true"
				aria-controls="home"> <i class="fas fa-fw fa-cog"></i> <span>Find
						Work</span>
			</a>
				<div id="home" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="/freelancer/findwork">Find Work</a> <a
							class="collapse-item" href="/freelancer/getsavedjob">Saved Jobs</a> <a
							class="collapse-item" href="/freelancer/proposals">Proposals </a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - jobs -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#jobs" aria-expanded="true"
				aria-controls="jobs"> <i class="fas fa-fw fa-cog"></i> <span>My
						Jobs</span>
			</a>
				<div id="jobs" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="/freelancer/jobs">My Jobs</a> <a
							class="collapse-item" href="cards.html">All Contracts</a> <a
							class="collapse-item" href="buttons.html">Work Diary </a>


					</div>
				</div></li>
			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Reports -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#users" aria-expanded="true"
				aria-controls="users"> <i class="fas fa-fw fa-wrench"></i> <span>Reports</span>
			</a>
				<div id="users" class="collapse" aria-labelledby="headingUtilities"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">

						<a class="collapse-item" href="login.html">Overview</a> <a
							class="collapse-item" href="register.html">My Reports</a> <a
							class="collapse-item" href="forgot-password.html">Billings &
							Earning</a> <a class="collapse-item" href="404.html">Connects
							History</a> <a class="collapse-item" href="blank.html">Home
							Slider</a> <a class="collapse-item" href="login.html">Transaction
							History</a> <a class="collapse-item" href="register.html">Certificate
							of Earnings</a>

					</div>
				</div></li>
			<!-- Nav Item - jobs -->
			<!-- Divider -->
			<hr class="sidebar-divider my-0">
			<!-- Nav Item - website -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#website" aria-expanded="true"
				aria-controls="website"> <i class="fas fa-fw fa-folder"></i> <span>Messages</span>
			</a>
				<div id="website" class="collapse" aria-labelledby="headingPages"
					data-parent="#accordionSidebar"></div></li>
			<!-- Divider -->
			<hr class="sidebar-divider my-0">
			<!-- Nav Item - Find
						Work -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#profile" aria-expanded="true"
				aria-controls="profile"> <i class="fas fa-fw fa-cog"></i> <span>Profile</span>
			</a>
				<div id="profile" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="/freelancer/profile/add">Add
							Profile</a> <a class="collapse-item" href="">Update Profile</a><a
							class="collapse-item" href="/freelancer/profile">Show Profile</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">
<!-- 			<!-- Divider --> 
<!-- 			<hr class="sidebar-divider d-none d-md-block"> -->

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>



		</ul>
		<!-- End of Sidebar -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light topbar-freelancer mb-4 static-top shadow">
					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
					<ul class="navbar-nav ml-auto">


						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i
								class="fa-solid fa-message icon-size"></i> <!-- Counter - Alerts -->
								<span class="badge badge-danger-freelancer badge-counter">3+</span>
						</a> <!-- Dropdown - Alerts -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">A new monthly report is
											ready to download!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										$290.29 has been deposited into your account!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Spending Alert: We've noticed unusually high spending for your
										account.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li>
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i
								class="fa-solid fa-arrow-right-from-bracket icon-size"></i>
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>
					</ul>
				</nav>