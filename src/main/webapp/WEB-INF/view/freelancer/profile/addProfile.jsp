
<%@include file="/WEB-INF/view/freelancer/common/freelancerHeader.jsp"%>
<div role="tabpanel" id="">
	<div class="container">
		<h2 class="text-center ">Add Profile</h2>


<div id="container"></div>
<button id="demo"></button>


		<form class="border p-3 mb-5" action="/freelancer/profile/save" method="POST"
			enctype="multipart/form-data">
			<div class="form-group">
				<label for="title">Your title:</label><br> <small>Enter
					a single sentence description of your professional
					skills/experience (e.g. Expert Web Designer with Ajax experience)</small> <input
					type="text" class="form-control" id="title" name="title">
			</div>
			<div class="form-group">
				<label for="description">Description:</label>
				<textarea class="form-control" id="description"
					name="description" rows="3"></textarea>
			</div>
			<div class="form-group">

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="language">Language:</label> <select
							id="language" class="form-control" name="language">
							<option >Search for language</option>
							<option value="English">English</option>
							<option value="Bengali">Bengali</option>
							<option value="spanish">spanish</option>
						</select>
					</div>
					<div class="form-group col-md-6">
						<label for="proficiencylevel"> Proficiency level:</label> <select
							id="proficiencylevel" class="form-control" name="proficiencylevel">
							<option>Search for proficiency level</option>
							<option>Basic</option>
							<option>Conversational</option>
							<option>Fluent</option>
							<option>Native or Bilingual</option>
						</select>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="workTime">Work Time:</label><input
					type="text" class="form-control" id="workTime" name="workTime">
			</div>
			<div class="form-group">

				<div class="form-row">
					<div class="form-group col-md-4">
						<label for="hourlyRate">Hourly Rate:</label><br> <small>Total amount the client will see</small> <input
					type="text" class="form-control" placeholder="/hr" id="hourlyRate" name="hourlyRate">
					</div>
					<div class="form-group col-md-4">
						<label for="serviceFee">20% Service Fee:</label><input
					type="text" class="form-control mt-4" placeholder="/hr" id="serviceFee" name="serviceFee">
					</div>
					<div class="form-group col-md-4">
						<label for="freelancerReceive">You'll Receive:</label><br> <small>The estimated amount you'll receive after service fees </small> <input
					type="text" class="form-control" placeholder="/hr" id="freelancerReceive" name="freelancerReceive">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="vedioIntro">Video introduction:</label><input
					type="text" class="form-control" id="vedioIntro" name="vedioIntro">
			</div>
			<div class="form-group">
				<label for="skill">Skills:</label><input
					type="text" class="form-control" id="skill" name="skill">
			</div>
			<div class="form-group">
				<label for="profileImg">Profile Image:</label><input
					type="file" class="form-control" id="img" name="img">
			</div>
			<button type="submit" class="btn btn-save rounded-pill  mt-3 mb-4">Save</button>
		</form>







		<!-- 		<form class="border p-3" action="/client/job/save" method="POST" -->
		<!-- 			enctype="multipart/form-data"> -->

		<!-- 			<div> -->
		<!-- 				<h5 id="showC">Add certification</h5> -->
		<!-- 				<div class="no_display" id="displayC"> -->
		<!-- 					<div class="form-group"> -->
		<!-- 						<select id="disabledSelect" class="form-control"> -->
		<!-- 							<option>Disabled select</option> -->
		<!-- 						</select> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 			</div> -->
		<!-- 			<hr> -->
		<!-- 			<div> -->
		<!-- 				<h5 id="showE">Add employment</h5> -->
		<!-- 				<div class="no_display" id="displayE"> -->
		<!-- 					<div class="form-group"> -->
		<!-- 						<label for="exampleInputPassword1">Company</label> <input -->
		<!-- 							type="text" class="form-control" id="cName" name="cName"> -->
		<!-- 					</div> -->
		<!-- 					<div class="form-group"> -->
		<!-- 						<label for="inputEmail4">Location</label> -->
		<!-- 						<div class="form-row"> -->
		<!-- 							<div class="form-group col-md-6"> -->
		<!-- 								<input type="text" class="form-control" id=city name="city"> -->
		<!-- 							</div> -->
		<!-- 							<div class="form-group col-md-6"> -->
		<!-- 								<input type="password" class="form-control" id="inputPassword4"> -->
		<!-- 							</div> -->
		<!-- 						</div> -->
		<!-- 					</div> -->
		<!-- 					<div class="form-group"> -->
		<!-- 						<label for="exampleInputPassword1">Title</label> <input -->
		<!-- 							type="text" class="form-control" id="postTitle" name="postTitle"> -->
		<!-- 					</div> -->
		<!-- 					<div class="form-group"> -->
		<!-- 						<label for="inputEmail4">Period</label> -->
		<!-- 						<div class="form-row"> -->
		<!-- 							<div class="form-group col-md-6"> -->
		<!-- 								<input type="text" class="form-control" id=city name="city"> -->
		<!-- 							</div> -->
		<!-- 							<div class="form-group col-md-6"> -->
		<!-- 								<input type="password" class="form-control" id="inputPassword4"> -->
		<!-- 							</div> -->
		<!-- 						</div> -->
		<!-- 					</div> -->
		<!-- 					<div class="form-group"> -->
		<!-- 						<label for="exampleInputPassword1">Description (Optional)</label> -->
		<!-- 						<textarea class="form-control" id="exampleFormControlTextarea1" -->
		<!-- 							name="description" rows="3"></textarea> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 			</div> -->
		<!-- 			<hr> -->
		<!-- 			<div> -->
		<!-- 				<h5 id="showExp">Add other experiences</h5> -->
		<!-- 				<div class="no_display" id="displayExp"> -->
		<!-- 					<div class="form-group"> -->
		<!-- 						<label for="exampleInputPassword1">Subject</label> <input -->
		<!-- 							type="text" class="form-control" id="expSubject" name="expSubject"> -->
		<!-- 					</div> -->
		<!-- 					<div class="form-group"> -->
		<!-- 						<label for="exampleInputPassword1">Description</label> -->
		<!-- 						<textarea class="form-control" id="exampleFormControlTextarea1" -->
		<!-- 							name="expDescription" rows="3"></textarea> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 			</div> -->
		<!-- 		</form> -->
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
	$("#showExp").click(function() {
		$("#displayExp").show();
	});
	
	
	
	
	
	
	
	$('#hourlyRate').change(function() {
		$('#serviceFee').val($(this).val() * .20);
	});
	
	$('#hourlyRate').change(function() {
		$('#freelancerReceive').val($(this).val()-($(this).val() * .20));
	});
	
	
	
	
	let text = "How are you doing today?";
	const myArray = text.split(" ");
	const len = myArray.length;
	console.log(myArray.length);
	for (let index = 0; index < len; index++) {
	  console.log( myArray[index]);
	  //document.getElementById("demo").innerHTML += myArray[index]+"<br>";
	  var a = myArray[index].val();
	  console.log(a);
	$(document).ready(function() {
	    $('#container').append('<button class="btn-styled" type="button">'+a+'</button>');
	});
	}
	
</script>
