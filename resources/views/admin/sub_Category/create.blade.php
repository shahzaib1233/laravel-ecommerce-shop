    @extends('admin.layouts.app')
    @section('content')
        <!-- Content Header (Page header) -->
        <section class="content-header">					
            <div class="container-fluid my-2">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Create Sub Category</h1>
                    </div>
                    <div class="col-sm-6 text-right">
                        <a href="{{ route('categories.index') }}" class="btn btn-primary">Back</a>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- Main content -->
        <section class="content">
            <!-- Default box -->
            <div class="container-fluid">
                <form id="sub_category" class="sub_category">
                    @csrf
                    <div class="card">
                        <div class="card-body">								
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label for="category">Category</label>
                                        <select name="category_id" id="category_id" class="form-control">
                                            <option value="">Please Select Category</option>
                                            @foreach ($categories as $category)
                                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                                            @endforeach
                                        </select>
                                        <p></p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="name">Name</label>
                                        <input type="text" name="name" onchange="getslug()" id="name" class="form-control" placeholder="Name">	
                                        <p></p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="slug">Slug</label>
                                        <input type="text" readonly name="slug" id="slug" class="form-control" placeholder="Slug">	
                                        <p></p>
                                    </div>
                                </div>	
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="status">Status</label>
                                        <select name="status" id="status" class="form-control">
                                            <option value="1">Active</option>
                                            <option value="0">Not Active</option>
                                        </select>
                                        <p></p>
                                    </div>
                                </div>
                            </div>
                        </div>							
                    </div>
                    <div class="pb-5 pt-3">
                        <button type="submit" class="btn btn-primary">Create</button>
                        <a href="{{ route('categories.index') }}" class="btn btn-outline-dark ml-3">Cancel</a>
                    </div>
                </form>
            </div>
            <!-- /.card -->
        </section>
        <!-- /.content -->
    @endsection

    @section('customjs')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
       $(document).ready(function() {
    $('#sub_category').submit(function(event) {
        event.preventDefault();
        $("button[type=submit]").prop('disabled', true);
        $.ajax({
            url: '{{ route('admin.sub_categories.store') }}',
            type: 'POST',
            data: $(this).serialize(),
            dataType: 'json',
            success: function(response) {
                $("button[type=submit]").prop('disabled', false);
                if (response.status) {
                    window.location.href = "{{ route('categories.index') }}";
                } else {
                    if (response.errors) {
                        $.each(response.errors, function(key, value) {
                            if(key === 'category') {
                                $('#category').addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(value);
                            } else {
                                $('#' + key).addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(value);
                            }
                        });
                    }
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log('Something went wrong');
            }
        });
    });
});

        function getslug() {
            var element = $('#name').val().trim();
            if (element !== '') {
                var slug = element.replace(/\s+/g, '-');
                $('#slug').val(slug);
            }
        }
    </script>
    @endsection
