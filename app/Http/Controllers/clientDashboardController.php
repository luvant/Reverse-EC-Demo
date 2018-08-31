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
    	$order_items = DB::select('select * from order_items where id_order =?',[$id_order]);
    	$order = DB::select('select * from orders where id_order=?',[$id_order]);
    	return view('client_dashboard.pages.order_items',['order'=>$order[0],'order_items'=>$order_items]);
    }


}
