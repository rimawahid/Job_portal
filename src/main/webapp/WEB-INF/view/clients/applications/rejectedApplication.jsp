<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/clients/common/clientHeader.jsp"%>

<div class="container mt-4">
	<h1 class="text-center">Rejected List</h1>
	<table id="tblShow"
		class="table table-striped table-hover text-center">
		<thead>
			<tr>
				<th>Freelancer</th>
				<th>Job</th>
				<th>Bid-Amount</th>
				<th>budget</th>
				<th>Proposal Date</th>
				<th>deliveryTime</th>
				<th>Status</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${applyJob}" var="rejected">
				<tr>
					<td>${rejected.freelancer}</td>
					<td>${rejected.title}</td>
					<td>${rejected.bidAmount}</td>
					<td>${rejected.budget}</td>
					<td>${rejected.proposalDate}</td>
					<td>${rejected.deliveryTime}</td>
					<td>${rejected.status}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<%@include file="/WEB-INF/view/clients/common/clientFooter.jsp"%>
<script>
$('#tblShow').DataTable({
	"paging" : true,
	"ordering" : true,
	"info" : true
});

</script>