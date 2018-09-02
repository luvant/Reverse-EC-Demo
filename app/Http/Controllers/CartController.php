<?php

namespace App\Http\Controllers;
use PDF;
use Illuminate\Http\Request;
use App\Http\Requests;
use Cart;
use Product;
use DB;
class CartController extends Controller
{
    //
    public function addCart($id,$name,$qty,$price)
	{	$image = DB::table('Product')->where('id_product',$id)->value('image');
		$image_link=DB::table('Product')->where('id_product',$id)->value('image_link');
		if($image)
		Cart::add($id,$name,$qty,$price,['image'=>$image]);
		else
		Cart::add($id,$name,$qty,$price,['image_link'=>$image_link]);

		echo Cart::content();
	}


	 public function updateCart($id_request,$qty)
	{		$id = (int)$id_request;
		 $item=Cart::search(function ($cartItem, $rowId) use($id) {
			return $cartItem->id == $id;
		})->first();
		
		Cart::update($item->rowId,$qty);


	}

		public function removeCart($id)
	{		$id = (int)$id;
		 $item=Cart::search(function ($cartItem, $rowId) use($id) {
			return $cartItem->id == $id;
		})->first();
		
		Cart::remove($item->rowId);
		return redirect()->back();

	}



	public function clear_cart()
	{
		
		Cart::destroy();
	}

	public function get_cart()
	{

	}


	public function invoice()
	{
			$pdf = PDF::loadView('invoice');
    		return $pdf->stream();
	}
}
