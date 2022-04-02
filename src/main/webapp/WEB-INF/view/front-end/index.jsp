<%@include file="/WEB-INF/view/front-end/common/header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 mt-5 mb-4">
			<h1 class="h-heading mb-4">
				How work <br> should work
			</h1>
			<p class="h-text mb-5">Forget the old rules. You can have the
				best people. Right now. Right here.</p>
			<div class="d-flex">
				<button class="btn btn-success  rounded-pill pr-4 pl-4 mr-3">Find
					Talent</button>
				<button class="btn btn-outline-success  rounded-pill pr-4 pl-4">Find
					Work</button>
			</div>
		</div>
		<div class="col-md-6">
			<img src="/resources/images/banner.jpg" style="height: 475px">
		</div>
	</div>
</div>

<section>
	<div class="container mb-5">
		<h1>Browse talent by category</h1>
		<p>
			Looking for work? <span><a> Browse jobs</a></span>
		</p>

		<div class="row mt-5">
		<c:forEach items="${categories}" var="category">
			<div class="col-md-3 mb-4">
				<div class="border p-3 category-height">
					<h4>${category.name}</h4>
					<div class="d-flex justify-content-between skill-aligne">
						<p><i
						class="fa-solid fa-star star-color"></i>4.85/5</p>
						<p class="">1853 skills</p>
					</div>
				</div>
			</div>
			</c:forEach>
<!-- 			<div class="col-md-3  mb-4"> -->
<!-- 				<div class=" border p-3 category-height"> -->
<!-- 					<h4>Design & Creative</h4> -->
<!-- 					<div class="d-flex justify-content-between skill-aligne"> -->
<!-- 						<p><i -->
<!-- 						class="fa-solid fa-star star-color"></i>4.91/5</p> -->
<!-- 						<p class="">968 skills</p> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-3  mb-4"> -->
<!-- 				<div class=" border p-3 category-height"> -->
<!-- 					<h4>Sales & Marketing</h4> -->
<!-- 					<div class="d-flex justify-content-between skill-aligne"> -->
<!-- 						<p><i -->
<!-- 						class="fa-solid fa-star star-color"></i>4.77/5</p> -->
<!-- 						<p class="">1853 skills</p> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-3 mb-4"> -->
<!-- 				<div class="border p-3 category-height"> -->
<!-- 					<h4>Writing & Translation</h4> -->
<!-- 					<div class="d-flex justify-content-between skill-aligne"> -->
<!-- 						<p><i -->
<!-- 						class="fa-solid fa-star star-color"></i>4.92/5</p> -->
<!-- 						<p class="">505 skills</p> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-3 mb-4"> -->
<!-- 				<div class=" border p-3 category-height"> -->
<!-- 					<h4>Admin & Customer support</h4> -->
<!-- 					<div class="d-flex justify-content-between skill-aligne"> -->
<!-- 						<p><i -->
<!-- 						class="fa-solid fa-star star-color"></i>4.77/5</p> -->
<!-- 						<p class="">508 skills</p> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-3 mb-4"> -->
<!-- 				<div class=" border p-3 category-height"> -->
<!-- 					<h4>Engineering & Architecture</h4> -->
<!-- 					<div class="d-flex justify-content-between skill-aligne"> -->
<!-- 						<p><i -->
<!-- 						class="fa-solid fa-star star-color"></i>4.77/5</p> -->
<!-- 						<p class="">650 skills</p> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-3 mb-4"> -->
<!-- 				<div class=" border p-3 category-height"> -->
<!-- 					<h4>Finance & Accounting</h4> -->
<!-- 					<div class="d-flex justify-content-between skill-aligne"> -->
<!-- 						<p><i -->
<!-- 						class="fa-solid fa-star star-color"></i>4.77/5</p> -->
<!-- 						<p class="">214 skills</p> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-3 mb-4"> -->
<!-- 				<div class=" border p-3 category-height"> -->
<!-- 					<h4>Legal</h4> -->
<!-- 					<div class="d-flex justify-content-between skill-aligne"> -->
<!-- 						<p><i -->
<!-- 						class="fa-solid fa-star star-color"></i>4.77/5</p> -->
<!-- 						<p class="">133 skills</p> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->

	</div>
</section>


<%@include file="/WEB-INF/view/front-end/common/footer.jsp"%>