@extends('layout')
@section("content")

<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<?php 
						 $contents=Cart::content();
						 
						 ?>
						<h3>Your order has been placed</h3>
						
					<h2>Please make payment by clicking on below payment button</h2>
					</div><!--/login form-->
				</div>


		<!---paypal form-->


<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post " >
<input  type="hidden" name="cmd" value="_xclick">
<input  type="hidden" name="business" value="dineshpal1234@gmail.com">


<input type="hidden" name="product_name" value="10686868">
<input type="hidden" name="currency_code" value="USD">

<input type="hidden" name="amount" value="100">

<input type="image" src="https://www.paypalobjects.com/webstatic/en_US/i/btn/png/btn_paynow_107x26.png" alt="Pay Now">
<img alt="" width="1" height="1" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif">


</form>
<!--/palpal form-->
				
				<div class="col-sm-3">
					<div class="signup-form"><!--sign up form-->
						
						
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->


@endsection