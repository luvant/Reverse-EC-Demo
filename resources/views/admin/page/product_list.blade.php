@extends('admin.layouts.menu')
@section('content')
<section id="main-content">
	<section class="wrapper">
		<!-- page start-->
		<div class="row">
			<div class="col-sm-12">
				<section class="panel">
					<header class="panel-heading">
						Products
						<span class="tools pull-right">
							<a href="javascript:;" class="fa fa-chevron-down"></a>
							<a href="javascript:;" class="fa fa-times"></a>
						</span>
					</header>
					<div class="panel-body">
						<div class="adv-table">
							<table  class="display table table-bordered table-striped" id="dynamic-table">
								<thead>
									<tr>
										<th>Image </th>
										<th>ID Product</th>
										<th>Name</th>
										<th>Price</th>
										<th>ID Categorie</th>
										<th>Tax</th>
										<th>Created</th>
										<th>Updated</th>
									</tr>
								</thead>
								<tbody>
									
									@foreach($products as $product)

									<tr class="gradeA">
										<td> <img src="images/{{$product->image}}" width="100px" height="100px"> </td>
										<td>{{$product->id_product}}</td>
										<td>{{$product->name}}</td>
										<td>{{$product->price}}</td>
										<td>{{$product->id_subcategorie}}</td>
										<td>{{$product->tax}}</td>
										<td>{{$product->created_at}}</td>
										<td>{{$product->updated_at}}</td>
									</tr>

									@endforeach
								</tbody>
								
							</table>
						</div>
					</div>
				</section>
			</div>
		</div>
		
		<!-- page end-->
	</section>
</section>

@endsection