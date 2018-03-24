@extends('admin.master')
@section('title','Thêm')

@section('content')
    <div class="content__inner">
        <header class="content__title">
            <h1>Cài đặt</h1>

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
                <p>
                    Nhập key dưới dạng viết liền không dấu
                </p>

                <form action="{{route('postSettings')}}" method="POST">
                    {!! csrf_field() !!}
                    <div class="row">
                        <div class="col-sm-6">
                            <h3 class="card-body__title">Key</h3>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="eg: Email" required name="key">
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <h3 class="card-body__title">Giá trị</h3>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="eg: hunghai@gmail.com" required
                                       name="value">
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn-dark btn pull-right">Lưu cài đặt</button>
                            <a href="javascript:void(0)" class="btn btn-dark"> Quay lại</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

@stop
@section('script')

@stop