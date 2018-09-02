@extends('admin.layouts.menu')
@section('content')
<section id="main-content">
	<section class="wrapper">
		<!-- page start-->
		<div class="row">
			<div class="col-sm-12">
				<section class="panel">
					<header class="panel-heading">
						Order
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
										<th>Order Code </th>
										
										<th>Total</th>
										<th>Date</th>
										<th>Factura</th>
									</tr>
								</thead>
								<tbody>
									
									@foreach($orders as $order)

									<tr class="gradeA">
										
										<td class="id_order" style="font-size: 120%; color: red; font-weight: bold;"><a class="id_order_val" href="MyAccount/Orders/{{$order->id_order}}">{{$order->id_order}}</a></td>
										<td>{{$order->total}}</td>
										<td>{{$order->created_at}}</td>
										<td><a href="MyAccount/Orders/{{$order->id_order}}/invoice" target="_blank"><i class="fas fa-print"></i></a></td>
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