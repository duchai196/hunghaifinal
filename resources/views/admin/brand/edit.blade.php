@extends('admin.master')
@section('title','Sửa sản phẩm sản phẩm ')

@section('content')
    <div class="content__inner">
        <header class="content__title">
            <h1>Sửa thương hiệu</h1>

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
                <h4 class="card-title">Nhập dữ liệu vào các trường dữ liệu dưới đây</h4>
                <form action="{{route('brand.update',$brand->id)}}" method="POST" enctype="multipart/form-data">
                    {!! csrf_field() !!}
                    {!! method_field('PUT') !!}

                    <h3 class="card-body__title">Tên thương hiệu</h3>


                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="eg: Nike" name="name"
                               value="{!! old('name',isset($brand)? $brand->name:null) !!}" required>
                        <i class="form-group__bar"></i>
                    </div>
                    <h3 class="card-body__title">Logo thương hiệu</h3>
                    <fieldset class="form-group">

                        <div class="input-group">
                <span class="input-group-btn">
                    <a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn btn-light  ">
                        <i class="fa fa-picture-o"></i> Choose
                    </a>
                </span>
                            <input id="thumbnail" class="form-control" type="text" name="image"
                                   value="{!! old('image',isset($brand)? $brand->logo:null) !!}">
                        </div>
                        <img id="holder" style="margin-top:15px;max-height:100px;">
                        @if(isset($brand->logo))
                            <img src="{{$brand->logo}}" alt="{{$brand->name}}" style="max-height: 120px; margin-top: 30px;">
                        @endif

                    </fieldset>

            </div>
        </div>
        <div class="btn-demo">
            <button class="btn btn-light pull-left" onclick="window.history.back()">Quay lại</button>
            <button class="btn btn-light pull-right" type="submit">Cập nhật thương hiệu</button>
        </div>

        </form>

    </div>
    </div>

@stop
@section('script')

    <script src="/vendor/laravel-filemanager/js/lfm.js"></script>
    <script>

        $('#lfm').filemanager('file');
        $('#lfm').filemanager('image');
    </script>
@stop
