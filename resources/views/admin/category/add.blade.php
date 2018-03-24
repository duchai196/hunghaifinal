@extends('admin.master')
@section('title','Thêm danh mục ')
@section('css')
    <link rel="stylesheet"
          href="admin_assets/vendors/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.css">

    <link rel="stylesheet" href="admin_assets/vendors/bower_components/select2/dist/css/select2.min.css">
@stop
@section('content')
    <div class="content__inner">
        <header class="content__title">
            <h1>Thêm danh mục mới</h1>

            <div class="actions">
                <a href="#" class="actions__item zmdi zmdi-trending-up"></a>
                <a href="#" class="actions__item zmdi zmdi-check-all"></a>

                <div class="dropdown actions__item">
                    <i data-toggle="dropdown" class="zmdi zmdi-more-vert"></i>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="#" class="dropdown-item">Refresh</a>
                        <a href="#" class="dropdown-item">Manage Widgets</a>
                        <a href="#" class="dropdown-item">Settings</a>
                    </div>
                </div>
            </div>
        </header>

        <div class="card">
            <div class="card-body">
                @if(Session::has('message'))
                    <div class="alert alert-{{Session::get('level')}}">
                        {{Session::get('message')}}
                    </div>
                @endif
                    @if(count($errors)>0)
                        @foreach($errors->all() as $err)
                            <div class="alert alert-warning">
                                {{$err}}
                            </div>
                        @endforeach
                    @endif
                <h4 class="card-title">Nhập dữ liệu vào các trường dữ liệu dưới đây</h4>
                <form action="{{route('category.store')}}" method="POST">
                    {!! csrf_field() !!}

                    <h3 class="card-body__title">Tên danh mục</h3>


                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="eg: Cầu lông" name="name" required>
                        <i class="form-group__bar"></i>
                    </div>
                    <h3 class="card-body__title">Thể loại danh mục</h3>

                    <label class="custom-control custom-checkbox">
                        <input type="radio" name="category_type" class="custom-control-input" value="post">
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-description">Bài viết</span>
                    </label>

                    <label class="custom-control custom-checkbox">
                        <input type="radio" name="category_type" class="custom-control-input" value="product">
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-description">Sản phẩm</span>
                    </label>
                    <br>
                    <br>
                    <br>
                    <h4 class="card-title">Danh mục cha</h4>


                    <div class="form-group">
                        <select class="select2" name="parent_id" id="parentIdSelect">
                            <option value="0">-- Chọn thể loại trước</option>
                            ;
                        </select>
                    </div>


            </div>
        </div>
        <div class="btn-demo">
            <button class="btn btn-light pull-left" onclick="window.history.back()">Quay lại</button>
            <button class="btn btn-light pull-right" type="submit">Thêm sản phẩm</button>
        </div>
        </form>

    </div>

@stop
@section('script')

    <script src="admin_assets/vendors/bower_components/trumbowyg/dist/trumbowyg.min.js"></script>
    <script src="admin_assets/vendors/bower_components/select2/dist/js/select2.full.min.js"></script>

    <script>
        $(document).ready(function () {
            $('input[type="radio"]').on('change', function () {
                var val = $(this).val();
                $.ajax({
                    url: '{{route('category.ajax')}}',
                    type: 'post',
                    dataType: 'text',
                    data: {value: val, action: "loadCate"}
                })
                    .done(function (data) {
                        $('#parentIdSelect').html(data);
                    })

            });
        })
    </script>
@stop