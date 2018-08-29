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
class admin extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }



    public function auth(Request $req)
    {
        if(!Auth::check())
            return view('auth.login');
        else
            if(Auth::user()->email=='trung.ng.ho@gmail.com')
                return view('admin.layouts.menu');
        else
            return redirect()->route('index');
    }





    //product
    public function product_get_all(Request $req)
    {

        $products = DB::select('select * from product');

        return view('admin.page.product_list',['products'=>$products]);

    }
    
    public function add_product_form(Request $req)
    {   
        $categories=DB::select('select * from categorie');

        return view('admin.page.product_form',['categories'=>$categories]);
    } 
    public function add_product_post(Request $req)
    {       

            $file= $req->image;
        $fileName = rand(1, 9999).$file->getClientOriginalName();
        if($file)
        {

            $file->move(
                'images', //nơi cần lưu
                $fileName //tên file
                );
        } else
        {
            echo "Chưa có file";
        }


            $product = new product();

            $product->name = $req->name;
            $product->price=$req->price;
            $product->id_subcategorie = $req->subcategorie;
            $product->tax = $req->tax;
            $product->description = $req->description;
            
            $product->image = $fileName;

            $product->save();

            return  redirect()->route('product_get_all');
    }




    //cateogorie

     public function add_categorie_form()
    {
        return view('admin.page.categorie_form');
       }

    public function add_categorie_post(Request $req)
    {
        $cateogorie  = new categorie;
        $cateogorie->name= $req->name;
        $cateogorie->description= $req->description;

        $cateogorie->save();
    }




    //client
    public function add_client_form(Request $req)
    {
        return view('admin.page.product_form');
    }


}
