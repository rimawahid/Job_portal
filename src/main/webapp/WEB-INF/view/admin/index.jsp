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
<body><html lang="en" class="">  

<div class="wrapper">
    <nav class="navbar navbar-default navbar-fixed-top am-top-header">
      <div class="container-fluid">
        <div class="navbar-header">
          <div class="page-title"><span>Dashboard</span></div><a href="#" class="am-toggle-left-sidebar navbar-toggle collapsed"><span class="icon-bar"><span></span><span></span><span></span></span></a>
		  
		  <div class="navbar-brand">
			
				<a href="index.php"><img id="brand" src="images/admin-logo.png" class="main-logo-admin"/></a>
				<img id="loading" class="loading-image lfloat" src="images/load2.gif" height="35" style="position:relative;top:22px;left:14px" alt="loading"/>
		
		  </div>
		  
        </div>
		
		
		<a href="#" data-toggle="collapse" data-target="#am-navbar-collapse" class="am-toggle-top-header-menu collapsed"><span class="icon s7-angle-down"></span></a>
        <div id="am-navbar-collapse" class="collapse navbar-collapse">
          <ul class="am-notifications nav navbar-nav pull-right">
		  
		  
			 <li class="dropdown">
	<a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="dropdown-toggle">
 
	<span class="icon s7-comment"></span> Messages</a>
              <ul class="dropdown-menu am-notifications">
			    <li class="text-center">
                 
                  <a href="index.php?category=home&action=messages"><strong>Read All Messages</strong></a>
                </li>
							  
              
              </ul>
            </li>

<li class="dropdown">
	<a target="_blank" class="white-link" href="../index.php">

	  <span class="icon s7-next-2 pe-lg"></span>
	   Open the Main Site	</a>




 <li class="dropdown"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="dropdown-toggle">
			


<span class="user-name">administrator</span><span class="angle-down s7-angle-down"></span></a>
  <ul role="menu" class="dropdown-menu">

	<li><a href="index.php?category=home&action=password"><span class="icon s7-user"></span> Change Password</a>
	</li>
	<li><a href="index.php?category=exit&action=exit"><span class="icon s7-power"></span> <strong>Logout</strong></a>
	</li>
		
		
  </ul>
</li>
			
           
          </ul>
		
		  
			<ul id="top_navigation" class="nav navbar-nav am-top-menu">
         
				<li><a href="#">Dashboard</a></li>
			
		 
			</ul>
         
        </div>
      </div>
    </nav>
    <div class="am-left-sidebar">
      <div class="content">
        <div class="xam-logo">
		  
		  
		</div>
        <ul class="sidebar-elements">
          
			
