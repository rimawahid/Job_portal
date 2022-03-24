<%@include file="/WEB-INF/view/front-end/common/header.jsp"%>
<div class="container mt-5 bg-proposal">
	<div class="row  mb-5">
		<div class="col-md-9">
			<div class="border mb-5">
				<div class="d-flex justify-content-between mt-1">
					<h5 class="mt-3 ml-3 ">Project Details</h5>
					<div class="budget pr-3">
						<p class="jobtext">${jobPost.budget}</p>
						<p class="apply-text">BIDDING ENDS IN 6 DAYS,23 HOURS</p>
					</div>
				</div>

				<hr>
				<p class="m-3">${jobPost.description}</p>

				<div class="m-4">
					<h6>Skills and Expertise</h6>
					<div class="d-flex justify-content-start">
						<p class="skill border rounded-pill">Java</p>
						<p class="skill border rounded-pill">JavaScript</p>
						<p class="skill border rounded-pill">PHP</p>
					</div>
				</div>
			</div>
			<div class="border">
				<h5 class="m-3">Place a Bid on this Project</h5>
				<hr>
				<p class="apply-text m-3">You will be able to edit your bid
					until the project is awarded to someone.</p>
				<form class="m-3" action="/applyjob/save" method="POST" enctype='multipart/form-data'>
				<input type="text" class="form-control"
								id="title" name="title" value="${jobPost.title}">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Bid Amount</label> <input type="text"
								class="form-control" id="bidAmount" name="bidAmount">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">This project will be
								delivered in</label> <input type="text" class="form-control"
								id="deliveryTime" name="deliveryTime">
						</div>
					</div>
					<p>Paid to you:</p>
					<script src="https://cdn.ckeditor.com/4.18.0/standard/ckeditor.js"></script>
					<label for="inputEmail4">Describe your proposal</label>
					<textarea name="description"></textarea>
					<script>
						CKEDITOR.replace('description');
					</script>

					<div class="form-group mt-2">
						<label for="exampleFormControlInput1">Attachment</label> <input
							type="file" class="form-control" id="attachment" name="attachment">
					</div>
					<button type="submit"
					class="btn btn-success rounded-pill btn-submit mt-3 mb-4">Submit
					a Proposal</button>
				</form>
			</div>
		</div>
		<div class="col-md-3"></div>
	</div>
</div>

<%@include file="/WEB-INF/view/front-end/common/footer.jsp"%>