@extends('admin.master')
@section('title','Thêm danh mục ')
@section('css')


    <link rel="stylesheet" href="admin_assets/vendors/bower_components/select2/dist/css/select2.min.css">
    <link rel="stylesheet" href="admin_assets/vendors/bower_components/flatpickr/dist/flatpickr.min.css">
@stop
@section('content')
    <div class="content__inner">
        <header class="content__title">
            <h1>COUNTDOWN</h1>

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
                <form action="{{route('countdown.store')}}" method="POST">

                    {!! csrf_field() !!}
                    @if(count($listProducts)>0)
                        <div class="row">
                            <div class=" col-sm-4 clearfix  ">
                                <h3 class="card-body__title">Chọn sản phẩm đếm ngược giảm giá</h3>
                                <div class="form-group">
                                    <select class="select2" name="product_id" id="parentIdSelect">
                                        @foreach($listProducts as $product)
                                            <option value="{{$product->id}}">{{$product->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>


                            <div class=" col-sm-6">
                                <h3 class="card-body__title">Thời gian còn bắt đầu</h3>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="zmdi zmdi-calendar"></i></span>
                                    <div class="form-group">
                                        <input type="text" class="form-control datetime-picker"
                                               placeholder="Pick a date & time" name="datetime">
                                        <i class="form-group__bar"></i>
                                    </div>
                                </div>
                            </div>
                            @endif

                        </div>
            </div>
        </div>
        <div class="btn-demo">
            <span class="btn btn-light pull-left" onclick="window.history.back()">Quay lại</span>
            <button class="btn btn-light pull-right" type="submit">Lưu cài đặt</button>
        </div>
        </form>

    </div>

@stop
@section('script')

    <script src="admin_assets/vendors/bower_components/trumbowyg/dist/trumbowyg.min.js"></script>
    <script src="admin_assets/vendors/bower_components/select2/dist/js/select2.full.min.js"></script>
    <script src="admin_assets/vendors/bower_components/flatpickr/dist/flatpickr.min.js"></script>

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