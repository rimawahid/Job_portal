<%@include file="/WEB-INF/view/front-end/common/header.jsp"%>

<header class="header">
	<div class="container">
		<form name="home_form" id="home_form" action="" method="post"
			class="header_form">
			<input type="hidden" name="mod" value="search" /> <input
				type="hidden" name="search" value="1" /> <input type="hidden"
				name="location" id="location" value="" /> <input type="hidden"
				name="category" id="category" value="" /> <input type="hidden"
				name="lang" value="en" /> <input type="hidden" name="advanced"
				id="advanced_s" value="0" />

			<h3 class="home-slider-header">Find your dream job</h3>
			<div class="row semi-transp-light main-search-form-wrap banner">
				<div class="col-md-6 text-left">
					<label for="job_title" class="main-search-form-label">What</label>
					<input id="job_title" name="job_title" type="text"
						class="form-control form-control-lg" placeholder="" />
					<div id="word_suggest" class="dropdown-menu"
						style="display: none; margin-left: 15px; min-width: 65%"></div>
				</div>
				<div style="display: none" class="col-md-3 text-left">
					<label for="job_category" class="main-search-form-label">Category</label>
					<input id="job_category" name="job_category" type="text"
						class="form-control form-control-lg" placeholder="" />
					<div id="category_suggest" class="dropdown-menu"
						style="display: none; margin-left: 15px; min-width: 65%"></div>
				</div>
				<div class="col-md-4 text-left">
					<label for="job_location" class="main-search-form-label">Where</label>
					<input id="job_location" name="job_location" type="text"
						class="form-control form-control-lg" placeholder="" />
					<div id="location_suggest" class="dropdown-menu"
						style="display: none; margin-left: 15px; min-width: 65%"></div>
				</div>
				<div class="col-md-2">
					<label>&nbsp;</label> <input type="submit"
						class="width-100 btn btn-primary btn-lg custom-gradient home-search-button"
						value="Search" />
				</div>
				<div class="col-md-12 ">
					<a class="search-bottom-link" href="">Advanced search</a> <a
						class="search-bottom-link" href="">Jobs by Category</a> <a
						class="search-bottom-link" href="">Jobs by Location</a> <a
						class="search-bottom-link" href="">Jobs by Keyword</a> <a
						class="search-bottom-link" href="">Create an email alert</a> <a
						class="search-bottom-link" href="">Post a new job</a>
				</div>
				<div class="clearfix"></div>
				<div class="col-md-12" id="recent_searches">
					<a href="mod-en-recent-searches.html" class="search-bottom-link">Recent
						Searches:</a> <span class="saved-search-word badge badge-light">
						<a href="">HR Training</a>
					</span>
				</div>
			</div>
		</form>
		<div class="carousel-caption ">
			<a class=" no-decoration" href="">
				<div class="carousel-bottom-wrap">
					<strong>Looking for a job?</strong> <br /> Sign up now and upload
					your resume and be found by the employers ...
				</div>
			</a>
		</div>

	</div>
</header>
<!-- featured component start here -->

