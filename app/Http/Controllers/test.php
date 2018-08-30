<?php

namespace App\Http\Controllers;
use PDF;
use Illuminate\Http\Request;
use App\Http\Requests;
use Cart;
use Auth;
use fzaninotto\faker\src\Faker\Provider\vi_VN\Address;
use Igaster\LaravelCities\Geo;
class test extends Controller
{
    //
	public function test(Request $req)
	{
		// $this->validate($req, [
		// 	'username' => 'required|min:2',
		// 	'password' => 'required',
		// ]);
		// return redirect()->back()->with('mes','ko loi');
		
		echo Cart::subtotal(2,'.','');



	}

	public function addcart($id,$name,$qty,$price)
	{
		Cart::add($id,$name,$qty,$price);

		echo Cart::content();
	}

	public function invoice()
	{
			$pdf = PDF::loadView('invoice');
    		return $pdf->stream();
	}
}
