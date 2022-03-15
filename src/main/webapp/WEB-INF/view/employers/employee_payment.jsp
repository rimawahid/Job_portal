<%@include file="/WEB-INF/view/employers/common/employers_header.jsp"%>



  <!-- begin MAIN PAGE CONTENT -->
        <div id="page-wrapper">

            <div class="page-content">

              
                <div class="row  p-5">
                    <div class="col-lg-12" id="main_content">
						<br/>
						<div class="fright">

	<a class="small-tile blue-back" href="index.php?category=home&action=archive"><img class="pull-right" width="32" src="images/icons/archive.png"/><h3 class="h3-tile">Invoices</h3>
	</a></div>



<div class="clearfix"></div>

	





		<br/>
		<h3>
			Purchase a new job listing package		</h3>
		<br/>
		
		
		
					<div class="columns">
			  <ul class="price">
				<li class="header custom-back-color">Test 5 jobs</li>
				<li class="grey">$29.00</li>
				<li>You can post up to 5 job listings with this package</li>
				<li>Number of Jobs: <strong>5</strong></li>
				<li>Featured Jobs: <strong>0</strong></li>
				<li>Number of Resumes: <strong>100</strong></li>
				
				
				<li>
					<a style="text-decoration:underline" href="javascript:ShowField(2)">Do you have coupon code?</a>
					
					<div id="coupon_2" style="display:none">
						<br/>
						<input id="coupon_field_2" name="coupon_2" placeholder="Coupon Code"/>
					</div>
				</li>
			
				
				<li class="grey"><a href="javascript:SelectPackage(2)" class="button btn btn-default custom-back-color">Select</a></li>
			  </ul>
			</div>
					<div class="columns">
			  <ul class="price">
				<li class="header custom-back-color">Test 10 jobs and one featured job</li>
				<li class="grey">$49.00</li>
				<li>This is a test job listing package</li>
				<li>Number of Jobs: <strong>10</strong></li>
				<li>Featured Jobs: <strong>1</strong></li>
				<li>Number of Resumes: <strong>200</strong></li>
				
				
				<li>
					<a style="text-decoration:underline" href="javascript:ShowField(3)">Do you have coupon code?</a>
					
					<div id="coupon_3" style="display:none">
						<br/>
						<input id="coupon_field_3" name="coupon_3" placeholder="Coupon Code"/>
					</div>
				</li>
			
				
				<li class="grey"><a href="javascript:SelectPackage(3)" class="button btn btn-default custom-back-color">Select</a></li>
			  </ul>
			</div>
					<div class="clearfix"></div>
			<br/><br/>
			<h3>Your current packages</h3>
			<br/>
			
		<script>
		function SubmitForm()
		{
			
			document.getElementById('table-form').submit();
		}
		</script>
		
		<script>
			function CheckAll(source) 
			{
			  checkboxes = document.getElementsByName('CheckList[]');
			  for(var i=0, n=checkboxes.length;i<n;i++) {
				checkboxes[i].checked = source.checked;
				}
			}
		</script>
		<form  action="index.php" id="table-form" method="post" enctype="multipart/form-data"><input type="hidden" name="FormSubmitted" value="1"/><input type="hidden" name="category" value="home"/><input type="hidden" name="action" value="payments"/><div class="table-responsive">
		<table cellpadding="3" cellspacing="0" class="table table-striped table-fw-widget"><thead><tr class="table-tr" nowrap><td width=-380  nowrap >
				
				<a  class="header-td underline-link" href="index.php?category=home&action=payments&searches=["HR Training~#14#-1~1646368280","~##~1647228707"]&AuthE=teste@teste.com~fade225f096f9138f98f29887fc1f10d~1647409960~&Auth=administrator~e99a18c428cb38d5f260853678922e03~1647359608&PHPSESSID=cad88c960a64ae33adee4177f20dfc21&category=home&action=payments&searches=["HR Training~#14#-1~1646368280","~##~1647228707"]&AuthE=teste@teste.com~fade225f096f9138f98f29887fc1f10d~1647409960~&Auth=administrator~e99a18c428cb38d5f260853678922e03~1647359608&PHPSESSID=cad88c960a64ae33adee4177f20dfc21&order=name&order_type=desc">
				Name
				</a>
				
				
				
				</td><td width=150  nowrap >
				
				<a  class="header-td underline-link" href="index.php?category=home&action=payments&searches=["HR Training~#14#-1~1646368280","~##~1647228707"]&AuthE=teste@teste.com~fade225f096f9138f98f29887fc1f10d~1647409960~&Auth=administrator~e99a18c428cb38d5f260853678922e03~1647359608&PHPSESSID=cad88c960a64ae33adee4177f20dfc21&category=home&action=payments&searches=["HR Training~#14#-1~1646368280","~##~1647228707"]&AuthE=teste@teste.com~fade225f096f9138f98f29887fc1f10d~1647409960~&Auth=administrator~e99a18c428cb38d5f260853678922e03~1647359608&PHPSESSID=cad88c960a64ae33adee4177f20dfc21&order=ads&order_type=desc">
				Remaining Job Ads
				</a>
				
				
				
				</td><td width=150  nowrap >
				
				<a  class="header-td underline-link" href="index.php?category=home&action=payments&searches=["HR Training~#14#-1~1646368280","~##~1647228707"]&AuthE=teste@teste.com~fade225f096f9138f98f29887fc1f10d~1647409960~&Auth=administrator~e99a18c428cb38d5f260853678922e03~1647359608&PHPSESSID=cad88c960a64ae33adee4177f20dfc21&category=home&action=payments&searches=["HR Training~#14#-1~1646368280","~##~1647228707"]&AuthE=teste@teste.com~fade225f096f9138f98f29887fc1f10d~1647409960~&Auth=administrator~e99a18c428cb38d5f260853678922e03~1647359608&PHPSESSID=cad88c960a64ae33adee4177f20dfc21&order=resumes&order_type=desc">
				Number of Resumes
				</a>
				
				
				
				</td><td width=150  nowrap >
				
				<a  class="header-td underline-link" href="index.php?category=home&action=payments&searches=["HR Training~#14#-1~1646368280","~##~1647228707"]&AuthE=teste@teste.com~fade225f096f9138f98f29887fc1f10d~1647409960~&Auth=administrator~e99a18c428cb38d5f260853678922e03~1647359608&PHPSESSID=cad88c960a64ae33adee4177f20dfc21&category=home&action=payments&searches=["HR Training~#14#-1~1646368280","~##~1647228707"]&AuthE=teste@teste.com~fade225f096f9138f98f29887fc1f10d~1647409960~&Auth=administrator~e99a18c428cb38d5f260853678922e03~1647359608&PHPSESSID=cad88c960a64ae33adee4177f20dfc21&order=featured_jobs&order_type=desc">
				Featured Jobs
				</a>
				
				
				
				</td>
			</tr>
		</thead>
		<tbody><tr><td>Test 5 jobs</td><td>5</td><td>56</td><td>0</td></tr>
			</tbody>
			</table>
		
		</div></form>


	
	

					   
                    </div>
                
                </div>
              

            </div>
            <!-- /.page-content -->

        </div>
    
		
    </div>
    
    
    <script>
		function SelectPackage(id)
		{
			document.location.href="index.php?category=home&action=payments&new_package="+id+(document.getElementById("coupon_field_"+id).value!=""?"&coupon="+document.getElementById("coupon_field_"+id).value:"");
		}
		
		function ShowField(x)
		{
			if(document.getElementById("coupon_"+x).style.display=="none")
			{
				document.getElementById("coupon_"+x).style.display="block";
			}
			else
			{
				document.getElementById("coupon_"+x).style.display="none";
			}
		}
		</script>
<%@include file="/WEB-INF/view/employers/common/employers_footer.jsp"%>