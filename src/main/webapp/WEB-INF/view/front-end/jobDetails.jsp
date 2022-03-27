<%@include file="/WEB-INF/view/front-end/common/header.jsp"%>
<div class="container mt-5">
	<div class="row border mb-5">
		<div class="col-md-9">
		
			<div class="job-wrap border-right p-3">
<%-- 			<input type="hidden" name="id" value="${j.id}" /><br /> --%>
				<h5>${jobPost.title}</h5>
				<hr>

				<div>
					<p>${jobPost.category}</p>
					<p class="job-details-text ">Posted 7 hours age</p>
					<p class="jobtext ">Specialized profiles can help you better
						highlight your expertise when submitting proposals to jobs like
						these. Create a specialized profile.</p>
					<p>
						<i class="fa-solid fa-location-crosshairs tick-color"></i>Worldwide
					</p>
				</div>
				<hr>
				<div>
					<p>${jobPost.description}</p>
					<hr>
				</div>
				<div class="row">
					<div class="col-md-4">
						<h6>
							<i class="fa-solid fa-clock pr-2"></i>Less than ${jobPost.jobLength}
						</h6>
						<p class="job-details-text ml-4">Hourly</p>
					</div>
					<div class="col-md-4">
						<h6>
							<i class="fa-solid fa-calendar-minus pr-2"></i>Less than a month
						</h6>
						<p class="job-details-text ml-4">Project Length</p>
					</div>
					<div class="col-md-4">
						<h6>
							<i class="fa-solid fa-head-side-virus pr-2"></i>Expert
						</h6>
						<p class="jobtext ml-4">I am willing to pay higher rates for
							the most experienced freelancers</p>
					</div>
					<div class="col-md-4">
						<h6><i class="fa-solid fa-clock-rotate-left pr-2"></i>$${jobPost.budget}</h6>
						<p class="job-details-text ml-4">${jobPost.budgetType}</p>
					</div>
				</div>
				<hr>
				<div>
					<h6>Attachments</h6>
				</div>
				<hr>
				<div>
					<h6>Project Type:</h6>
				</div>
				<hr>
				<div>
					<h6>Skills and Expertise</h6>
					<div class="d-flex justify-content-start">
						<p class="skill border rounded-pill">Java</p>
						<p class="skill border rounded-pill">JavaScript</p>
						<p class="skill border rounded-pill">PHP</p>
					</div>
				</div>
				<hr>
				<div>
					<h6>Activity on the job</h6>
					<p class="job-details-text ">Proposals: 10-15</p>
					<p class="job-details-text ">Last viewed by client: 3 hours age</p>
					<p class="job-details-text ">Interviewing: 5</p>
					<p class="job-details-text ">Invites sent: 2</p>
					<p class="job-details-text ">Unanswered invites: 1</p>
				</div>

			</div>
		</div>
		<div class="col-md-3">
			<div class="mt-5 pb-2">
				<a type="submit" href="/jobapply/${jobPost.id}"
					class="btn btn-success rounded-pill btn-width mt-3 mb-4">Submit
					a Proposal</a>
				<button type="submit"
					class="btn btn-outline-success btn-savejob  rounded-pill pr-4 pl-4">Save
					Job</button>
				<p class="jobtext ">Required Connects to submit a Proposal: 10</p>
				<p class="job-details-text ">Available Connects: 10-15</p>
			</div>
			<hr>
			<div class="pb-2">
				<h6>About the client</h6>
				<p class="job-text">Payment verified</p>
				<p class="pr-3">
					<i class="fa-solid fa-square-check tick-color"></i> <i
						class="fa-solid fa-star star-color"></i> <i
						class="fa-solid fa-star star-color"></i> <i
						class="fa-solid fa-star star-color"></i> <i
						class="fa-solid fa-star star-color"></i> <span>4.90 of 3
						reviews</span>
				</p>
				<p class="job-details-text"> Bangladesh</p>
				<h6>13 jobs posted</h6>
				<p class="job-details-text"> 47% hire rate , 3 open jobs</p>
				<h6>$200+ total spent</h6>
				<p class="job-details-text"> 6 hires , 3 active</p>
				<p class="job-details-text"> Member since Feb 7, 2022</p>
			</div>
			
			<hr>
		</div>
	</div>
</div>


<%@include file="/WEB-INF/view/front-end/common/footer.jsp"%>