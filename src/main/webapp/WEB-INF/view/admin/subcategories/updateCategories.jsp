<%@include file="/WEB-INF/view/admin/categories/categories.jsp"%>
 <div class="container">
	<form action="/category/update" method="POST">
	<h2 class="text-center mb-5 mt-5">Update Categories</h2>
		<div class="form-group row">
			<label for="code" class="col-sm-2 col-form-label">Category Code :</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" value="${c.code }" id="code" name="code">
			</div>
		</div>
		<div class="form-group row">
			<label for="name" class="col-sm-2 col-form-label">Category Name :</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" value="${c.name }" id="name" name="name">
			</div>
		</div>
		<input type="hidden" name="id" value="${c.id}"/><br/>
		<div class="text-center">
			<button type="submit" class="btn btn-save "> Update</button>
		</div>
		
	</form>
</div> 
<%@include file="/WEB-INF/view/admin/common/admin_footer.jsp"%>