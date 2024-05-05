<?php

namespace App\Http\Controllers\admin;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class adminloginController extends Controller
{
    public function index()
    {
        return view('admin.login');
    }

    public function authenticate(Request $request)
    {
        $validator = validator($request->all(), [
            'email' => 'required|email',
            'password' => 'required'
        ]);
    
        if ($validator->passes()) {
            
            if(Auth::guard('admin')->attempt(['email'=>$request->email , 'password' => $request->password]
            ,$request->get('remember'))){
                if(Auth::guard('admin')=='1'){
                return redirect()->route('admin.dashboard');
            }
            else{
                return redirect()->route('admin.login')->with('error', 'Not Authorized for this action');
            }
            }
            else{
                return redirect()->route('admin.login')->with('error', 'Either Email or password is incorrect');
            }
        } else {
            return redirect('admin/login')->withErrors($validator)->withInput($request->only('email'));
        }
    }
}