<div class="featured-companies">

	<div class="container">
		<h3>Find your next job with one of these leading companies</h3>
		<br />
		<div class="row mb-5">
			<div class="col-md-3 mb-5">
				<div class="card">

					<div class="card-body">
						<p class="card-text featured-logo-wrap">

							<a href="company-lg-electronics-281.html"><h3>LG
									Electronics</h3></a>
						<div class="clearfix"></div>
						</p>
						<hr />
						<a class="sub-link" href="jobs-lg-electronics-281.html">4 Jobs
							at LG Electronics</a>
					</div>
				</div>
			</div>
			<div class="col-md-3 mb-4">
				<div class="card">

					<div class="card-body">
						<p class="card-text featured-logo-wrap">

							<a href="company-mphasis-282.html"><h3>Mphasis</h3></a>
						<div class="clearfix"></div>
						</p>
						<hr />
						<a class="sub-link" href="jobs-mphasis-282.html">1 Jobs at
							Mphasis</a>
					</div>
				</div>
			</div>
			<div class="col-md-3 mb-4">
				<div class="card">

					<div class="card-body">
						<p class="card-text featured-logo-wrap">

							<a href="company-hewlettpackard-7.html"><h3>Hewlett-Packard</h3></a>
						<div class="clearfix"></div>
						</p>
						<hr />
						<a class="sub-link" href="jobs-hewlettpackard-7.html">1 Jobs
							at Hewlett-Packard</a>
					</div>
				</div>
			</div>
			<div class="col-md-3 mb-4">
				<div class="card">

					<div class="card-body">
						<p class="card-text featured-logo-wrap">

							<a href="company-dell-inc-6.html"><h3>Dell Inc</h3></a>
						<div class="clearfix"></div>
						</p>
						<hr />
						<a class="sub-link" href="jobs-dell-inc-6.html">4 Jobs at Dell
							Inc</a>
					</div>
				</div>
			</div>

		</div>
		<a href="mod-en-recruiters.html"
			class="custom-border-color custom-color button-link text-decoration-none">See
			all companies</a>

		<div class="clearfix"></div>
		<br />
	</div>
</div>

<!-- featured component end here -->

<!-- jobs by Category start here -->
<div class="container mt-5">
	<div class="text-center">
		<h2>Jobs by Category</h2>
	</div>
	<br />
	<div class="row">
		<div class="col-md-3  home-category-wrap">
			<a href="location-australia-113.html" class="home-img-category">
				<div class="home-img-category">IT & Telecoms</div>
			</a>
		</div>

		<div class="col-md-3  home-category-wrap">
			<a href="location-united-states-229.html" class="home-img-category">
				<div class="home-img-category">Banking & Finance</div>
			</a>
		</div>

		<div class="col-md-3  home-category-wrap">
			<a href="location-spain-29.html" class="home-img-category">
				<div class="home-img-category">Construction</div>
			</a>
		</div>

		<div class="col-md-3  home-category-wrap">
			<a href="location-united-kingdom-32.html" class="home-img-category">
				<div class="home-img-category">Education</div>
			</a>
		</div>

	</div>
	<div class="row" style="margin-top: 10px">
		<div class="col-md-3">

			<a href="category-accountancy-1.html" class="main_category_link"
				title="Accountancy">Accountancy</a>
		</div>
		<div class="col-md-3">

			<a href="category-armed-forces-2.html" class="main_category_link"
				title="Armed Forces">Armed Forces</a>
		</div>
		<div class="col-md-3">

			<a href="category-admin-secretarial-3.html"
				class="main_category_link" title="Admin & Secretarial">Admin &
				Secretarial</a>
		</div>
		<div class="col-md-3">

			<a href="category-engineering-7.html" class="main_category_link"
				title="Engineering">Engineering</a>
		</div>
		<div class="col-md-3">

			<a href="category-insurance-8.html" class="main_category_link"
				title="Insurance">Insurance</a>
		</div>
		<div class="col-md-3">

			<a href="category-health-sector-9.html" class="main_category_link"
				title="Health Sector">Health Sector</a>
		</div>
		<div class="col-md-3">

			<a href="category-hospitality-catering-10.html"
				class="main_category_link" title="Hospitality & Catering">Hospitality
				& Catering</a>
		</div>
		<div class="col-md-3">

			<a href="category-charities-voluntary-11.html"
				class="main_category_link" title="Charities & Voluntary">Charities
				& Voluntary</a>
		</div>
		<div class="col-md-3">

			<a href="category-leisure-tourism-12.html" class="main_category_link"
				title="Leisure & Tourism">Leisure & Tourism</a>
		</div>
		<div class="col-md-3">

			<a href="category-hr-training-14.html" class="main_category_link"
				title="HR & Training">HR & Training</a>
		</div>
		<div class="col-md-3">

			<a href="category-legal-professional-16.html"
				class="main_category_link" title="Legal & Professional">Legal &
				Professional</a>
		</div>
		<div class="col-md-3">

			<a href="category-manufacturing-17.html" class="main_category_link"
				title="Manufacturing">Manufacturing</a>
		</div>
		<div class="col-md-3">

			<a href="category-marketing-pr-18.html" class="main_category_link"
				title="Marketing & PR">Marketing & PR</a>
		</div>
		<div class="col-md-3">

			<a href="category-media-publishing-19.html"
				class="main_category_link" title="Media & Publishing">Media &
				Publishing</a>
		</div>
		<div class="col-md-3">

			<a href="category-sales-21.html" class="main_category_link"
				title="Sales">Sales</a>
		</div>
		<div class="col-md-3">

			<a href="category-recruitment-22.html" class="main_category_link"
				title="Recruitment">Recruitment</a>
		</div>
		<div class="col-md-3">

			<a href="category-social-care-23.html" class="main_category_link"
				title="Social Care">Social Care</a>
		</div>
		<div class="col-md-3">

			<a href="category-scientific-24.html" class="main_category_link"
				title="Scientific">Scientific</a>
		</div>
		<div class="col-md-3">

			<a href="category-transport-logistics-28.html"
				class="main_category_link" title="Transport & Logistics">Transport
				& Logistics</a>
		</div>
		<div class="col-md-3">

			<a href="category-wther-29.html" class="main_category_link"
				title="Other">Other</a>
		</div>
	</div>
