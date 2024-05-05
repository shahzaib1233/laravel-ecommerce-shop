<?php
namespace App\Http\Controllers\admin;
use Illuminate\Database\Eloquent\Builder;
use App\Models\category;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\File;
use App\Http\Controllers\admin\temp_imageController; 
use Illuminate\Support\Facades\DB;

class CategoryController extends Controller
{
   public function index(Request $request)
   {
    $category = Category::latest();

    if(!empty($request->get('keyword')))
    {
        $category = Category::where('name' , 'like' , '%'.$request->get('keyword').'%');
    }
      $categories = $category->paginate(10);
      return view('admin.categories.index', compact('categories'));

   }

   public function create()
   {

    return view('admin.categories.create');
    
   }

   public function store(Request $request){
    $validator = Validator::make($request->all(), [
        'name' => 'required',
        'slug' => 'required|unique:categories',
    ]);
    
    if ($validator->passes()) {
        $category = new category();
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
        }

        $request->session()->flash('success', 'Category added Successfully');

        return response()->json([
            'status' => true,
            'message' => 'Category Added Successfully'
        ]);
    } else {
        return response()->json([
            'status' => false, 
            'errors' => $validator->errors()
        ]);
    }
}

   public function edit()
   {
    
   }
}
