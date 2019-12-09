@extends('admin_layout')
@section('admin_content')

			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.html">Home</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Tables</a></li>
			</ul>
			<p class="alert alert-success">
				<?php
				$message=Session::get('message');
				if($message)
				{
					echo $message;
					Session::put('message',NULL);
				}

				?>

			</p>
			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>Members</h2>
						
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Product_id</th>
								  <th>Product Name</th>
								  <th>Product Description</th>
								  <th>Product Image</th>
								  <th>Product Price</th>
								  <th>Product Color</th>
								  <th>Product Size</th>
								  <th>Category Name</th>
								  <th>Manufacture Name</th>
								  <th>Status</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  
						  @foreach ($all_product_info as $v_product)
						  <tbody>
							<tr>
								<td>{{$v_product->product_id}}</td>
								<td class="center">{{$v_product->product_name}}</td>
								<td class="center">{{$v_product->product_long_description}}</td>
								
								<td class="center"><img src="{{URL::to($v_product->product_image)}}" style="height:80px;width:80px;"></td>	
								<td class="center">{{$v_product->product_price}}Rs</td>
								<td class="center">{{$v_product->product_color}}</td>
								<td class="center">{{$v_product->product_size}}</td>
								<td class="center">{{$v_product->category_name}}</td>
								<td class="center">{{$v_product->manufacture_name}}</td>
								<td class="center">
									@if($v_product->publication_status==1)
									<span class="label label-success">Active</span>

									@else
									<span class="label label-danger">Not Active</span>

									@endif
								</td>
								<td class="center">
									@if($v_product->publication_status==1)
									<a class="btn btn-success" href="{{URL::to('/unactive_product/'.$v_product->product_id)}}">
										<i class="halflings-icon white thumbs-up"></i>  
									</a>
									@else
										<a class="btn btn-danger" href="{{URL::to('/active_product/'.$v_product->product_id)}}">
										<i class="halflings-icon white thumbs-down"></i>  
									</a>
									@endif

									<a class="btn btn-info" href="{{URL::to('/edit-product/'.$v_product->product_id)}}">
										<i class="halflings-icon white edit"></i>  
									</a>

									<a class="btn btn-danger" href="{{URL::to('/delete-product/'.$v_product->product_id)}}" id="delete">
										<i class="halflings-icon white trash"></i> 
									</a>

								</td>
							</tr>
							
					
						  </tbody>
						  @endforeach
							
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->


@endsection