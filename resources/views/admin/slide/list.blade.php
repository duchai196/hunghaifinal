@extends('admin.master')
@section('title','Danh sách')
@section('content')
    <header class="content__title">
        <nav aria-label="breadcrumb" role="navigation">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                <li class="breadcrumb-item"><a href="#">Danh mục</a></li>
                <li class="breadcrumb-item active" aria-current="page">Danh sách</li>
            </ol>
        </nav>

        <div class="row">
            <div class="col-2">
                <a href="{{route('slide.create')}}" class="btn btn-dark">THÊM BANNER</a>
            </div>
        </div>

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
            <h6 class="card-subtitle">Chọn vào hành động để sửa, xóa danh mục</h6>

            <div class="table-responsive">
                <table id="data-table" class="table">
                    <tbody>
                    @if(count($listSlide))
                        @foreach($listSlide as $item)
                            <tr>
                                <td>Title: {{$item->title}}</td>
                            </tr>
                            <tr>
                                <td>Subtitle: {{$item->sub_title}}</td>
                            </tr>
                            <tr>
                                <td>Link: {{$item->link}}</td>
                            </tr>
                            <tr>
                                <td>Button: {{$item->title_link}}</td>
                            </tr>
                            <tr>
                                <td><img src="{{$item->image}}" alt="" width="100%"></td>
                            </tr>
                        @endforeach
                    @else
                        <h4 class="card-title">Không có dữ liệu</h4>
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
                    var url = '{!! route('category.ajax')!!}';
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