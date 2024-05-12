<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class CategoryController extends Controller
{
    public function index(Request $request)
    {
        $category = Category::latest();

        if (!empty($request->get('keyword'))) {
            $category = $category->where('name', 'like', '%' . $request->get('keyword') . '%');
        }

        $categories = $category->paginate(10);
        return view('admin.categories.index', compact('categories'));
    }

    public function create()
    {
        return view('admin.categories.create');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:categories',
        ]);
        
        if ($validator->passes()) {
            $category = new Category();
            $category->name = $request->name;
            $category->slug = $request->slug;
            $category->status = $request->status;
            $category->save();

            
            if (!empty($request->image_id)) {
                $imageid = $request->image_id;
                $tempImages = DB::select('SELECT * FROM temp_images WHERE id =' . $imageid );
    
                if (!empty($tempImages)) {
                    $tempImage = $tempImages[0];
                    $extArray = explode('.', $tempImage->name);
                    $ext = last($extArray);
                    $newImageName =  $category->id . '.' . $ext;
    
                    // Define source and destination paths
                    $spath = public_path().'/temp/'.$tempImage->name;
                    $dpath = public_path().'/uploads/category/'.$newImageName;
                    
                    // Perform the file copy operation
                    if (File::copy($spath, $dpath)) {
                        // File copied successfully
                        //generate thumbnail
                        $dpath = public_path().'/uploads/category/thumb/'.$newImageName;
                      //  $img = Image::make($spath);
                     //   $img->resize(450, 600);
                    //    $img->save($dpath);
    
                        //save image in database
                        $category->image = $newImageName;
                        $category->save();
                    } else {
                        // File copy operation failed
                        // You might want to handle this scenario
                    }
                }
                else{
                    return redirect()->route('categories.index')->with('error', 'Please Select Picture');

                }
            }

            // Handle image upload if provided
            // (code for uploading image...)

            $request->session()->flash('success', 'Category added successfully');

            return response()->json([
                'status' => true,
                'message' => 'Category added successfully'
            ]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
    }

    public function delete_cat(Request $request, $id)
{
    $category = Category::find($id);
    
    if (empty($category)) {
        $request->session()->flash('error', 'Category Not Found');
        return response()->json([
            'status' => false,
            'message' => 'Category not found'
        ]);
    }

    if (!empty($category->image)) {
        $oldImage = $category->image;
        File::delete(public_path('/uploads/category/' . $oldImage));
    }

    $category->delete();
    $request->session()->flash('success', 'Category deleted successfully');

    return response()->json([
        'status' => true,
        'message' => 'Category deleted successfully'
    ]);
}

    public function edit(Request $request, $id)
    {
        $category = Category::find($id);
        if (!empty($category)) {
      
           if (!empty($category)) {
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'slug' => 'required|unique:categories,slug,' . $category->id . ',id'
            ]);
            
            if ($validator->passes()) {
                $category->name = $request->name;
                $category->slug = $request->slug;
                $category->status = $request->status;
                $category->save();

                $oldImage = $category->image;

        
                if (!empty($request->image_id)) {
                    $imageid = $request->image_id;
                    $tempImages = DB::select('SELECT * FROM temp_images WHERE id =' . $imageid );
        
                    if (!empty($tempImages)) {
                        $tempImage = $tempImages[0];
                        $extArray = explode('.', $tempImage->name);
                        $ext = last($extArray);
                        $newImageName =  $category->id .'-'.time().'.' . $ext;
        
                        // Define source and destination paths
                        $spath = public_path().'/temp/'.$tempImage->name;
                        $dpath = public_path().'/uploads/category/'.$newImageName;
                        
                        // Perform the file copy operation
                        if (File::copy($spath, $dpath)) {
                            // File copied successfully
                            //generate thumbnail
                            $dpath = public_path().'/uploads/category/thumb/'.$newImageName;
                          //  $img = Image::make($spath);
                         //   $img->resize(450, 600);
                        //    $img->save($dpath);
        
                            //save image in database
                            $category->image = $newImageName;
                            $category->save();

                            File::delete(public_path('/uploads/category/'.$oldImage));
                      

                        } else {
                            // File copy operation failed
                            // You might want to handle this scenario
                        }
                    }
                    else{
                        return redirect()->route('categories.index')->with('error', 'Please Select Picture');

                    }
                }
    
                $request->session()->flash('success', 'Category updated successfully');
    
                return response()->json([
                    'status' => true,
                    'message' => 'Category updated successfully'
                ]);
            } else {
                return response()->json([
                    'status' => false,
                    'errors' => $validator->errors()
                ]);
            }


            return view("admin.categories.edit-category", compact('category'));
          } else {
            return redirect()->route('categories.index')->with('error', 'Category not found');
            }
              } else {
          return redirect()->route('categories.index')->with('error', 'Category not found');
           }
    }

    public function update(Request $request , $id)
    {

        $category = Category::find($id);

        if (!empty($category)) {
            return view("admin.categories.edit-category", compact('category'));
        } else {
            return redirect()->route('categories.index')->with('error', 'Category not found');
        }

    }
}
