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
    public function product_get_all(Request $request, $categorie = null, $id_categorie = null)
    {

        if (!isset($categorie) && !isset($id_categorie)) {
            $products = DB::select('select * from product order by RAND()');


        } else if (!isset($id_categorie)) {
            $products = DB::select('SELECT product.* from product INNER join sub_categorie on(product.id_subcategorie=sub_categorie.id_subcategorie) inner join categorie on(sub_categorie.id_categorie=categorie.id_categorie) where categorie.name=?', [$categorie]);
            $categorie_return = array();

            $categorie = DB::select('select * from categorie where categorie.name=?', [$categorie]);
            foreach ($categorie as $item) {
                $sub_categorie = DB::select('select * from sub_categorie where id_categorie=?', [$item->id_categorie]);
                $categorie_return[$item->name] = $sub_categorie;
            }
        } else {
            $products = DB::select('SELECT * from product INNER join sub_categorie on(product.id_subcategorie=sub_categorie.id_subcategorie) where sub_categorie.id_subcategorie=?', [$id_categorie]);

            $categorie_return = array();

            $categorie = DB::select('select categorie.* from categorie inner join sub_categorie on(categorie.id_categorie=sub_categorie.id_categorie) where sub_categorie.id_subcategorie=?', [$id_categorie]);
            foreach ($categorie as $item) {
                $sub_categorie = DB::select('select * from sub_categorie where sub_categorie.id_subcategorie=?', [$id_categorie]);
                $categorie_return[$item->name] = $sub_categorie;
            }
        }


        $products = $this->arrayPaginator($products, $request);
        if (isset($categorie_return))
            return view('layouts.page.product', ['products' => $products, 'categorie_return' => $categorie_return]);
        else
            return view('layouts.page.product', ['products' => $products]);

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