<li class="parent"><a href="index.php"><i class="icon s7-display1"></i><span style="font-size:13px">Home</span></a>
<ul class="sub-menu" >
<li ><a class="s-level"  href="index.php">Dashboard</a></li>
<li ><a class="s-level"  href="index.php?category=home&action=messages">Messages</a></li>
<li ><a class="s-level"  href="index.php?category=home&action=connections">Login Report</a></li>
<li ><a class="s-level"  href="index.php?category=home&action=password">Change Password</a></li>
</ul>
</li>
<li class="parent"><a href="index.php?category=jobs&action=list"><i class="icon s7-credit"></i><span style="font-size:13px">Jobs</span></a>
<ul class="sub-menu" >
<li ><a class="s-level"  href="index.php?category=jobs&action=list">Job Listings</a></li>
<li ><a class="s-level"  href="index.php?category=jobs&action=courses">Courses</a></li>
<li ><a class="s-level"  href="index.php?category=jobs&action=job_alerts">Job Alerts</a></li>
<li ><a class="s-level"  href="index.php?category=jobs&action=fields">Job Fields</a></li>
<li ><a class="s-level"  href="index.php?category=jobs&action=applications">Applications</a></li>
<li ><a class="s-level"  href="index.php?category=jobs&action=jobs_keyword">Jobs by Keyword</a></li>
<li ><a class="s-level"  href="index.php?category=jobs&action=suggestions">Text Search Suggestions</a></li>
</ul>
</li>
<li class="parent"><a href="index.php?category=users&action=employers"><i class="icon s7-user"></i><span style="font-size:13px">Users</span></a>
<ul class="sub-menu" >
<li ><a class="s-level"  href="index.php?category=users&action=employers">Employers</a></li>
<li ><a class="s-level"  href="index.php?category=users&action=jobseekers">Jobseekers</a></li>
<li ><a class="s-level"  href="index.php?category=users&action=fields">Jobseeker Fields</a></li>
<li ><a class="s-level"  href="index.php?category=users&action=empl_fields">Employer Fields</a></li>
<li ><a class="s-level"  href="index.php?category=users&action=reviews">Company Reviews</a></li>
<li ><a class="s-level"  href="index.php?category=users&action=messages">User Messages</a></li>
<li ><a class="s-level"  href="index.php?category=users&action=uploaded_files">Uploaded Files</a></li>
</ul>
</li>
<li class="parent"><a href="index.php?category=site_management&action=pages_pro"><i class="icon s7-network"></i><span style="font-size:13px">Website</span></a>
<ul class="sub-menu" >
<li ><a class="s-level"  href="index.php?category=site_management&action=pages_pro">Pages</a></li>
<li ><a class="s-level"  href="index.php?category=site_management&action=modify">Template</a></li>
<li ><a class="s-level"  href="index.php?category=site_management&action=logo">Logo & Colors</a></li>
<li ><a class="s-level"  href="index.php?category=site_management&action=news">News</a></li>
<li ><a class="s-level"  href="index.php?category=site_management&action=home_slider">Home Slider</a></li>
<li ><a class="s-level"  href="index.php?category=site_management&action=articles">Blog</a></li>
<li ><a class="s-level"  href="index.php?category=site_management&action=languages">Language Versions</a></li>
<li ><a class="s-level"  href="index.php?category=site_management&action=language_file">Texts</a></li>
<li ><a class="s-level"  href="index.php?category=site_management&action=custom_titles">Custom Titles</a></li>
</ul>
</li>
<li class="parent"><a href="index.php?category=settings&action=options"><i class="icon s7-settings"></i><span style="font-size:13px">Settings</span></a>
<ul class="sub-menu" >
<li ><a class="s-level"  href="index.php?category=settings&action=options">Configuration Options</a></li>
<li ><a class="s-level"  href="index.php?category=settings&action=categories">Job Categories</a></li>
<li ><a class="s-level"  href="index.php?category=settings&action=locations">Locations</a></li>
<li ><a class="s-level"  href="index.php?category=settings&action=course_categories">Course Categories</a></li>
<li ><a class="s-level"  href="index.php?category=settings&action=feeds">Job Feeds</a></li>
<li ><a class="s-level"  href="index.php?category=settings&action=banner_areas">Banners</a></li>
<li ><a class="s-level"  href="index.php?category=settings&action=field_values">Field Values</a></li>
<li ><a class="s-level"  href="index.php?category=settings&action=adsense">Ads & Analytics</a></li>
<li ><a class="s-level"  href="index.php?category=settings&action=gdpr">GDPR</a></li>
</ul>
</li>
<li class="parent"><a href="index.php?category=payments&action=settings"><i class="icon s7-cash"></i><span style="font-size:13px">Payments</span></a>
<ul class="sub-menu" >
<li ><a class="s-level"  href="index.php?category=payments&action=settings">Settings</a></li>
<li ><a class="s-level"  href="index.php?category=payments&action=approve">Approve</a></li>
<li ><a class="s-level"  href="index.php?category=payments&action=archive">Payments Archive</a></li>
<li ><a class="s-level"  href="index.php?category=payments&action=packages">Packages</a></li>
<li ><a class="s-level"  href="index.php?category=payments&action=subscriptions">Subscriptions</a></li>
<li ><a class="s-level"  href="index.php?category=payments&action=credits">Credits</a></li>
<li ><a class="s-level"  href="index.php?category=payments&action=direct_payments">Direct Payments</a></li>
<li ><a class="s-level"  href="index.php?category=payments&action=coupons">Coupons</a></li>
<li ><a class="s-level"  href="index.php?category=payments&action=invoices">Invoices</a></li>
<li ><a class="s-level"  href="index.php?category=payments&action=invoice_settings">Invoice Settings</a></li>
</ul>
</li>
<li class="parent"><a href="index.php?category=extensions&action=extensions"><i class="icon s7-box2"></i><span style="font-size:13px">Extensions</span></a>
<ul class="sub-menu" >
<li ><a class="s-level"  href="index.php?category=extensions&action=extensions">Files</a></li>
<li ><a class="s-level"  href="index.php?category=extensions&action=tags">Tags</a></li>
<li class="menu-sub-link"><a class="s-level" href="index.php?category=faq_manager&action=home">FAQ Manager [add-on]</a></li>
<li class="menu-sub-link"><a class="s-level" href="index.php?category=newsletter&action=home">Newsletter [add-on]</a></li>
<li ><a class="s-level"  href="index.php?category=extensions&action=combine">Combine with Other Scripts</a></li>
</ul>
</li>
<li class="parent"><a href="index.php?category=statistics&action=reports"><i class="icon s7-graph1"></i><span style="font-size:13px">Statistics</span></a>
<ul class="sub-menu" >
<li ><a class="s-level"  href="index.php?category=statistics&action=reports">Reports</a></li>
<li ><a class="s-level"  href="index.php?category=statistics&action=referals">Referrals</a></li>
<li ><a class="s-level"  href="index.php?category=statistics&action=analytics">Visit Analytics</a></li>
</ul>
</li>
<li class="parent"><a href="index.php?category=security&action=types"><i class="icon s7-users"></i><span style="font-size:13px">Admin Users</span></a>
<ul class="sub-menu" >
<li ><a class="s-level"  href="index.php?category=security&action=types">User Groups</a></li>
<li ><a class="s-level"  href="index.php?category=security&action=new_user">New Administrator</a></li>
<li ><a class="s-level"  href="index.php?category=security&action=admin">Administrators</a></li>
<li ><a class="s-level"  href="index.php?category=security&action=permissions">User Permissions</a></li>
</ul>
</li>
		  
        </ul>
        <!--Sidebar bottom content-->
      </div>
    </div>
    <div class="content-wrapper">
	
		
	
      <div class="main-content"  id="main-content">
      

		<div class="tab-container">
              <ul class="nav nav-tabs hide-sm">
				<li class="active"><a href="index.php?category=home&action=welcome">Dashboard</a></li><li ><a href="index.php?category=home&action=messages">Messages</a></li><li ><a href="index.php?category=home&action=connections">Login Report</a></li><li ><a href="index.php?category=home&action=password">Change Password</a></li>
			 </ul>
              <div class="tab-content">
                <div class="tab-pane active cont min-height-400"> <div class="row">
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-info">
		<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<span class="icon s7-copy-file" style="font-size:64px"></span> 
						
					</div>
					
					<div class="col-xs-9 text-right">
						<div class="huge">13</div>
						<div>Jobs</div>
					</div>
				</div>
			</div>
			<a href="#jobs-list">
			
				<div class="details-container">
					<span class="pull-left">View Details</span>
					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-info panel-green">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<span class="icon s7-users" style="font-size:64px"></span>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">1</div>
						<div>Jobseekers</div>
					</div>
				</div>
			</div>
			<a href="#users-jobseekers">
				<div class="details-container">
					<span class="pull-left">View Details</span>
					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-info panel-yellow">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<span class="icon s7-portfolio" style="font-size:64px"></span>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">8</div>
						<div>Employers</div>
					</div>
				</div>
			</div>
			<a href="#users-employers">
				<div class="details-container">
					<span class="pull-left">View Details</span>
					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-info panel-red">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<span class="icon s7-note2" style="font-size:64px"></span>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">1</div>
						<div>Job Applications</div>
					</div>
				</div>
			</div>
			<a href="#jobs-applications">
				<div class="details-container">
					<span class="pull-left">View Details</span>
					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
