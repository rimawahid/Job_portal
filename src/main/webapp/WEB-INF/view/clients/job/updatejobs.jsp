<%@include file="/WEB-INF/view/clients/common/clientHeader.jsp"%>

<div class="container-fluid">
	<h2 class="text-center ">Post a new job</h2>


	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<form class="" action="/client/save" method="POST">

				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Title:</label>
					<div class="col-sm-9">
						<input type="text" value="${j.title}" class="form-control" id="title" name="title">
					</div>
				</div>
				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Description:</label>
					<div class="col-sm-9">
						<textarea class="form-control" id="exampleFormControlTextarea1" value="${j.description}"  name="description"
							rows="3">${j.description}</textarea>
					</div>
				</div>

				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Budget:</label>
					<div class="col-sm-9">
						<div class="row">
							<div class="col-sm-6">
								<input type="text" value="${j.budget}" class="form-control" id="budget"
									name="budget">
							</div>
							<div class="col-sm-6">
								<select id="inputState" class="form-control" name="budgetType">
									<option selected value="Fixed project">Fixed project</option>
									<option value="Per Hour">Per Hour</option>
								</select>
							</div>
						</div>

					</div>
				</div>
		<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Delivery
						Deadline:</label>
					<div class="col-sm-9">
						<input type="date" value="${j.delivery_deadline}"  class="form-control" id="deliveryDeadline"
							name="delivery_deadline">
					</div>
				</div> 
				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Attachment</label>
					<div class="col-sm-9">
						<input type="file" class="form-control" id="atttachment"
							name="atttachment">
					</div>
				</div>

				<button type="submit" class="btn btn-save rounded-pill  mt-3 mb-4">Update job</button>


			</form>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>