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
					<select id="inputState" class="form-control" name="category">
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
	<table id="applicationTable" class="table table-striped table-hover">
		<thead>
			<tr>
				<th>Freelancer</th>
				<th>Bid-Amount</th>
				<th>budget</th>
				<th>Proposal Date</th>
				<th>Approved Action</th>
				<th>Rejected Action</th>
			</tr>
		</thead>
		<tbody>
<%-- 			<c:forEach items="${users}" var="user"> --%>
				<tr>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.email}</td>
					<td>${user.country}</td>
					<td>${user.role}</td>

					<td><a href="/user/delete/client/${user.id}">Delete</a></td>
				</tr>
<%-- 			</c:forEach> --%>
		</tbody>
	</table>
</div>

<%@include file="/WEB-INF/view/clients/common/clientFooter.jsp"%>

<script>
	$('#applicationTable').DataTable({
		"paging" : true,
		"ordering" : true,
		"info" : true
	});
</script>