</div>



<div class="row">
<div class="col-lg-8">

	
<div class="panel panel-default">
	<div class="panel-heading gray-gradient">
		<span class="icon s7-graph3" style="font-size:20px;position:relative;top:3px"></span> 
		Job Statistics	</div>

	<div class="panel-body">
		<br/>
		<div class="flot-chart">
			<div class="flot-chart-content" id="flot-bar-chart"></div>
		</div>
	</div>
	
</div>

	
</div>
 
	 <div class="col-lg-4">
		<div class="panel panel-default">
			<div class="panel-heading gray-gradient">
				
				<span class="icon s7-credit" style="font-size:24px;position:relative;top:4px"></span> 
				
				Latest Jobs			</div>
			
			<div class="panel-body">
				<div class="list-group">
								
					<a href="index.php?category=jobs&action=list_edit&id=486" class="list-group-item">
					
						<i class="fa fa-list-alt"></i>
						
						UX Design Lead						
						<span class="pull-right text-muted small"><em>2 years ago</em>
						</span>
						<div class="clearfix"></div>
					</a>
								
					<a href="index.php?category=jobs&action=list_edit&id=477" class="list-group-item">
					
						<i class="fa fa-list-alt"></i>
						
						Network Engineer						
						<span class="pull-right text-muted small"><em>2 years ago</em>
						</span>
						<div class="clearfix"></div>
					</a>
								
					<a href="index.php?category=jobs&action=list_edit&id=476" class="list-group-item">
					
						<i class="fa fa-list-alt"></i>
						
						Senior Java Consultant						
						<span class="pull-right text-muted small"><em>2 years ago</em>
						</span>
						<div class="clearfix"></div>
					</a>
								
					<a href="index.php?category=jobs&action=list_edit&id=475" class="list-group-item">
					
						<i class="fa fa-list-alt"></i>
						
						Data Analyst (Call Center)						
						<span class="pull-right text-muted small"><em>2 years ago</em>
						</span>
						<div class="clearfix"></div>
					</a>
								
					<a href="index.php?category=jobs&action=list_edit&id=474" class="list-group-item">
					
						<i class="fa fa-list-alt"></i>
						
						Senior Cybersecurity Research Engineer						
						<span class="pull-right text-muted small"><em>2 years ago</em>
						</span>
						<div class="clearfix"></div>
					</a>
								
					<a href="index.php?category=jobs&action=list_edit&id=473" class="list-group-item">
					
						<i class="fa fa-list-alt"></i>
						
						UX Design Lead						
						<span class="pull-right text-muted small"><em>2 years ago</em>
						</span>
						<div class="clearfix"></div>
					</a>
								
					<a href="index.php?category=jobs&action=list_edit&id=33" class="list-group-item">
					
						<i class="fa fa-list-alt"></i>
						
						Data Center Manager						
						<span class="pull-right text-muted small"><em>2 years ago</em>
						</span>
						<div class="clearfix"></div>
					</a>
								</div>
				
				<a href="index.php?category=jobs&action=list" class="btn btn-default btn-block">View All</a>
			</div>
		</div>
	</div>
	