</div>
<!-- jobs by Category end here -->
<div class="clearfix"></div>
<br />
<!-- jobs by Location start here -->
<div class="container mt-3">
	<div class="text-center">
		<h2>Jobs by Location</h2>
	</div>
	<br />
	<div class="row">
		<div class="col-md-3  home-category-wrap">
			<a href="location-australia-113.html" class="home-img-category">
				<div class="home-img-category">Dhaka</div>
			</a>
		</div>

		<div class="col-md-3  home-category-wrap">
			<a href="location-united-states-229.html" class="home-img-category">
				<div class="home-img-category">Chittagong</div>
			</a>
		</div>

		<div class="col-md-3  home-category-wrap">
			<a href="location-spain-29.html" class="home-img-category">
				<div class="home-img-category">Sylhel</div>
			</a>
		</div>

		<div class="col-md-3  home-category-wrap">
			<a href="location-united-kingdom-32.html" class="home-img-category">
				<div class="home-img-category">Rajshahi</div>
			</a>
		</div>

	</div>
	<div class="row" style="margin-top: 10px">
		<div class="col-md-3">
			<a href="location-argentina-110.html" class="main_category_link"
				title="Argentina">Argentina</a>
		</div>
		<div class="col-md-3">
			<a href="location-austria-1.html" class="main_category_link"
				title="Austria">Austria</a>
		</div>
		<div class="col-md-3">

			<a href="location-belgium-2.html" class="main_category_link"
				title="Belgium">Belgium</a>
		</div>
		<div class="col-md-3">

			<a href="location-latvia-17.html" class="main_category_link"
				title="Latvia">Latvia</a>
		</div>
		<div class="col-md-3">

			<a href="location-norway-22.html" class="main_category_link"
				title="Norway">Norway</a>
		</div>
		<div class="col-md-3">

			<a href="location-poland-23.html" class="main_category_link"
				title="Poland">Poland</a>
		</div>
		<div class="col-md-3">

			<a href="location-portugal-24.html" class="main_category_link"
				title="Portugal">Portugal</a>
		</div>
		<div class="col-md-3">
			<a href="location-sweden-30.html" class="main_category_link"
				title="Sweden">Sweden</a>
		</div>
	</div>
	<br />
</div>
<!-- jobs by Location start here -->




<%@include file="/WEB-INF/view/front-end/common/footer.jsp"%>