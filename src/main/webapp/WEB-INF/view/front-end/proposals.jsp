<%@include file="/WEB-INF/view/front-end/common/header.jsp"%>
<div class="container mt-5 bg-proposal">
	<div class="row  mb-5">
		<div class="col-md-9">
			<!-- 		<img src="/files/122.PNG" style="height:100px; width:100px"> -->
			<div class="border">
				<h5 class="m-3">Place a Bid on this Project</h5>
				<hr>
				<p class="apply-text m-3">You will be able to edit your bid
					until the project is awarded to someone.</p>
				<form class="m-3" action="/applyjob/save" method="POST"
					enctype='multipart/form-data'>
					<div class="form-group">
							<input type="hidden"
								class="form-control" id="title" name="title"
								value="${jobPost.title}"> 
						</div>
						<div class="form-group">
							<input type="hidden"
								class="form-control" id="jobLength" name="jobLength"
								value="${jobPost.jobLength}"> 
						</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="jcode">Code</label> <input type="text"
								class="form-control" id="jcode" name="jcode"
								value="${jobPost.code}"> 
						</div>
						<div class="form-group col-md-6">
							<label for="budget">Budget</label> <input type="text"
								class="form-control" id="budget" name="budget"
								value="${jobPost.budget}">
						</div>
					</div>
					<!-- <div class="form-group row">
						<label for="name" class="col-sm-3 col-form-label">Code:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="code" name="code">
						</div>
					</div> -->
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="bidAmount">Bid Amount</label> <input type="text"
								class="form-control" id="show" name="bidAmount">
						</div>
						<div class="form-group col-md-6">
							<label for="deliveryTime">This project will be delivered
								in</label> <input type="text" class="form-control" id="deliveryTime"
								name="deliveryTime">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="freelancer">Freelancer</label> <input type="text"
								class="form-control" id="freelancer" name="freelancer">
						</div>
						<div class="form-group col-md-6">
							<label for="deliveryTime">Proposal Date</label> <input
								type="text" class="form-control" id="proposalDate"
								name="proposalDate">
						</div>
					</div>
					<!-- 					<p>Paid to you:</p> -->
					<!-- 					<input type="text" class="form-control" id="test" name="test"> -->
					<script src="https://cdn.ckeditor.com/4.18.0/standard/ckeditor.js"></script>
					<label for="description">Describe your proposal</label>
					<textarea name="description"></textarea>
					<script>
						CKEDITOR.replace('description');
					</script>

					<div class="form-group mt-2">
						<label for="img">Attachment</label> <input type="file"
							class="form-control" id="img" name="img">
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
<script>
	$('#bidAmount').change(function() {
		$('#test').val($(this).val() * .5);
	});

// 	$("#show").click(function() {
// 		$("#jobInfo").show();
// 	});

	var today = new Date();
	var dd = String(today.getDate()).padStart(2, '0');
	var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
	var yyyy = today.getFullYear();
	today = mm + '/' + dd + '/' + yyyy;

	$("#proposalDate").click(function() {
		$("#proposalDate").val(today);
	});
</script>

