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

<title>Admin Dashboard</title>

<!-- Custom fonts for this template-->
<link href="/resources/admin/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<!-- Custom styles for this template-->
<link href="/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
<link href="/resources/admin/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="/resources/vendor/css/bootstrap.css">
<link rel="stylesheet" href="/resources/vendor/css/style.css">

<!-- datatable -->
<link href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
</head>
<body id="page-top">
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">Admin</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">


			<!-- Nav Item - jobs -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#home" aria-expanded="true"
				aria-controls="home"> <i class="fas fa-fw fa-cog"></i> <span>Home</span>
			</a>
				<div id="home" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="buttons.html">Dashboard</a> <a
							class="collapse-item" href="cards.html">Messages</a> <a
							class="collapse-item" href="buttons.html">Login Report</a> <a
							class="collapse-item" href="cards.html">Change Password</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">


			<!-- Nav Item - jobs -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#jobs" aria-expanded="true"
				aria-controls="jobs"> <i class="fas fa-fw fa-cog"></i> <span>Jobs</span>
			</a>
				<div id="jobs" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="buttons.html">Job Listings</a> <a
							class="collapse-item" href="cards.html">Courses</a> <a
							class="collapse-item" href="buttons.html">Job Alerts</a> <a
							class="collapse-item" href="cards.html">Job Fields</a> <a
							class="collapse-item" href="buttons.html">Applications</a> <a
							class="collapse-item" href="cards.html">Jobs by Keyword</a> <a
							class="collapse-item" href="buttons.html">Text Search
							Suggestions</a>

					</div>
				</div></li>
			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - users -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#users" aria-expanded="true"
				aria-controls="users"> <i class="fas fa-fw fa-wrench"></i> <span>Users</span>
			</a>
				<div id="users" class="collapse" aria-labelledby="headingUtilities"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="/user/client">Clients</a> <a
							class="collapse-item" href="/user/freelancer">Freelancer</a>

					</div>
				</div></li>

			<!-- Divider -->


			<hr class="sidebar-divider my-0">

			<!-- Nav Item - website -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#setting" aria-expanded="true"
				aria-controls="setting"> <i class="fas fa-fw fa-folder"></i> <span>Settings</span>
			</a>
				<div id="setting" class="collapse" aria-labelledby="headingPages"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="/category">Categories</a> <a
							class="collapse-item" href="/subcategory">Sub Categories</a> <a
							class="collapse-item" href="404.html">Course Categories</a> <a
							class="collapse-item" href="blank.html">Job Feeds</a> <a
							class="collapse-item" href="login.html">Banners</a> <a
							class="collapse-item" href="register.html">Field Values</a> <a
							class="collapse-item" href="forgot-password.html">Ads &
							Analytics</a> <a class="collapse-item" href="forgot-password.html">GDPR</a>
					</div>
				</div></li>
			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Payments -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i> <span>Payments</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="/payment">Add Payment Methods</a> <a
							class="collapse-item" href="/payment/allmethod">All Payment Methods</a> <a
							class="collapse-item" href="forgot-password.html">Payments
							Archive</a> <a class="collapse-item" href="404.html">Packages</a> <a
							class="collapse-item" href="blank.html">Subscriptions</a> <a
							class="collapse-item" href="login.html">Credits</a> <a
							class="collapse-item" href="register.html">Direct Payments</a> <a
							class="collapse-item" href="forgot-password.html">Coupons</a> <a
							class="collapse-item" href="forgot-password.html">Invoices</a> <a
							class="collapse-item" href="forgot-password.html">Invoice
							Settings</a>
					</div>
				</div></li>
			
			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

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
					class="navbar navbar-expand navbar-light topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>
							<li  class="main-site"> <a class="mt " href="/">Open the main Site</a></li>

					

						<!-- Nav Item - Messages -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 
								<!-- Counter - Messages -->
						</a> <!-- Nav Item - User Information -->
<!-- 						<li class="nav-item dropdown no-arrow"><a -->
<!-- 							class="nav-link dropdown-toggle" href="#" id="userDropdown" -->
<!-- 							role="button" data-toggle="dropdown" aria-haspopup="true" -->
<!-- 							aria-expanded="false"> <span -->
<!-- 								class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas -->
<!-- 									McGee</span> <img class="img-profile rounded-circle" -->
<!-- 								src="img/undraw_profile.svg"> -->
<!-- 						</a> Dropdown - User Information -->
<!-- 							<div -->
<!-- 								class="dropdown-menu dropdown-menu-right shadow animated--grow-in" -->
<!-- 								aria-labelledby="userDropdown"> -->
<!-- 								<a class="dropdown-item" href="#"> <i -->
<!-- 									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile -->
<!-- 								</a> <a class="dropdown-item" href="#"> <i -->
<!-- 									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> -->
<!-- 									Settings -->
<!-- 								</a> <a class="dropdown-item" href="#"> <i -->
<!-- 									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> -->
<!-- 									Activity Log -->
<!-- 								</a> -->
<!-- 								<div class="dropdown-divider"></div> -->
<!-- 								<a class="dropdown-item" href="#" data-toggle="modal" -->
<!-- 									data-target="#logoutModal"> <i -->
<!-- 									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i> -->
<!-- 									Logout -->
<!-- 								</a> -->
<!-- 							</div></li> -->

					</ul>

				</nav>
				<!-- End of Topbar -->