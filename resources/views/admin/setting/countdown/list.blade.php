@extends('admin.master')
@section('title','Danh sách')
@section('content')
    <header class="content__title">
        <nav aria-label="breadcrumb" role="navigation">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                <li class="breadcrumb-item"><a href="#">Bài viết</a></li>
                <li class="breadcrumb-item active" aria-current="page">Danh sách</li>
            </ol>
        </nav>

        <a href="{{route('countdown.create')}}" class="btn btn-dark">Thêm cài đặt</a>

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
            <h4 class="card-title">Dữ liệu</h4>

            <div class="table-responsive">
                <table id="data-table" class="table">
                    <thead>
                    <tr>
                        <th>STT</th>
                        <th>Product</th>
                        <th>Datetime</th>
                        <th>Hành động</th>
                    </tr>
                    </thead>
                    <tbody>
                    @if(count($listCountdown)>0)
                        @foreach($listCountdown as $item)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>@php
                                        $product=\App\Model\Product::select('name','id')->where('id',$item->id)->first();
                                            echo $product->name;
                                    @endphp
                                </td>
                                <td>{{$item->datetime}}</td>
                                <td><a href="{{route('setting.edit',$item->id)}}"> <i
                                                class="zmdi zmdi-edit zmdi-hc-fw"> </i></a>
                                    <a data-id="{{$item->id}}" class="delete" href="javascript:void(0)"><i
                                                class="zmdi zmdi-delete zmdi-hc-fw"></i></a>
                                </td>
                            </tr>
                        @endforeach
                    @else
                        <h4 class="card-title">Chưa có cài đặt nào!</h4>
                    @endif
                    </tbody>
                </table>
            </div>
        </div>
    </div>

@stop
@section('script')
    <script src="admin_assets/vendors/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="admin_assets/vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="admin_assets/vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="admin_assets/vendors/bower_components/jszip/dist/jszip.min.js"></script>
    <script src="admin_assets/vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>

    <script>
        $(document).ready(function () {
            $(document).on('click', '.delete', function () {
                if (confirm('Bạn có chắc muốn xóa?')) {
                    var id = $(this).attr('data-id');
                    var url = '{!! route('countdown.ajax')!!}';
                    $.ajax({
                        url: url,
                        type: 'POST',
                        dataType: 'json',
                        data: {id: id, action: 'delete'}
                    })
                        .done(function (data) {
                            if (data == true) {
                                $('#data-table').load(window.location.href + " #data-table>tbody");
                            }
                            else
                                alert('no');

                        });

                }
            });
        });
    </script>

@stop