<%@include file="/WEB-INF/view/admin/common/admin_header.jsp"%>
<div class="container">
	<form action="/payment/save" method="POST" enctype="multipart/form-data">
		<h2 class="text-center mb-5 mt-5">Add Payment Method</h2>
		<div class="form-group row">
			<label for="code" class="col-sm-4 col-form-label">Payment
				Method Code :</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="code" name="paymentCode">
			</div>
		</div>
		<div class="form-group row">
			<label for="name" class="col-sm-4 col-form-label">Payment
				Method Name :</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="name" name="paymentName">
			</div>
		</div>
		<div class="form-group row">
			<label for="name" class="col-sm-4 col-form-label">Payment
				Method Description :</label>
			<div class="col-sm-8">
				<textarea class="form-control" id="description" name="paymentDescription  "
					rows="3"></textarea>
			</div>
		</div>
		<div class="form-group row">
			<label for="name" class="col-sm-4 col-form-label">Payment
				Method Image :</label>
			<div class="col-sm-8">
				<input type="file" class="form-control" id="img" name="img">
			</div>
		</div>
		<div class="text-center">
			<button type="submit" class="btn btn-save ">Save</button>
		</div>

	</form>
</div>
<%@include file="/WEB-INF/view/admin/common/admin_footer.jsp"%>