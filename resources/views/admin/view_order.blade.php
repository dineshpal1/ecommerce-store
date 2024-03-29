@extends("admin_layout")
@section("admin_content")
<div class="row-fluid sortable">
	<div class="box span6">
		<div class="box-header">
			<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Customer Details</h2>
		</div>
		<div class="box-content">
			<table class="table">
				<!--
				<thead>
					<tr>
						<th>Customer Name</th>
						<th>Mobile</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						
						@foreach($order_by_id as $v_order)
						<td>{{$v_order->customer_name}}</td>
						<td>{{$v_order->mobile_number}}</td>
						@endforeach
					</tr>
				</tbody>
			</table>
		</div>
	</div> 

	<div class="box span6">
		<div class="box-header">
			<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Shipping Details</h2>
		</div>
		<div class="box-content">
			<table class="table table-striped">
				<thead>
					<tr>
						<th> Name</th>
						<th> Address</th>
						<th> Mobile </th>
						<th> Email</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						
						<td>{{$v_order->shipping_first_name}}</td>
						<td>{{$v_order->shipping_address}}</td>
						<td>{{$v_order->shipping_mobile_number}}</td>
						<td>{{$v_order->shipping_email}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div> 

	<div class="box span10">
		<div class="box-header">
			<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Product Details</h2>
		</div>
		<div class="box-content">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Id</th>
						<th>Product Name</th>
						<th>Product Price</th>
						<th>Product sales quantity</th>
						<th>Product sub total</th>
					</tr>
				</thead>
				<tbody>
					@foreach($order_by_id as $v_order)
					<tr>
						<td>{{$v_order->order_id}}</td>
						<td>{{$v_order->product_name}}</td>
						<td>{{$v_order->product_price}}</td>
						<td>{{$v_order->product_sales_quantity}}</td>
						<td>{{$v_order->product_price*$v_order->product_sales_quantity}}</td>
						
						
					</tr>
					@endforeach
					<tr><td>{{$order_by_id->order_total}}</td></tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4">total with vat</td>
						<td><strong>=Rs {{$v_order->order_total}}</strong></td>
					</tr>
				</tfoot>
			-->
			</table>
		</div>
	</div> 
</div> <!--/row-->

@endsection