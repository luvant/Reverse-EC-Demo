<?php

namespace App\Providers;
use App\Http\Requests;
use Auth;
use PDF;
use Cart;
use DB;
use App\product;
use App\categorie;
use App\subcateogorie;
use Illuminate\Support\ServiceProvider;
use View;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        $categorie_return= array();
        $products = DB::select('select * from product order by RAND()');
        $categorie = DB::select('select * from categorie');
        foreach ($categorie as $item)
        {    $sub_categorie = DB::select('select * from sub_categorie where id_categorie=?',[$item->id_categorie]);
            $categorie_return[$item->name]=$sub_categorie;
        }
        View::share('categorie_return',$categorie_return);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
