<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Collapsible sidebar using Bootstrap 4</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link href="/resources/employers/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="style2.css">
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

</head>

<body>

    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="profile">
				<img
					src="https://1.bp.blogspot.com/-vhmWFWO2r8U/YLjr2A57toI/AAAAAAAACO4/0GBonlEZPmAiQW4uvkCTm5LvlJVd_-l_wCNcBGAsYHQ/s16000/team-1-2.jpg"
					alt="profile_picture">
				<h3 class="text-center">Robert Walters</h3>
				
			</div>
            

            <ul class="list-unstyled components">
               
                <li >
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Home</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="#">Dashboard</a>
                        </li>
                        <li>
                            <a href="/employee/payment">Payments</a>
                        </li>
                        <li>
                            <a href="#">Sub Account</a>
                        </li>
                        <li>
                            <a href="#">messages</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">My Listings</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="#">Post a Job</a>
                        </li>
                        <li>
                            <a href="#">My Job Ads</a>
                        </li>
                        <li>
                            <a href="#">Courses</a>
                        </li>
                        <li>
                            <a href="#">Post a Course</a>
                        </li>
                        <li>
                            <a href="#">Banners</a>
                        </li>
                        <li>
                            <a href="#">Expired Listings</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#application" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Applications</a>
                    <ul class="collapse list-unstyled" id="application">
                        <li>
                            <a href="#">Job Applications</a>
                        </li>
                        <li>
                            <a href="#">Approved Applications</a>
                        </li>
                        <li>
                            <a href="#">Rejected Applications</a>
                        </li>
                        
                    </ul>
                </li>
                <li>
                    <a href="#profile" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Profile</a>
                    <ul class="collapse list-unstyled" id="profile">
                        <li>
                            <a href="#">Edit</a>
                        </li>
                        <li>
                            <a href="#">Change Password</a>
                        </li>
                        <li>
                            <a href="#">Logo </a>
                        </li>
                        <li>
                            <a href="#">Video Presentation </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#cvdatabase" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">CV Database</a>
                    <ul class="collapse list-unstyled" id="cvdatabase">
                        <li>
                            <a href="#">Search</a>
                        </li>
                        <li>
                            <a href="#">Browse the Resumes</a>
                        </li>
                        
                    </ul>
                </li>
            </ul>

            
        </nav>
        
         <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="#">Page</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Page</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Page</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Page</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>