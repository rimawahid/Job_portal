<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="/resources/admin/css/ssssstyle.css" rel="stylesheet">
    

</head>
<body id="page-top">
  <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
               <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Admin</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            
            <!-- Nav Item - jobs -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#home"
                    aria-expanded="true" aria-controls="home">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Home</span>
                </a>
                <div id="home" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="buttons.html">Dashboard</a>
                        <a class="collapse-item" href="cards.html">Messages</a>
                         <a class="collapse-item" href="buttons.html">Login Report</a>
                        <a class="collapse-item" href="cards.html">Change Password</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
          <hr class="sidebar-divider my-0">

          
            <!-- Nav Item - jobs -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#jobs"
                    aria-expanded="true" aria-controls="jobs">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Jobs</span>
                </a>
                <div id="jobs" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="buttons.html">Job Listings</a>
                        <a class="collapse-item" href="cards.html">Courses</a>
                        <a class="collapse-item" href="buttons.html">Job Alerts</a>
                        <a class="collapse-item" href="cards.html">Job Fields</a>
                        <a class="collapse-item" href="buttons.html">Applications</a>
                        <a class="collapse-item" href="cards.html">Jobs by Keyword</a>
                        <a class="collapse-item" href="buttons.html">Text Search Suggestions</a>
                       
                    </div>
                </div>
            </li>
			<!-- Divider -->
            <hr class="sidebar-divider my-0">
			
            <!-- Nav Item - users -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#users"
                    aria-expanded="true" aria-controls="users">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Users</span>
                </a>
                <div id="users" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="utilities-color.html">Employers</a>
                        <a class="collapse-item" href="utilities-border.html">Jobseekers</a>
                        <a class="collapse-item" href="utilities-animation.html">Jobseeker Fields</a>
                        <a class="collapse-item" href="utilities-other.html">Employer Fields</a>
                        <a class="collapse-item" href="utilities-border.html">Company Reviews</a>
                        <a class="collapse-item" href="utilities-animation.html">User Messages</a>
                        <a class="collapse-item" href="utilities-other.html">Uploaded Files</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">
            <!-- Nav Item - website -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#website"
                    aria-expanded="true" aria-controls="website">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Website</span>
                </a>
                <div id="website" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                       
                        <a class="collapse-item" href="login.html">Pages</a>
                        <a class="collapse-item" href="register.html">Template</a>
                        <a class="collapse-item" href="forgot-password.html">Logo & Colors</a>
                        <a class="collapse-item" href="404.html">News</a>
                        <a class="collapse-item" href="blank.html">Home Slider</a>
                        <a class="collapse-item" href="login.html">Blog</a>
                        <a class="collapse-item" href="register.html">Language Versions</a>
                        <a class="collapse-item" href="forgot-password.html">Texts</a>
                         <a class="collapse-item" href="forgot-password.html">Custom Titles</a>
                    </div>
                </div>
            </li>
<!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - website -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#setting"
                    aria-expanded="true" aria-controls="setting">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Settings</span>
                </a>
                <div id="setting" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                       
                        <a class="collapse-item" href="login.html">Configuration Options</a>
                        <a class="collapse-item" href="register.html">Job Categories</a>
                        <a class="collapse-item" href="forgot-password.html">Locations</a>
                        <a class="collapse-item" href="404.html">Course Categories</a>
                        <a class="collapse-item" href="blank.html">Job Feeds</a>
                        <a class="collapse-item" href="login.html">Banners</a>
                        <a class="collapse-item" href="register.html">Field Values</a>
                        <a class="collapse-item" href="forgot-password.html">Ads & Analytics</a>
                         <a class="collapse-item" href="forgot-password.html">GDPR</a>
                    </div>
                </div>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider my-0">
            
            <!-- Nav Item - Payments -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Payments</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="login.html">Settings</a>
                        <a class="collapse-item" href="register.html">Approve</a>
                        <a class="collapse-item" href="forgot-password.html">Payments Archive</a>
                        <a class="collapse-item" href="404.html">Packages</a>
                        <a class="collapse-item" href="blank.html">Subscriptions</a>
                        <a class="collapse-item" href="login.html">Credits</a>
                        <a class="collapse-item" href="register.html">Direct Payments</a>
                        <a class="collapse-item" href="forgot-password.html">Coupons</a>
                         <a class="collapse-item" href="forgot-password.html">Invoices</a>
                         <a class="collapse-item" href="forgot-password.html">Invoice Settings</a>
                    </div>
                </div>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider my-0">
            
           <!-- Nav Item - Extensions -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Extensions</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Components:</h6>
                        <a class="collapse-item" href="buttons.html">Buttons</a>
                        <a class="collapse-item" href="cards.html">Cards</a>
                    </div>
                </div>
            </li>
             <!-- Divider -->
            <hr class="sidebar-divider my-0">
			<!-- Nav Item - Statics -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#statistics"
                    aria-expanded="true" aria-controls="statistics">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Statistics</span>
                </a>
                <div id="statistics" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                         <a class="collapse-item" href="buttons.html">Reports</a>
                        <a class="collapse-item" href="buttons.html">Referrals</a>
                        <a class="collapse-item" href="cards.html">Visit Analytics</a>
                    </div>
                </div>
            </li>
             <!-- Divider -->
            <hr class="sidebar-divider my-0">
            <!-- Nav Item - Admin Users -->
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#admin"
                    aria-expanded="true" aria-controls="admin">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Admin Users</span>
                </a>
                <div id="admin" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                         <a class="collapse-item" href="buttons.html">User Groups</a>
                        <a class="collapse-item" href="buttons.html">New Administrator</a>
                        <a class="collapse-item" href="cards.html">Administrator</a>
                        <a class="collapse-item" href="cards.html">User Permissions</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->
            <!-- <div class="sidebar-card d-none d-lg-flex">
                <img class="sidebar-card-illustration mb-2" src="img/undraw_rocket.svg" alt="...">
                <p class="text-center mb-2"><strong>SB Admin Pro</strong> is packed with premium features, components, and more!</p>
                <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a>
            </div> -->

        </ul>
        <!-- End of Sidebar -->