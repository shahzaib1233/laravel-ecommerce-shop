@extends('admin.layouts.app')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid my-2">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Create Category</h1>
                </div>
                <div class="col-sm-6 text-right">
                    <a href="{{ url('admin/categories/index') }}" class="btn btn-primary">Back</a>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="container-fluid">
            @include('admin.message')

            <form action="" method="POST" id="categoryform" name="categoryform">

                @csrf
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="name">Name</label>
                                    <input type="text" onchange="getslug()" name="name" id="name" class="form-control"
                                           placeholder="Name">
                                    <h3></h3>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="Slug">Slug</label>
                                    <input type="text" readonly name="slug" id="slug" class="form-control"
                                           placeholder="Slug">
                                    <h3></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="image">Image</label>
                                <input type="hidden" name="image_id" id="image_id">
                                <div id="image" class="dropzone dz-clickable">
                                    <div class="dz-message needsclick">    
                                        <br>Drop files here or click to upload.<br><br>                                            
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="status">Status</label>
                                <select name="status" class="form-control" id="status">
                                    <option value="1">Active</option>
                                    <option value="0">Block</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pb-5 pt-3">
                    <button class="btn btn-primary" id="create" type="submit">Create</button>
                    <a href="{{ url('admin/categories/index') }}" class="btn btn-outline-dark ml-3">Cancel</a>
                </div>
            </form>
        </div>
     
        <!-- /.card -->
    </section>
    <!-- /.content -->
@endsection

@section('customjs')
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.2/min/dropzone.min.js"></script>

    <script>
        $(document).ready(function() {
          
            
            $('#create').click(function(event){
                event.preventDefault();
                $("button[type=submit]").prop('disabled' , true);
                $.ajax({
                    url: '{{ url('admin/categories/store') }}',
                    type: 'POST',
                    data: $('#categoryform').serialize(),
                    dataType: 'json',
                    success: function(response) {
                        $("button[type=submit]").prop('disabled' , false);

                        if(response['status']==true){
                            window.location.href="{{ route('categories.index') }}";
                            $('#name').removeClass('is-invalid').siblings('h3').removeClass(
                                'invalid-feedback').html("");
                            $('#slug').removeClass('is-invalid').siblings('h3').removeClass(
                                'invalid-feedback').html("");

                        }
                        else{
                            var errors = response['errors']; // Corrected the syntax
                            if (errors['name']) {
                                $('#name').addClass('is-invalid').siblings('h3').addClass(
                                    'invalid-feedback').html(errors['name']);
                            } else {
                                $('#name').removeClass('is-invalid').siblings('h3').removeClass(
                                    'invalid-feedback').html("");
                            }
                            if (errors['slug']) {
                                $('#slug').addClass('is-invalid').siblings('h3').addClass(
                                    'invalid-feedback').html(errors['slug']);
                            } else {
                                $('#slug').removeClass('is-invalid').siblings('h3').removeClass(
                                    'invalid-feedback').html("");
                            }
                        }
                    },
                    error: function(jqXHR, exception) {
                        console.log('Something went wrong');
                    }
                });
            });
        });

        function getslug() {
            var element = $('#name').val(); 
            console.log(element);

            if (element !== '') { 
                var slug = element.replace(/\s+$/g, '').replace(/\s+/g, '-');
                $('#slug').val(slug);
            }
        }

        Dropzone.autoDiscover = false;    
        const dropzone = $("#image").dropzone({ 
            init: function() {
        this.on('addedfile', function(file) {
            if (this.files.length > 1) {
                this.removeFile(this.files[0]);
            }
        });
    },
    
    url:  "{{ route('temp-images.create') }}",
    maxFiles: 1,
    paramName: 'image',
    addRemoveLinks: true,
    acceptedFiles: "image/jpeg,image/png,image/gif",
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }, success: function(file, response){
          $("#image_id").val(response.image_id);
        //console.log(response)
    }
});
    </script>
@endsection
