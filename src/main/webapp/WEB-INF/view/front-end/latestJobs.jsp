<%@include file="/WEB-INF/view/front-end/common/header.jsp"%>
<link rel="stylesheet" href="/resources/vendor/css/style.css">
<div class="container mt-5">
	<div class="row">
		
		
			<div class="col-md-9 pd-4">
			<h3 class="no-margin">Latest Jobs</h3>
		<hr />
		<br /> 
		
				<c:forEach items="${jobPosts}" var="jobPost">
				<a class="jobs" href="/findwork/details/${jobPost.id}">
					<div class="job-wrap border p-3 job-post">
						<p>${jobPost.title}</p>
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
						</a>
				</c:forEach>
			</div>
	
	</div>
</div>
<br />
<div class="text-center">
	<site bottom_banners />
</div>
<%@include file="/WEB-INF/view/front-end/common/footer.jsp"%>