</div>			

<script src="js/excanvas.min.js"></script>
<script src="js/jquery.flot.min.js"></script>
 
 
<script type="text/javascript">
$(function () {    
    var data1 = [
       [0, "0"],[4, "0"],[8, "0"],[12, "0"],[16, "0"],[20, 5],[24, 4],[28, 4]    ];
    var data2 = [
        [1, 1],[5, "0"],[9, "0"],[13, "0"],[17, "0"],[21, "0"],[25, "0"],[29, "0"]    ];
	var data3 = [
       [2, 1],[6, 1],[10, 3],[14, 1],[18, 2],[22, "0"],[26, "0"],[30, "0"]    ];
	
	var ticks = [
       [0, "December 31"],[4, "January 6"],[8, "January 7"],[12, "January 27"],[16, "April 29"],[20, "January 9"],[24, "January 11"],[28, "January 13"]    ];
	
	var y_ticks = [
       [0, "0"],[1, "1"],[2, "2"],[3, "3"],[4, "4"],[5, "5"]    ];
 
    var data = [{
        label: "New Jobs",
        data: data1,
        bars: 
		{
			barWidth: 0.8,
			show: true
		}
    },{
        label: "Jobseekers",
        data: data2,
        bars:
		{
		  barWidth: 0.8,
          show:true
        }
    },{
        label: "Employers",
        data: data3,
        bars:
		{
		  barWidth: 0.8,
          show:true
        }
    }];
 
    var options = {
            xaxis: {
                ticks: ticks
            },
			yaxis: {
                ticks: y_ticks
            },
            grid:{
                backgroundColor: {colors: ["#969696", "#5C5C5C"] }
            }
    };
 
    var plot = $.plot($("#flot-bar-chart"), data, options);  
});
</script>
 

