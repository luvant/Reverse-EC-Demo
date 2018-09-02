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

class clientDashboardController extends Controller
{
    
    public function get_orders()
    {
    	$id_user = Auth::user()->id;

    	$orders = DB::select('select * from orders where id_client=?',[$id_user]);

    	return view('client_dashboard.pages.orders',['orders'=>$orders]);

    }

    public function get_order($id_order)
    {
    	$order_items = DB::select('select * from order_items JOIN product on(product.id_product = order_items.id_product)
 where id_order =?',[$id_order]);

    	$order = DB::select('select * from orders where id_order=?',[$id_order]);
    	$client = DB::select('select * from client where id_order=?',[$id_order]);
    	return view('client_dashboard.pages.order_items',['client'=>$client[0],'order'=>$order[0],'order_items'=>$order_items]);
    }

    public function invoice($id_order)
    {
    	$order_items = DB::select('select * from order_items JOIN product on(product.id_product = order_items.id_product)
 where id_order =?',[$id_order]);

    	$order = DB::select('select * from orders where id_order=?',[$id_order]);
    	$client = DB::select('select * from client where id_order=?',[$id_order]);
    	$user = DB::select('select users.name,users.email from users join orders on(orders.id_client=users.id) where orders.id_order=?',[$id_order]);

    	$pdf = PDF::loadView('client_dashboard.pages.invoice',['client'=>$client[0],'order'=>$order[0],'order_items'=>$order_items,'user'=>$user[0]]);
    	return $pdf->stream();

    }

    public function get_profile()
    {
        return view('client_dashboard.pages.profile');
    }


}
