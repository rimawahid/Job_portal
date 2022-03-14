<%@include file="/WEB-INF/view/front-end/common/header.jsp"%>

<div class="container mt-5">
	<div class="row">
<div class="col-md-9">


		
		<form id="main" action="index.php" method="post"  enctype="multipart/form-data" accept-charset="UTF-8">
			
						<input type="hidden" name="page" value="en-Contact"/>
						
			<input type="hidden" name="SubmitContact" value="1"/>
			<fieldset>
				<legend>Please enter your message or questions below</legend>
				<ol>
					<li>
						<label for="subject">Subject(*)
						<br/>
						
						</label>
						<input id="subject"  name="subject" placeholder="" type="text" required/>
					
					</li>
					<li>
						<label for="description">Message Text(*)
						<br/>
						
						</label>
						<textarea id="message" name="message" rows="8" required></textarea>
					</li>
					
					
					<li>
						<label for="file">File (image or pdf)
						<br/>
						
						</label>
						<input id="file"  name="file" placeholder="" type="file" />
					
					</li>
					
					
			</ol>
			</fieldset>
			<fieldset>
				<legend>Contact Information</legend>
				<ol>
					
					<li>
						<label for="name">Name(*)</label>
						<input id="name"  name="name" placeholder="" type="text" required/>
					</li>
					<li>
						<label for="email">Your Email(*)</label>
						<input id="email"  name="email" placeholder="example@domain.com" type="email" required/>
						
					</li>
					<li>
						<label for="phone">Phone</label>
						<input id="phone"  name="phone" placeholder="" type="text"/>
					</li>
										
							<li>
								<label for="code">
								<img src="include/sec_image.php" width="100" height="30"/>
								</label>
								<input id="code" name="code" placeholder="Please enter the code" type="text" required/>
							</li>
									</ol>
			</fieldset>
			<fieldset>
				<button type="submit" class="btn btn-primary float-right">Send</button>
			</fieldset>
		</form>
			</div>
	

	<div class="col-md-3">
	
		<h3 class="aside-header no-top-margin">
			Advertisements
		</h3>
		<hr class="top-bottom-margin"/>
		
		<site side_column_banners/>Side Column Ads
	
		<br/><br/>
	

	</div>
</div>		
</div>
<br/>
<br/>
	
  
	<div class="text-center">
		<site bottom_banners/>
	</div>
  
</div>
<%@include file="/WEB-INF/view/front-end/common/footer.jsp"%>
