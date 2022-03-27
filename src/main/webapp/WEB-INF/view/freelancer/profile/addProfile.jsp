
<%@include file="/WEB-INF/view/freelancer/common/freelancerHeader.jsp"%>
<div role="tabpanel" id="">
	<div class="container">
		<h2 class="text-center ">Add Profile</h2>
		<form class="border p-3" action="/client/job/save" method="POST"
			enctype="multipart/form-data">

			<div>
				<h5 id="showC">Add certification</h5>
				<div class="no_display" id="displayC">
					<div class="form-group">
						<select id="disabledSelect" class="form-control">
							<option>Disabled select</option>
						</select>
					</div>
				</div>
			</div>
<hr>
			<div>
				<h5 id="showE">Add employment</h5>
				<div class="no_display" id="displayE">
					<div class="form-group">
						<label for="exampleInputPassword1">Company</label> <input
							type="text" class="form-control" id="cName" name="cName">
					</div>
					<div class="form-group">
						<label for="inputEmail4">Location</label>
						<div class="form-row">
							<div class="form-group col-md-6">
								<input type="text" class="form-control" id=city name="city">
							</div>
							<div class="form-group col-md-6">
								<input type="password" class="form-control" id="inputPassword4">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Title</label> <input
							type="text" class="form-control" id="postTitle" name="postTitle">
					</div>
					<div class="form-group">
						<label for="inputEmail4">Period</label>
						<div class="form-row">
							<div class="form-group col-md-6">
								<input type="text" class="form-control" id=city name="city">
							</div>
							<div class="form-group col-md-6">
								<input type="password" class="form-control" id="inputPassword4">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Description (Optional)</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							name="description" rows="3"></textarea>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>


<%@include file="/WEB-INF/view/freelancer/common/freelancerFooter.jsp"%>

<script>
	$("#showE").click(function() {
		$("#displayE").show();
	});
	$("#showC").click(function() {
		$("#displayC").show();
	});
</script>
