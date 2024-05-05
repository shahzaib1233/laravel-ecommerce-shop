<?php

namespace App\Http\Middleware;
use App\Http\Controllers\admin\adminloginController;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminRedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle(Request $request, Closure $next, $guard = null)
    {
        if (Auth::guard('admin')->check()) {
            // If user is authenticated as admin, redirect them to admin dashboard
            return redirect()->route('admin.dashboard');
        }

        return $next($request);
    }
}
