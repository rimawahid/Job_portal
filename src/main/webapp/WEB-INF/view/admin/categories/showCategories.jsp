

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/admin/categories/categories.jsp"%>
<div role="tabpanel" class="tab-pane active container mt-3 mb-4" id="">
	<div class="col-lg-12">
		<h1 style="text-align: center">Category List</h1>
		<table class="table table-striped table-hover">
			<tr>
				<th>Category Code</th>
				<th>Category Code</th>
				<th>Edit Action</th>
				<th>Delete Action</th>

			</tr>
			<c:forEach items="${categories}" var="category">
				<tr>
					<td>${category.code}</td>
					<td>${category.name}</td>
					<td><a href="/category/edit/${category.id}">Edit</a></td>
					<td><a href="/category/delete/${category.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>

		</table>
	</div>
</div>
