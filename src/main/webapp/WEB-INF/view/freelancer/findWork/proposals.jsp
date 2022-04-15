<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/freelancer/common/freelancerHeader.jsp"%>

<div class="container mt-4">
	<h1 class="text-center">All Jobs</h1>
	<table id="tblShow"
		class="table table-striped table-hover text-center">
		<thead>
			<tr>
				<th>Freelancer</th>
				<th>Job</th>
				<th>Bid-Amount</th>
				<th>Job Length</th>
<!-- 				<th>Proposal Date</th> -->
				<th>deliveryTime</th>
<!-- 				<th>Status</th> -->
				<th>Action</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${applyJob}" var="approved">
				<tr>
					<td>${approved.freelancer}</td>
					<td>${approved.title}</td>
					<td>${approved.bidAmount}</td>
					<td>${approved.jobLength}</td>
<%-- 					<td>${approved.proposalDate}</td> --%>
					<td>${approved.deliveryTime}</td>
					<td>${approved.status}</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<%@include file="/WEB-INF/view/freelancer/common/freelancerFooter.jsp"%>
<script>
$('#tblShow').DataTable({
	"paging" : true,
	"ordering" : true,
	"info" : true
});

</script>
