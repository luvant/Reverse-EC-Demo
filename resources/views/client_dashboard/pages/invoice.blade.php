<!DOCTYPE html>
<html lang="en">
<head>
  <title>FACTURA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2 align="center">FACTURA NR {{$order->id_order}}</h2>
  <h3 align="center">REVERSE S.R.L</h3>
  <p> Contul comandat: {{$user->email}}   </p>
  <p> Date: {{$order->created_at}} </p> 

  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Product</th>
        <th>Qty</th>
        <th>Price</th>
      </tr>
    </thead>
    <tbody>
    	@foreach($order_items as $item)
      <tr>
        <td>{{$item->name}}</td>
        <td>{{$item->qty}} x ${{$item->price}}</td>
        <td>${{$item->subtotal}}</td>
      </tr>
      @endforeach
      <tr>
      	<td></td>
      	<td colspan="2">Total: ${{$order->total}}</td>
      </tr>
    </tbody>
  </table>
  <h2> Livrare informatiile: </h2>
  <p> Numele: {{$client->name}} </p>
  <p> Telefon: {{$client->telefon}}</p>
  <p> Tara: {{$client->country}} </p>
  <p> City: {{$client->city}} </p>
  <p> Adresa: {{$client->address}} </p>
</div>

</body>
</html>
