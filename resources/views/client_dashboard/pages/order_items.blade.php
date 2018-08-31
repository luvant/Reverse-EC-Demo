@extends('client_dashboard.layouts.menu')
@section('content')

<section id="main-content">

	<section class="wrapper">
		<h1> Comanda numarul: #{{$order->id_order}} </h1>
		<h2> Total: $ {{$order->total}} </h2>
		<h2>----------------------------------</h2>
		<h3> Livrare informatiile: </h3>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-5">
				<h4> Numele: {{$client->name}} </h4>
			</div>
			<div class="col-md-4 ">
				<h4> Telefoane: {{$client->telefon}} </h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-5">
				<h4> Tara: {{$client->country}} </h4>
			</div>
			<div class="col-md-4 ">
				<h4> Orasul: {{$client->city}} </h4>
			</div>
			<div class="col-md-11 col-md-push-1">
				<h4> Adresa: {{$client->address}} </h4>
			</div>
		</div>
		<h3> Comanda informatiile: </h3>
		<div class="row">
			
			@foreach($order_items as $item)
			<div class="col-md-12 col-md-push-1">
				<h4>
					<a>{{$item->name}}</a> : {{$item->qty}} x ${{$item->price}}
				</h4>

			</div>
			@endforeach
		</div>
		<h2>----------------------------------</h2>
		<h3> Data Facut Comanda : {{$order->created_at}} </h3>
	</section>
</section>

@endsection