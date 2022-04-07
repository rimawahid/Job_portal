<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/freelancer/common/freelancerHeader.jsp"%>

<div class="container mt-5">
	<div class="mb-5">
		<form action="/freelancer/save" method="post">
			<div class="input-group mb-2">
				<input type="text" class="form-control"
					id="skill" name="skill" placeholder="Search By Skill">
					<button type="submit" id="mybtn" class="btn btn-success">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
			</div>
		</form>

	</div>

<!-- 	<div class="row"> -->




<!-- 		<div class="col-md-9 pd-4"> -->
<!-- 			<h3 class="no-margin">Jobs you might like</h3> -->
<!-- 			<hr /> -->
<!-- 			<br /> -->

<%-- 			<c:forEach items="${data}" var="jobPost"> --%>
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
<!-- 				</a> -->
<%-- 			</c:forEach> --%>
<!-- 		</div> -->

<!-- 	</div> -->
</div>





<%@include file="/WEB-INF/view/freelancer/common/freelancerFooter.jsp"%>

<script>


$('#mybtn').click(function() {
	  var term = $('#skill').val();
	  console.log(term);
//	  getValue();
});
$(document).ready(function() {
	 //getValue();
	  
// 	  $('#mybtn').click(function() {
// 		  var term = $('#skill').val();
// 		  console.log(term);
// 	//	  getValue();
// 	  });
	});
	
// 	function getValue(){
// 		$
// 		.post("/freelancer/findworks/"+$("#skill").val(),
// 				function(data){
// 			console.log(data.length +  ".....");
// 		});
// 	}

</script>