<%@include file="/WEB-INF/view/admin/common/admin_header.jsp"%>
<div class="container">
	<div style="width:575px ; margin: 0 auto;" class="border pr-3 pl-3">
		<h3 class="payment-heading">Payment Method</h3>
		<hr>
		<div class="d-flex justify-content-between">
			<div style="height:70px;width: 120px">
				<img style="height:100%;width: 100%" src="\files\paymentMethod\payoneer.jpg">
			</div>
			<div>
				<h6>Payoneer</h6>
				<p class="payment-text">$2 USD per withdrawal. Additional activation<br> and maintenance fees charged by Payoneer.</p>
			</div>
			<div>
				<button class="payment-btn">Set Up</button>
			</div>
		</div>
		<hr>
		<div class="d-flex justify-content-between">
			<div style="height:70px;width: 120px">
				<img style="height:100%;width: 100%" src="\files\paymentMethod\skrill.png">
			</div>
			<div>
				<h6>Skrill</h6>
				<p class="payment-text">$1 USD per withdrawal. Additional activation<br> and maintenance fees charged by Payoneer.</p>
			</div>
			<div>
				<button class="payment-btn">Set Up</button>
			</div>
		</div>
		<hr>
		<div class="d-flex justify-content-between">
			<div style="height:70px;width: 120px">
				<img style="height:100%;width: 100%" src="\files\paymentMethod\bank.jpg">
			</div>
			<div style="margin-left:-85px;">
				<h6>Direct Deposit /ACH</h6>
				<p class="payment-text">Free payments to US banks.</p>
			</div>
			<div>
				<button class="payment-btn">Set Up</button>
			</div>
		</div>
		<hr>
		<div class="d-flex justify-content-between">
			<div style="height:70px;width: 120px">
				<img style="height:100%;width: 100%" src="\files\paymentMethod\bank.jpg">
			</div>
			<div style="margin-left:-75px;">
				<h6>Wire Transfer(USD)</h6>
				<p class="payment-text">$30 per withdrawal to Armenia.</p>
			</div>
			<div>
				<button class="payment-btn">Set Up</button>
			</div>
		</div>
		<hr>
		<div class="d-flex justify-content-between">
			<div style="height:70px;width: 120px">
				<img style="height:100%;width: 100%" src="\files\paymentMethod\paypal.png">
			</div>
			<div>
				<h6>PayPal</h6>
				<p class="payment-text">$1 USD per withdrawal. Additional activation<br> and maintenance fees charged by PayPal.</p>
			</div>
			<div>
				<button class="payment-btn">Set Up</button>
			</div>
		</div>
	</div>


</div>
<%@include file="/WEB-INF/view/admin/common/admin_footer.jsp"%>