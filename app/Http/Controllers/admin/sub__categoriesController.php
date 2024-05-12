<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\sub__categories;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class sub__categoriesController extends Controller
{
    public function create()
    {
        $categories = Category::orderBy('name', 'ASC')->get();
        return view("admin.sub_Category.create", compact('categories'));
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:sub__categories,slug',
            'category_id' => 'required', // Assuming category_id is the correct field name
            'status' => 'required',
        ]);

        if ($validator->passes()) {
            $subCategory = new sub__categories; // Adjust model name to follow conventions
            $subCategory->name = $request->name;
            $subCategory->slug = $request->slug;
            $subCategory->category_id = $request->category_id;
            $subCategory->status = $request->status;
            $subCategory->save();

            $request->session()->flash('success', "Sub Category Created Successfully");

            return response([
                'status' => true,
                'message' => 'Sub Category Created Successfully',
            ]);
        } else {
            return response([
                'status' => false,
                'errors' => $validator->errors(),
            ]);
        }
    }

    public function index()
    {
        
            $sub__categories = sub__categories::latest();
    
            if (!empty($request->get('keyword'))) {
                $sub__categories = $sub__categories->where('name', 'like', '%' . $request->get('keyword') . '%');
            }
    
            $sub__categories = $sub__categories->paginate(10);
            return view('admin.sub__categories.index', compact('sub__categories'));
        
    }

}
