<%@include file="/WEB-INF/view/front-end/common/header.jsp"%>
<link rel="stylesheet" href="/resources/vendor/css/style.css">
<div class="container mt-5">
	<div class="row">
		<div class="col-md-9 pd-4">

			<h3 class="no-margin">Latest Jobs</h3>
			<hr />
			<br />
			<c:forEach items="${jobPosts}" var="jobPost">
				<div class="job-wrap border p-3 job-post">
					<a>${jobPost.title}</a>
					<div class="d-flex justify-content-start">
						<p class="job-text">${jobPost.budgetType}</p>
						<p class="job-text">Budget:${jobPost.budget}</p>
						<p class="job-text">Posted: ${jobPost.posted_time}</p>
					</div>
					<p>${jobPost.description}</p>
					<div class="d-flex justify-content-start">
						<p class="skill border rounded-pill">Java</p>
						<p class="skill border rounded-pill">JavaScript</p>
						<p class="skill border rounded-pill">PHP</p>
					</div>
					<p class="job-text">Proposals:</p>



					<div class="d-flex justify-content-start">
						<p class="pr-3">
							<i class="fa-solid fa-square-check tick-color"></i> <span
								class="job-text">Payment verified </span> <i
								class="fa-solid fa-star star-color"></i> <i
								class="fa-solid fa-star star-color"></i> <i
								class="fa-solid fa-star star-color"></i> <i
								class="fa-solid fa-star star-color"></i>
						</p>
						<p class="job-text">
							<i class="fa-solid fa-location-dot pr-1"></i>Bangladesh
						</p>
					</div>

				</div>

			</c:forEach>
			<script type="text/javascript"
				src="https://www.indeed.com/ads/apiresults.js"></script>




		</div>



		<div class="col-md-3">
			side content

			<script>
		function FilterResults(type,value)
		{
			var search_string="page=en-Latest Jobs&searches=["HR Training~#14#-1~1646368280"]&PHPSESSID=d804557a53785f9183c1ce269512156a&Auth=administrator~e99a18c428cb38d5f260853678922e03~1647082644&page=en-Latest Jobs&searches=["HR Training~#14#-1~1646368280"]&PHPSESSID=d804557a53785f9183c1ce269512156a&Auth=administrator~e99a18c428cb38d5f260853678922e03~1647082644&";
			if(value!="")
			{
				if(search_string.indexOf(type+"=") !== -1)
				{
				
					var match_text=type+"=[^&]+";
					var re = new RegExp(match_text,"gi");
					search_string=search_string.replace(re, type+"="+value);
					document.location.href=("index.php?lang=en&search=1&"+search_string).replace("&&","&");
				}
				else
				{
					document.location.href=("index.php?lang=en&search=1&"+search_string+"&"+type+"="+value).replace("&&","&");
				}
			}
		}
		</script>

			<div class="block-wrap">

				<span class="aside-header"> Job Type </span>

				<hr class="top-bottom-margin" />

				<select name="job_type" class="form-control"
					onchange="FilterResults('job_type',this.options[this.selectedIndex].value)">
					<option value="-1">All</option>
					<option value="1">Full Time</option>
					<option value="2">Contract</option>
					<option value="3">Part Time</option>
					<option value="4">Internship</option>
					<option value="5">Temporary</option>
				</select>

				<div class="clearfix"></div>
				<br />
			</div>
			<br />


			<div class="block-wrap">

				<h4 class="aside-header">Date posted</h4>

				<hr class="top-bottom-margin" />

				<select class="form-control" name="posting_date"
					onchange="FilterResults('posting_date',this.options[this.selectedIndex].value)">
					<option value="">Any date</option>
					<option value="1">Today</option>
					<option value="2">Yesterday</option>
					<option value="3">Last 3 days</option>
					<option value="7">Last 7 days</option>
					<option value="30">Last 30 days</option>
				</select>
				<div class="clearfix"></div>
				<br />
			</div>
			<br />



			<div class="block-wrap">

				<h4 class="aside-header">Salary Range</h4>

				<hr class="top-bottom-margin" />

				<div class="row">
					<div class="col-md-4" style="padding-right: 0px">
						From <br /> <select name="salary_from" class="form-control"
							onchange="FilterResults('salary_from',this.options[this.selectedIndex].value)">
							<option value="">Any</option>
							<option value="1000">1,000</option>
							<option value="2000">2,000</option>
							<option value="3000">3,000</option>
							<option value="4000">4,000</option>
							<option value="5000">5,000</option>
							<option value="6000">6,000</option>
							<option value="7000">7,000</option>
							<option value="8000">8,000</option>
							<option value="9000">9,000</option>

						</select>

					</div>
					<div class="col-md-4" style="padding-right: 0px">
						To <br /> <select name="salary_to" class="form-control"
							onchange="FilterResults('salary_to',this.options[this.selectedIndex].value)">
							<option value="">Any</option>
							<option value="1000">1,000</option>
							<option value="2000">2,000</option>
							<option value="3000">3,000</option>
							<option value="4000">4,000</option>
							<option value="5000">5,000</option>
							<option value="6000">6,000</option>
							<option value="7000">7,000</option>
							<option value="8000">8,000</option>
							<option value="9000">9,000</option>

						</select>
					</div>

					<div class="col-md-4">
						per <br /> <select name="salary_type" class="form-control">
							<option value="3" selected>month</option>
							<option value="4">year</option>

						</select>
					</div>
				</div>
				<div class="clearfix"></div>
				<br />
			</div>
			<br />

		</div>
	</div>
</div>

<br />


<div class="text-center">
	<site bottom_banners />
</div>
<%@include file="/WEB-INF/view/front-end/common/footer.jsp"%>