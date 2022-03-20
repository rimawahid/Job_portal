<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/clients/common/clientHeader.jsp"%>
<div role="tabpanel" id="">
	<div class="col-lg-12">
		<h1 style="text-align: center">All Jobs</h1>
		<table class="table table-striped table-hover">
			<tr>
				<th>Category Name</th>
				<th>Title</th>
				<th>Description</th>
				<th>Posted Time</th>
				<th>Budget</th>
				<th>Budget Type</th>
				<th>Delivery Deadline</th>
				<th>Attachment</th>
				<th>Edit Action</th>
				<th>Delete Action</th>
			</tr>
			<c:forEach items="${jobPosts}" var="jobPost">
				<tr>
					<td>${jobPost.category}</td>
					<td>${jobPost.title}</td>
					<td>${jobPost.description}</td>
					<td>${jobPost.posted_time}</td>
					<td>${jobPost.budget}</td>
					<td>${jobPost.budgetType}</td>
					<td>${jobPost.delivery_deadline}</td>
					<td></td>
					
					<td><a href="/client/edit/${jobPost.id}">Edit</a></td> 
					<td><a href="/client/delete/${jobPost.id}">Delete</a> 
					</td>
				</tr>
			</c:forEach>

		</table>
	</div>
</div>