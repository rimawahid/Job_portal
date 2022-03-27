<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/admin/common/admin_header.jsp"%>
<div role="tabpanel" class="tab-pane active container mt-3 mb-4" id="">
	<div class="col-lg-12">
		<h1 style="text-align: center">Client List</h1>
		<table id="clientTable" class="table table-striped table-hover">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Country</th>
					<th>Role</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.firstName}</td>
						<td>${user.lastName}</td>
						<td>${user.email}</td>
						<td>${user.country}</td>
						<td>${user.role}</td>

						<td><a href="/user/delete/client/${user.id}">Delete</a></td>
					</tr>
				</c:forEach>
				</tbody>
		</table>
	</div>
</div>

<%@include file="/WEB-INF/view/admin/common/admin_footer.jsp"%>

<script>
    $('#clientTable').DataTable( {
        "paging":   true,
        "ordering": true,
        "info":     true
    });
</script>