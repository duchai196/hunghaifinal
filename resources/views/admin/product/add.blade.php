@extends('admin.master')
@section('title','Thêm sản phẩm ')
@section('css')

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
            <form action="{{route('product.store')}}" method="POST" enctype="multipart/form-data">
                {!! csrf_field() !!}

                <h3 class="card-body__title">Tên sản phẩm</h3>


                <div class="form-group">
                    <input type="text" class="form-control" placeholder="eg: Vợt cầu lông" name="name" required>
                    <i class="form-group__bar"></i>
                </div>



                <h4 class="card-title">Danh mục sản phẩm</h4>

                <div class="form-group ">
                  <select class="select2" name="category_id" >
                      <option value="0">-- Danh mục </option>;
                      @php
                      showCategories($data);
                      @endphp
                  </select>
              </div>


              <h4 class="card-title">Thương hiệu sản phẩm</h4>


              <div class="form-group ">
                  <select class="select2" name="brand_id" >
                      <option value="0">-- Thương hiệu </option>;
                      @php
                      showCategories($listBrand);
                      @endphp
                  </select>
              </div>


              <div class="row">
                <div class="col-md-4">

                  <h3 class="card-body__title">Hiển thị sản phẩm</h3>

                  <div class="form-group">
                    <div class="toggle-switch">
                        <input type="checkbox" class="toggle-switch__checkbox" checked="" name="status">
                        <i class="toggle-switch__helper"></i>
                    </div>
                </div>

            </div>
            <div class="col-md-4">
             <h3 class="card-body__title">Sản phẩm nổi bật</h3>

             <div class="form-group">
                <div class="toggle-switch">
                    <input type="checkbox" class="toggle-switch__checkbox"  name="featured">
                    <i class="toggle-switch__helper"></i>
                </div>
            </div>
        </div>
    </div>
    <h3 class="card-body__title">Giá sản phẩm</h3>

    <div class="row">
        <div class="col-sm-4">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Giá thường" name="price">
                <i class="form-group__bar"></i>
            </div>

        </div>
        <div class="col-md-4">
           <div class="form-group">
            <input type="text" class="form-control" placeholder="Giá khuyến mại" name="sale_price">
            <i class="form-group__bar"></i>
        </div>
    </div>
</div>

<h3 class="card-body__title">Mô tả ngắn</h3>

<div class="form-group">
    <textarea class="form-control textarea-autosize" placeholder="Nội dung..." name="short_description"></textarea>
    <i class="form-group__bar"></i>
</div> 
<h3 class="card-body__title">Mô tả chi tiết</h3>

<textarea name="description" class="form-control my-editor">{!! old('description') !!}</textarea>
<br>
<br>
<div class="row">
    <div class="col-md-4">
        <h3 class="card-body__title">Ảnh đại diện</h3>
        <fieldset class="form-group">

            <div class="input-group">
                <span class="input-group-btn">
                    <a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn btn-light ">
                        <i class="fa fa-picture-o"></i> Choose
                    </a>
                </span>
                <input id="thumbnail" class="form-control" type="text" name="image">
            </div>
            <img id="holder" style="margin-top:15px;max-height:100px;">

        </fieldset>

        <h3 class="card-body__title">Ảnh chi tiết</h3>
        @for($lfm=1;$lfm<5;$lfm++)
        <div class=" ">
            <div class="input-group ">
                <span class="input-group-btn">
                    <a id="lfm{{$lfm}}" data-input="thumbnail{{$lfm}}" data-preview="holder{{$lfm}}" class="btn btn-dark">
                      <i class="fa fa-picture-o"></i> Choose
                  </a>
              </span>
              <input id="thumbnail{{$lfm}}" class="form-control " type="text" name="imageDetail[]" >
          </div>
          <img id="holder{{$lfm}}" style="margin-top:15px;max-height:100px;">
      </div>
      @endfor
  </div>
  <div class="col-md-8">
    <h3 class="card-body__title">Tiêu đề SEO</h3>

    <div class="form-group">
        <textarea class="form-control" rows="1" name="title_seo" placeholder="Let us type some lorem ipsum...."></textarea>
        <i class="form-group__bar"></i>
    </div>



    <h3 class="card-body__title">Meta description</h3>

    <div class="form-group">
        <textarea class="form-control" rows="2" name="meta_description" placeholder="Let us type some lorem ipsum...."></textarea>
        <i class="form-group__bar"></i>
    </div>


    <h3 class="card-body__title">Meta keywords</h3>

     <div class="form-group">
        <textarea class="form-control" rows="2" name="meta_keywords" placeholder="Let us type some lorem ipsum...."></textarea>
        <i class="form-group__bar"></i>
    </div>


</div>
</div>



</div>
</div>
<div class="btn-demo">
    <button class="btn btn-light pull-left" onclick="window.history.back()">Quay lại</button>
    <button class="btn btn-light pull-right" type="submit">Thêm sản phẩm</button>
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
    path_absolute : "/",
    selector: "textarea.my-editor",
    plugins: [
    "advlist autolink lists link image charmap print preview hr anchor pagebreak",
    "searchreplace wordcount visualblocks visualchars code fullscreen",
    "insertdatetime media nonbreaking save table contextmenu directionality",
    "emoticons template paste textcolor colorpicker textpattern"
    ],
    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media",
    relative_urls: false,
    file_browser_callback : function(field_name, url, type, win) {
      var x = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName('body')[0].clientWidth;
      var y = window.innerHeight|| document.documentElement.clientHeight|| document.getElementsByTagName('body')[0].clientHeight;

      var cmsURL = editor_config.path_absolute + 'laravel-filemanager?field_name=' + field_name;
      if (type == 'image') {
        cmsURL = cmsURL + "&type=Images";
    } else {
        cmsURL = cmsURL + "&type=Files";
    }

    tinyMCE.activeEditor.windowManager.open({
        file : cmsURL,
        title : 'Filemanager',
        width : x * 0.8,
        height : y * 0.8,
        resizable : "yes",
        close_previous : "no"
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
        $('#lfm'+i).filemanager('image');

    }
</script>
@stop
