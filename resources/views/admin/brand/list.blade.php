@extends('admin.master')
@section('title','Danh sách')
@section('content')
    <header class="content__title">
        <nav aria-label="breadcrumb" role="navigation">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                <li class="breadcrumb-item"><a href="#">Thương hiệu</a></li>
                <li class="breadcrumb-item active" aria-current="page">Danh sách</li>
            </ol>
        </nav>

        <h1>DANH SÁCH THƯƠNG HIỆU HIỆN CÓ</h1>

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
            <h6 class="card-subtitle">Chọn vào hành động để sửa, xóa thương hiệu</h6>

            <div class="table-responsive">
                <table id="data-table" class="table">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Logo</th>
                        <th>Created At</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    @if(count($listBrand))
                        @foreach($listBrand as $item)
                            <tr>
                                <td>{{$item->name}}</td>
                                <td><img src="{!!  $item->logo!!}" alt=""  height="60" class="img-circle"></td>
                                <td>{{$item->created_at->format('d-M-Y')}}</td>
                                <td><a href="{{route('brand.edit',$item->id)}}"> <i
                                                class="zmdi zmdi-edit zmdi-hc-fw"> </i></a>
                                    <a data-id="{{$item->id}}" class="delete" href="javascript:void(0)"><i
                                                class="zmdi zmdi-delete zmdi-hc-fw"></i></a>
                                </td>
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
            $(document).on('click','.delete',function () {
                if(confirm('Bạn có chắc muốn xóa?')){
                    var id = $(this).attr('data-id');
                    var url = '{!! route('brand.ajax')!!}';
                    $.ajax({
                        url:url,
                        type:'POST',
                        dataType:'json',
                        data:{id:id,action:'delete'}
                    })
                        .done(function(data){
                            if(data==true)
                            {
                                $('#data-table').load(window.location.href+ " #data-table>tbody");
                            }
                            else
                                alert('no');

                        });

                }
            });
        });
    </script>

@stop