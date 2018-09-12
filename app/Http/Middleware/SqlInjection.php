<?php

namespace App\Http\Middleware;

use Closure;

class SqlInjection
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {   if($request->route()->parameter('id_product'))
            if(!preg_match('/^[0-9]+$/',$request->route()->parameter('id_product')))
                return redirect()->route('index');
        if(!preg_match('/^[0-9]+$/',$request->route()->parameter('id_order')))
            if(!is_int($request->route()->parameter('id_order')))
                return redirect()->route('index');
        return $next($request);
    }
}
