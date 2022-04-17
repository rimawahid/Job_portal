<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/clients/common/clientHeader.jsp"%>
<div role="tabpanel" id="">
	<div class="col-lg-12">
		<h1 style="text-align: center"> Submitted Jobs</h1>
		<table id = "tblShow" class="table table-striped table-hover">
		<thead>
			<tr>
				<th>Code</th>
				<th>Title</th>
				<th>Amount</th>
				<th>Freelancer</th>
				<th>Remarks</th>
				<th>Attachment</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${submitProject}" var="jobPost">
				<tr>
					<td>${jobPost.jcode}</td>
					<td>${jobPost.title}</td>
					<td>${jobPost.bidAmount}</td>
					<td>${jobPost.freelancer}</td>
					<td>${jobPost.remarks}</td>
					<td><a href="${jobPost.attachment}" target="_blank">Download</a>
					</td>
					<td><a href="/client/submittedproject/received/${jobPost.jcode}">Received</a></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
</div>
<%@include file="/WEB-INF/view/clients/common/clientFooter.jsp"%>
<script>
	$('#tblShow').DataTable({
		"paging" : true,
		"ordering" : true,
		"info" : true
	});
</script>