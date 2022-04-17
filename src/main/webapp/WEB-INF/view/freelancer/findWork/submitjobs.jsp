<%@include file="/WEB-INF/view/freelancer/common/freelancerHeader.jsp"%>
<div class="container">
			<div class="border">
				<h5 class="m-3">Submit on this Project</h5>
				<hr>
				<form class="m-3" action="/freelancer/submitproject/save" method="POST"
					enctype='multipart/form-data'>
					<div class="form-row">
						<div class="form-group col-md-6">
							<input type="hidden"
								class="form-control" id="jcode" name="jcode"
								value="${applyJob.jcode}">
						</div>
						<div class="form-group col-md-6">
							<input type="hidden" class="form-control" id="title" name="title"
							value="${applyJob.title}">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<input type="hidden"
								class="form-control" id="freelancer" name="freelancer" value="${applyJob.freelancer}">
						</div>
						<div class="form-group col-md-6">
							<input type="hidden"
								class="form-control" id="budget" name="budget"
								value="${applyJob.bidAmount}">
						</div>
					</div>
					

					<div class="form-group">
						<label for="img">Attachment</label> <input type="file"
							class="form-control" id="img" name="img">
					</div>
					<div class="form-group mt-2">
						<label for="img">Remark</label> <input type="text"
							class="form-control" id="remarks" name="remarks">
					</div>
					
					<button type="submit" class="btn btn-success btn-submit mt-3 ">Submit</button>
				</form>
			</div>

</div>
<%@include file="/WEB-INF/view/freelancer/common/freelancerFooter.jsp"%>