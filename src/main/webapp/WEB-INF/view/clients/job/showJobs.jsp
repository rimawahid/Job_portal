<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/clients/common/clientHeader.jsp"%>
<div role="tabpanel" class="tab-pane active container mt-3 mb-4" id="">
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

			</tr>
			<c:forEach items="${jobPosts}" var="jobPost">
				<tr>
					<td>${jobPost.category}</td>
					<td>${jobPost.title}</td>
					<td>${jobPost.description}</td>
					<td></td>
					<td>${jobPost.budget}</td>
					<td>${jobPost.budgetType}</td>
					<td></td>
					<td></td>
					
<%-- 					<td><a href="/category/edit/${category.id}">Edit</a></td> --%>
<%-- 					<td><a href="/category/delete/${category.id}">Delete</a> --%>
					</td>
				</tr>
			</c:forEach>

		</table>
	</div>
</div>