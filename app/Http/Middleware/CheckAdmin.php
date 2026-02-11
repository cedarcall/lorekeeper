<?php

namespace App\Http\Middleware;

use Closure;

class CheckAdmin
{
    public function handle($request, Closure $next)
    {
        // Local dev bypass
        if (app()->environment('local')) {
            return $next($request);
        }

        if (!$request->user()->isAdmin) {
            flash('You do not have the permission to access this page.')->error();
            return redirect('/');
        }

        return $next($request);
    }
}
