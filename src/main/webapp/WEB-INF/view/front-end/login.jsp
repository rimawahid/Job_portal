<%@include file="/WEB-INF/view/front-end/common/header.jsp"%>

<div class="container mb-5">
	<div class="row mt-5">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<form class="border p-5" action="login-user" method="POST">
				<h2 class="text-center  mb-4">Log in to Upwork</h2>

				<div class="form-group  mt-3">
					<input type="text" class="form-control rounded-pill" id="email"
						name="email" placeholder="Username or Email">
				</div>
				<button type="submit"
					class="btn btn-success rounded-pill btn-width mt-3 mb-4">Continue
					with Email</button>
				<div class="d-flex justify-content-between">
					<p style="color: gray;">______________________________</p>
					or
					<p style="color: gray;">______________________________</p>
				</div>

				<button type="submit"
					class="btn btn-primary rounded-pill btn-width mt-3 mb-4">Continue
					with Google</button>
				<hr>
				<div class="d-flex justify-content-between">
					<p class="underline">____________</p>
					<p class="text-small">Don't have an Upwork account?</p>
					<p class="underline">____________</p>
				</div>
				<a
					class="btn btn-outline-success btn-signup  rounded-pill pr-4 pl-4"
					href="singup">Sign Up</a>
			</form>
		</div>
		<div class="col-md-3"></div>
	</div>
</div>

<footer class="login-footer">
	<div class="container">
		<p class="text-center footer-text">© 2015 - 2022 Upwork® Global Inc.</p>
		<div class="text-center">
			<ul class="footer-list ">
				<li class="footer-list "><a class="footer-list-link" href="">Terms
						of Service</a></li>
				<li class="footer-list "><a class="footer-list-link" href="">Privacy
						Policy</a></li>
				<li class="footer-list pb-2"><a class="footer-list-link" href="">Accessibility</a></li>
			</ul>
		</div>
	</div>
</footer>

<%-- <%@include file="/WEB-INF/view/front-end/common/footer.jsp"%> --%>