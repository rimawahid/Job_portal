<%@include file="/WEB-INF/view/front-end/common/header.jsp"%>
<div class="container mt-5">
	<div class="row">
		<div class="col-md-9">
			<h3 class="no-margin">In order to sign up, please fill the form
				below</h3>
			<br> <i>Register in order to apply for jobs, upload your
				resume and be found by employers.</i> <br> <br>
			<form id=main>
				<fieldset>
					<ol>
						<li><label>Email: (*) </label> <input type="email" required
							name="user_email" id="user_email" /></li>
						<li><label>Password: (*) </label> <input type="password"
							required title="Please enter six or more characters."
							name="password" id="password" /></li>
						<li><label>First Name: (*) </label> <input type="text"
							required name="first_name" id="" first_name""/></li>
						<li><label>Last Name: (*) </label> <input type="text"
							required name="last_name" id="" last_name""/></li>
						<li><label>Address: </label> <textarea name="address"
								cols="32" rows="3"></textarea></li>
						<li><label>Phone: </label> <input type="text" name="phone"
							id="phone" /></li>
						<li><label>Resume: </label> <input type="file" name="cv"
							id="cv" /></li>
						<li><label>When did you graduate?:</label> <select
							name=pfield0 class="280-field">
								<option value>Please Select</option>
								<option label="">Less than 3 yours age</option>
								<option label="">3-8 yours age</option>
						</select></li>
					</ol>


				</fieldset>
				<fieldset>

					<ol>
						<li><label>&nbsp;</label> <img src="include/sec_image.php"
							width="150" height="30" />
							<div class="clearfix"></div> <label>Code:</label> <input
							type="text" required name="code" value="" size="8" /></li>


						<li><input type="checkbox" name="newsletter" value="1">
							I would like to subscribe for the www.phpscriptdemos.com/jobs
							newsletter</li>

						<li><input type="checkbox" name="data_process" value="1"
							required /> I agree with my data being stored and processed - we
							don't share or sell your personal information, <a
							class="underline-link" href="mod-en-gdpr.html" target="_blank">Read
								More</a></li>
					</ol>
				</fieldset>

				<div class="clearfix"></div>
				<span class="l-margin-35">(*) required fields</span> <br />
				<button type="submit" class="btn btn-primary float-right btn-width">Submit</button>
				<div class="clearfix"></div>

				<br />


			</form>
		</div>
		<div class="col-md-3">
			<h3 class="aside-header no-top-margin">Advertisements</h3>
			<hr class="top-bottom-margin">
		</div>
	</div>
</div>



<%@include file="/WEB-INF/view/front-end/common/footer.jsp"%>