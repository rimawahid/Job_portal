<%@include file="/WEB-INF/view/front-end/common/header.jsp"%>
<div class="container">
	<div class="row mt-5">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<form class="border p-3" action="/user/save" method="POST">
				<h2 class="text-center mt-4">Complete your free account setup</h2>
				<div class="form-row mt-4 ">
					<div class="form-group col-md-6">
						<input type="text" class="form-control" id="firstName" name="firstName"
							placeholder="First name">
					</div>
					<div class="form-group col-md-6">
						<input type="text" class="form-control" id="lastName" name="lastName"
							placeholder="Last name">
					</div>
				</div>
				<div class="form-group  mt-3">
					<input type="email" class="form-control" id="email" name="email"
						placeholder="Email">
				</div>
				<div class="form-group  mt-4">
					<input type="password" class="form-control" id="password" name="password"
						placeholder="Create a password">
				</div>
				<div class="form-group mt-4 ">
					<select id="inputState" class="form-control" name="country">
						<option selected value="Bangladesh">Bangladesh</option>
						<option value="India">India</option>
					</select>
				</div>
				<div class="form-group mt-4 ">
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="client"
							name="role" value="Client" class="custom-control-input"> <label
							class="custom-control-label" for="client"> as
							a client</label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="freelancer"
							name="role" value="freelancer" class="custom-control-input"> <label
							class="custom-control-label" for="freelancer">as
							a freelancer</label>
					</div>
				</div>

				<div class="form-group mt-4 mb-3">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="gridCheck">
						<label class="form-check-label" for="gridCheck"><small>Yes,
								I understand and agree to the Upwork Terms of Service, including
								the User Agreement and Privacy Policy </small></label>
					</div>
				</div>
				<button type="submit"
					class="btn btn-success rounded-pill btn-width mt-3 mb-4">Create
					My Account</button>


			</form>
		</div>
		<div class="col-md-3"></div>
	</div>
</div>
<%@include file="/WEB-INF/view/front-end/common/footer.jsp"%>