<div class="clearfix"></div>


<div class="row">

<div class="col-lg-12">
 <div class="panel panel-default">
	<div class="panel-heading gray-gradient">
		<span class="icon s7-portfolio" style="font-size:20px;position:relative;top:3px"></span> 
		Latest Employers	</div>

	<div style="padding:10px" class="btn-block">
	<div class="xpanel-body">
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Date</th>
						<th>Company</th>
						<th>Contact Person</th>
						<th>Address</th>
						<th>Phone</th>
						<th>Website</th>
					</tr>
				</thead>
				<tbody>
									<tr onclick="document.location.href='index.php?category=users&folder=employers&page=edit&id=282'" style="cursor: pointer">
						<td>4 years ago</td>
						<td>Mphasis</td>
						<td></td>
						<td>Bagmane World Technology Center Bengaluru,  560048 India</td>
						<td>91 80 3352 5000</td>
						<td>www.mphasis.com</td>
					</tr>
									<tr onclick="document.location.href='index.php?category=users&folder=employers&page=edit&id=281'" style="cursor: pointer">
						<td>4 years ago</td>
						<td>LG Electronics</td>
						<td></td>
						<td>1000 Sylvan AvenueEnglewood Cliffs, NJ 07632 United States</td>
						<td>201-816-2000</td>
						<td>www.lg.com/us</td>
					</tr>
									<tr onclick="document.location.href='index.php?category=users&folder=employers&page=edit&id=8'" style="cursor: pointer">
						<td>7 years ago</td>
						<td>Robert Walters</td>
						<td>Mr. Recruiter</td>
						<td>WTC, Tower H Zuidplein 28</td>
						<td>206444655</td>
						<td></td>
					</tr>
									<tr onclick="document.location.href='index.php?category=users&folder=employers&page=edit&id=7'" style="cursor: pointer">
						<td>7 years ago</td>
						<td>Hewlett-Packard</td>
						<td>Test</td>
						<td>Palo Alto, California, United States</td>
						<td>650-231-8943</td>
						<td>www.hp.com</td>
					</tr>
								</tbody>
			</table>
		</div>
		
	</div>
	
		<a href="#users-employers" class="btn btn-default btn-block">View All</a>
	</div>
	
</div>
</div>

</div>

		<div class="clearfix"></div></div></div></div>


	 </div>
    </div>
    
  </div>
 
  
  

<script src="js/admin.js"></script>

<script type="text/javascript">
    $(document).ready(function(){
    
    	App.initx();
    
    
    });
  </script>
  
<div id="ContextMenuContainer"></div>
<iframe id="ajax-ifr" name="ajax-ifr" src="include/empty-page.php" style="position:absolute;top:0px;left:0px;visibility:hidden" width="1" height="1"> </iframe>


</body>