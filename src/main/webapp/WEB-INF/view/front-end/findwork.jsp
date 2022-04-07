<%@include file="/WEB-INF/view/front-end/common/header.jsp"%>
<link rel="stylesheet" href="/resources/vendor/css/style.css">
<div class="container">
	<div class="mb-5">
		<h2 class="findwork-heading mb-3">Find the best freelance jobs</h2>
		<p class="findwork-text">Browse jobs posted on Rimazing, or jump
			right in and create a free profile to find the work that you love to
			do.</p>
		<div class="d-flex">
			<button class="btn btn-success  rounded-pill pr-4 pl-4 mr-3">Find
				Work</button>
			<a style="color: #14a800;" class=" pt-2 pr-4 pl-4"><i
				class=" findwork-icon fa-solid fa-play"></i>Watch a demo</a>
		</div>
	</div>
	<hr>
	<div>
		<p class="findwork-text">Find Freelance Jobs /</p>
		<div class="row">
			<div class="col-md-3">
			<h4 class="mt-4 mb-4">Type of Work</h4>
				<div class="form-check pb-3 findwork-text">
					<input class="form-check-input" type="radio" name="findjob" id="anyType"checked> 
					<label class="form-check-label" for="anyType">Any type of work</label>
				</div>
				<c:forEach items="${categories}" var="category">
				<div class="form-check pb-3 findwork-text">
					<input class="form-check-input" type="radio" name="findjob" id="${category.name}">
					<label class="form-check-label" for="${category.name}">${category.name}</label>
				</div>
				</c:forEach>
			</div>
			
			<div class="col-md-9">
				<h4 class="mt-4 mb-4">Explore remote jobs</h4>
<!-- 				<form> -->
				<div class="input-group mb-5">
					<input type="text" class="search-input" id="skill" name="skill" placeholder="Try skills like &#8220;Java&#8221; or &#8220;Javascript&#8221;">
					<button type="submit" id="mybtn" class="search-icon">
						<i class="fa-solid fa-magnifying-glass icon"></i>
					</button>
				</div>
<!-- 				</form> -->
<!-- 				<div> -->
<%-- 					<c:forEach items="${jobPosts}" var="jobPost"> --%>
<%-- 				<a class="jobs" href="/findwork/details/${jobPost.id}"> --%>
<!-- 					<div class="job-wrap border p-3 job-post"> -->
<%-- 						<p>${jobPost.title}</p> --%>
<!-- 						<div class="d-flex justify-content-start"> -->
<%-- 							<p class="job-text">${jobPost.budgetType}</p> --%>
<%-- 							<p class="job-text">Budget:${jobPost.budget}</p> --%>
<%-- 							<p class="job-text">Posted: ${jobPost.posted_time}</p> --%>
<!-- 						</div> -->
<%-- 						<p>${jobPost.description}</p> --%>
<!-- 						<div class="d-flex justify-content-start"> -->
<!-- 							<p class="skill border rounded-pill">Java</p> -->
<!-- 							<p class="skill border rounded-pill">JavaScript</p> -->
<!-- 							<p class="skill border rounded-pill">PHP</p> -->
<!-- 						</div> -->
<!-- 						<p class="job-text">Proposals:</p> -->
<!-- 						<div class="d-flex justify-content-start"> -->
<!-- 							<p class="pr-3"> -->
<!-- 								<i class="fa-solid fa-square-check tick-color"></i> <span -->
<!-- 									class="job-text">Payment verified </span> <i -->
<!-- 									class="fa-solid fa-star star-color"></i> <i -->
<!-- 									class="fa-solid fa-star star-color"></i> <i -->
<!-- 									class="fa-solid fa-star star-color"></i> <i -->
<!-- 									class="fa-solid fa-star star-color"></i> -->
<!-- 							</p> -->
<!-- 							<p class="job-text"> -->
<!-- 								<i class="fa-solid fa-location-dot pr-1"></i>Bangladesh -->
<!-- 							</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 						</a> -->
<%-- 				</c:forEach> --%>
<!-- 				</div> -->
			</div>
		</div>
	</div>
</div>
<%@include file="/WEB-INF/view/front-end/common/footer.jsp"%>
<script>
$("#mybtn").on("click", function(e){
	$.get("/allJobs", function(data, status){
		console.log(data);
		for (i = 0; i < data.length; i++){
			console.log(data[i].title);
		}
	})
})

// $("#mybtn").on("click", function(e) {
// 	      $.ajax({
// 		 type: "GET",
// 		 url: "/allJobs",
// 		 success: function(data, status){
// 		 console.log("Data: " + data + "\nStatus: " + status);
// 		 console.log(data.length);
// 		 }
// 		 }); } )
</script>