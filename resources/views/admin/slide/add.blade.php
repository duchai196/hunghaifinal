@extends('admin.master')
@section('title','Thêm  banner ')
@section('css')
    <link rel="stylesheet" href="admin_assets/vendors/bower_components/select2/dist/css/select2.min.css">
@stop
@section('content')
    <div class="content__inner">
        <header class="content__title">
            <h1>Thêm banner mới</h1>
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
                <form action="{{route('slide.store')}}" method="POST" enctype="multipart/form-data">
                    {!! csrf_field() !!}
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="card-body__title">Ảnh </h3>
                            <fieldset class="form-group">
                                <div class="input-group">
                        <span class="input-group-btn">
                        <a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn btn-light ">
                        <i class="fa fa-picture-o"></i> Chọn ảnh
                        </a>
                        </span>
                                    <input id="thumbnail" class="form-control" type="text" name="image">
                                </div>
                                <img id="holder" style="margin-top:15px;" width="100%">
                            </fieldset>
                        </div>
                    </div>
                    <h3 class="card-body__title">Tiêu đề</h3>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="eg: Vợt cầu lông" name="title">
                        <i class="form-group__bar"></i>
                    </div>
                    <h3 class="card-body__title">Mô tả ngắn</h3>
                    <div class="form-group">
               <textarea class="form-control textarea-autosize" placeholder="Nội dung..."
                         name="descriptions"></textarea>
                        <i class="form-group__bar"></i>
                    </div>
                    <h3 class="card-body__title">Name button</h3>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="eg: Mua ngay" name="title_link">
                        <i class="form-group__bar"></i>
                    </div>
                    <h3 class="card-body__title">Link button</h3>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="eg: http://hunghaisport.com/bai-viet"
                               name="link">
                        <i class="form-group__bar"></i>
                    </div>
                    <div class="row">
                        <div class="col-2">
                            <h4 class="card-title">Kiểu banner</h4>
                            <div class="form-group  ">
                                <select class="select2" name="type" data-minimum-results-for-search="Infinity">
                                    <option value="0"> Slide trang chủ</option>
                                    <option value="1">3 cột trang chủ</option>
                                    <option value="2">2 cột trang chủ</option>
                                </select>
                                <br><br>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-2">
                            <h3 class="card-body__title">Hiển thị banner</h3>
                            <div class="toggle-switch">
                                <input type="checkbox" class="toggle-switch__checkbox" checked="" name="status">
                                <i class="toggle-switch__helper"></i>
                            </div>
                        </div>
                    </div>
                    <br>
            </div>
        </div>
        <div class="btn-demo">
            <span class="btn btn-light pull-left" onclick="window.history.back()">Quay lại</span>
            <button class="btn btn-light pull-right" type="submit">Thêm banner</button>
        </div>
        </form>
    </div>
    </div>
@stop
@section('script')
    <script src="admin_assets/vendors/bower_components/autosize/dist/autosize.min.js"></script>
    <script src="admin_assets/vendors/bower_components/select2/dist/js/select2.full.min.js"></script>
    <script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
    <script>
        var editor_config = {
            path_absolute: "/",
            selector: "textarea.my-editor",
            plugins: [
                "advlist autolink lists link image charmap print preview hr anchor pagebreak",
                "searchreplace wordcount visualblocks visualchars code fullscreen",
                "insertdatetime media nonbreaking save table contextmenu directionality",
                "emoticons template paste textcolor colorpicker textpattern"
            ],
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media",
            relative_urls: false,
            file_browser_callback: function (field_name, url, type, win) {
                var x = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName('body')[0].clientWidth;
                var y = window.innerHeight || document.documentElement.clientHeight || document.getElementsByTagName('body')[0].clientHeight;

                var cmsURL = editor_config.path_absolute + 'laravel-filemanager?field_name=' + field_name;
                if (type == 'image') {
                    cmsURL = cmsURL + "&type=Images";
                } else {
                    cmsURL = cmsURL + "&type=Files";
                }

                tinyMCE.activeEditor.windowManager.open({
                    file: cmsURL,
                    title: 'Filemanager',
                    width: x * 0.8,
                    height: y * 0.8,
                    resizable: "yes",
                    close_previous: "no"
                });
            }
        };

        tinymce.init(editor_config);
    </script>
    <script src="/vendor/laravel-filemanager/js/lfm.js"></script>
    <script>
        $('#lfm').filemanager('file');
        $('#lfm').filemanager('image');
        for (var i = 0; i < 5; i++) {
            $('#lfm' + i).filemanager('image');

        }
    </script>
@stop