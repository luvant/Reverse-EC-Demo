<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Auth;
use PDF;
use Cart;
use DB;
use App\product;
use App\categorie;
use App\subcateogorie;

use Illuminate\Pagination\Paginator;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\Input;

class PrincipalController extends Controller
{
    //
    public function product_get_all(Request $request){
        $products = DB::select('select * from product order by RAND()');
        $products = $this->arrayPaginator($products, $request);
        return view('layouts.page.product')->with('products', $products);
    }


    public function arrayPaginator($array, $request)
    {
        $page = Input::get('page', 1);
        $perPage = 30;
        $offset = ($page * $perPage) - $perPage;
        return new LengthAwarePaginator(array_slice($array, $offset, $perPage, true), count($array), $perPage, $page,
            ['path' => $request->url(), 'query' => $request->query()]);
    }
}
