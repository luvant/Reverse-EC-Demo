<?php

namespace App\Http\Controllers;
use PDF;
use Illuminate\Http\Request;
use App\Http\Requests;
use Cart;
use App\Product;
use DB;
use App\client;
use App\orders;
use App\order_items;
use Auth;
class checkoutController extends Controller
{
    //

    public function checkoutPost(Request $req)
    {   if(isset($req)){


    	$name = $req->name;
    	$phone = $req->phone;
    	$email = $req->email;
    	$country = $req->country;
    	$city = $req->city;
    	$address = $req->address;
    	$message = $req->message;

    	


    	//user information
    	$id_user = Auth::user()->id;

    	//order information


    	//save order
    	$order = new orders;
    	$order->id_client = $id_user;
    	$order->total=Cart::subtotal(2,'.','');
    	$order->save();

    	$id_order = $order->id_order;


    	//save order_items

    	foreach(Cart::content() as $item)
    	{
    		$order_item = new order_items;
    		$order_item->id_order = $id_order;
    		$order_item->subtotal = $item->subtotal;
    		$order_item->id_product = $item->id;
    		$order_item->qty = $item->qty;
    		$order_item->save();
    	} 

    	//shipping information
    	$shipping= new client;

    	$shipping->name = $name;
    	$shipping->telefon = $phone;
    	$shipping->country = $country;
    	$shipping->city = $city;
    	$shipping->address = $address;
    	$shipping->message = $message;
    	$shipping->id_order = $id_order;
    	$shipping->save();
        Cart::destroy();
        return view('layouts.page.checkout_mes');
    }
        else
            return redirect()->route('index');

    }
}
