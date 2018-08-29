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
use App\subcategorie;

class apiController extends Controller
{
    //

    public function get_subcategorie($id_categorie)
    {
    	$subcateogorie = DB::select('select * from sub_categorie where id_categorie=?',[$id_categorie]);
    	return json_encode($subcateogorie);
    }
}
