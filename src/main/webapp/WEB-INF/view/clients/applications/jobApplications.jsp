<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/clients/common/clientHeader.jsp"%>

<form action="/client/job/save" method="POST"
	enctype="multipart/form-data">
	<div class="form-group row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="col-sm-9">
				<div class="d-flex justify-content-start">
					<select id="title" class="form-control" name="title">
						<c:forEach items="${jobPosts}" var="jobPost">
							<option value="${jobPost.title}">${jobPost.title}</option>
						</c:forEach>
					</select>

					<button type="submit" class="btn btn-success ml-2">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
				</div>

			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
</form>

<div class="container mt-4">
	<table id="tblShow" class="table table-striped table-hover text-center">
		<thead>
			<tr>
				<th>Job Code</th>
				<th>Freelancer</th>
				<th>Bid-Amount</th>
				<th>budget</th>
				<th>Proposal Date</th>
				<th>deliveryTime</th>
				<th>Approved Action</th>
				<th>Rejected Action</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</div>

<%@include file="/WEB-INF/view/clients/common/clientFooter.jsp"%>
<%-- <%@include file="/resources/vendor/js/common.js"%> --%>
<script>
	// 	$('#title').change(function(){
	// 		console.log($("#title :selected").val());
	// 	})

	$(document).ready(function() {
		callMe();
		$("#title").change(function() {
			callMe();
		});
	});

	// 	/* load subcategory */
	function callMe() {

		$
				.post(
						"/client/applications/searchTitle/"
								+ $("#title :selected").val(),
						function(data) {

							console.log(data.length);

							$("#tblShow tbody").html("");
							var html = "";
							for (i = 0; i < data.length; i++) {
								html += "<tr>";
								html += "<td>" + data[i].jcode + "</td>";
								html += "<td>" + data[i].freelancer + "</td>";
								html += "<td>" + data[i].bidAmount + "</td>";
								html += "<td>" + data[i].budget + "</td>";
								html += "<td>" + data[i].proposalDate + "</td>";
								html += "<td>" + data[i].deliveryTime + "</td>";
								html += "<td><button class='btn btn-success'><a class='text-white' href='/client/applications/approved/"+data[i].id+"' >Approved</a></button></td>";
								html += "<td><button class='btn btn-danger'><a class='text-white' href='/client/applications/"+data[i].id+"'>Rejected</a></button></td>";
								html += "</tr>";
							}
							$("#tblShow tbody").html(html);
							$('#tblShow').DataTable();

						});
	}
</script>
