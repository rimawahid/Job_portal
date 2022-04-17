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
<!-- 				<div class="form-check pb-3 findwork-text"> -->
<!-- 					<input class="form-check-input" type="radio" value="Any type of work" name="findjob" id="anyType" checked>  -->
<!-- 					<label class="form-check-label" for="anyType">Any type of work</label> -->
<!-- 				</div> -->
				<c:forEach items="${categories}" var="category">
				<div class="form-check pb-3 findwork-text">
					<input class="form-check-input" type="radio" value="${category.code}" name="findjob" id="${category.code}" class="testc" checked>
					<label class="form-check-label" for="${category.name}">${category.name}</label>
				</div>
				</c:forEach>
			</div>
			
			<div class="col-md-9">
				<h4 class="mt-4 mb-4">Explore remote jobs</h4>
<!-- 				<form> -->
				<div class="input-group mb-5">
					<input type="text" class="search-input" id="skill" name="skill" placeholder="Try skills like &#8220;Java&#8221; or &#8220;Javascript&#8221;">
					<button type="button" id="mybtn" class="search-icon">
						<i class="fa-solid fa-magnifying-glass icon"></i>
					</button>
				</div>
<!-- 				</form> -->


				<div id="job_div">
					
				
			
				</div>
			</div>
			
			
			
		</div>
	</div>
</div>
<%@include file="/WEB-INF/view/front-end/common/footer.jsp"%>
<script>

// var radioValue = $("input[name='findjob']:checked").val();
// console.log(radioValue);
 
var search_val = "";
var url_val = "";


function test(){

    var html = "";
    $("#job_div").html(html);
     $.ajax({
	 type: "POST",
	 data: {job_cat : search_val},
	 url: url_val,
	 success: function(data, status){
	 console.log("Data: " + data + "\nStatus: " + status);
	 console.log(data.length);
	 for (i = 0; i < data.length; i++) {
			$(".title").text(data[i].title);
			
			console.log(data[i].title);
			html += '<a class="jobs" href="/findwork/details/'+data[i].id+'">'
				html += '<div class="job-wrap border p-3 job-post">'
					html += '<p>'+data[i].title+'</p>'
						html += '<div class="d-flex justify-content-start">'
							html += '<p class="job-text">'+data[i].budgetType+'</p>'
								html += '<p class="job-text">Budget:'+data[i].budget+'</p>'
									html += '<p class="job-text">Posted: '+data[i].posted_time+'</p>'
										html += '</div>'
											html += '<p>'+data[i].description+'</p>'
												html += '<div class="d-flex justify-content-start">'
													html += '<p class="skill border rounded-pill">Java</p>'
														html += '<p class="skill border rounded-pill">JavaScript</p>'
															html += '<p class="skill border rounded-pill">PHP</p>'
																html += '</div>'
																	html += '<p class="job-text">Proposals:</p>'
																		html += '<div class="d-flex justify-content-start">'
																			html += '<p class="pr-3">'
																				html += '<i class="fa-solid fa-square-check tick-color"></i>' 
																					html += '<span class="job-text">Payment verified </span>' 
																						html += '<i class="fa-solid fa-star star-color"></i>'
																							html += '<i class="fa-solid fa-star star-color"></i>' 
																								html += '<i class="fa-solid fa-star star-color"></i>' 
																									html += '<i class="fa-solid fa-star star-color"></i>'
																										html += '</p>'
																											html += '<p class="job-text">'
																												html += '<i class="fa-solid fa-location-dot pr-1"></i>Bangladesh'
																													html += '</p>'
																														html += '</div>'
																															html += '</div>'
																																html += '</a>';
			

	 }
	///console.log(data[4].title);
	 $("#job_div").html(html);
	 }
     
    
	 }); 
}


$("#mybtn").on("click", function() {
	search_val = $("#skill").val();
	console.log(search_val)
	url_val = "/jobsbySkill";
	test();      
})

$("input[name='findjob']").on("click", function() {
	$("#skill").val("")
	var radioValue = $("input[name='findjob']:checked").val();
	console.log(radioValue);
	search_val = radioValue;
	url_val = "/jobsbyCat";console.log(search_val)
	test();      
})

	
</script>