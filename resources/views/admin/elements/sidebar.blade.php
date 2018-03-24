<aside class="sidebar">
    <div class="scrollbar-inner">

        <div class="user">
            <div class="user__info" data-toggle="dropdown">
                <img class="user__img" src="admin_assets/demo/img/profile-pics/8.jpg" alt="">
                <div>
                    <div class="user__name">Malinda Hollaway</div>
                    <div class="user__email">malinda-h@gmail.com</div>
                </div>
            </div>

            <div class="dropdown-menu">
                <a class="dropdown-item" href="#">View Profile</a>
                <a class="dropdown-item" href="#">Settings</a>
                <a class="dropdown-item" href="#">Logout</a>
            </div>
        </div>

        <ul class="navigation">
            <li class="@@indexactive "><a href="index-2.html"><i class="zmdi zmdi-home"></i> Quản trị</a></li>

            <li class="navigation__sub @@variantsactive {{setActive('category')}}">
                <a href="{{route('category.index')}}"><i class="zmdi zmdi-attachment-alt zmdi-hc-fw"></i> Danh mục</a>

                <ul>
                    <li class="@@sidebaractive {{setActiveCon('category.index')}}"><a href="{{route('category.index')}}">Danh sách</a></li>
                    <li class="@@boxedactive {{setActiveCon('category.create')}} "><a href="{{route('category.create')}}">Thêm danh mục</a></li>

                </ul>
            </li>
            <li class="navigation__sub  {{setActive('brand')}}">
                <a href="#"><i class="zmdi zmdi-collection-item"></i>Thương hiệu</a>

                <ul>
                    <li class="@@profileactive {{setActiveCon('brand.index')}}"><a href="{{route('brand.index')}}">Danh sách</a></li>
                    <li class="@@messagesactive {{setActiveCon('brand.create')}}"><a href="{{route('brand.create')}}">Thêm thương hiệu</a></li>

                </ul>
            </li>

            <li class="navigation__sub @@tableactive {{setActive('product')}}">
                <a href="{{route('product.index')}}"><i class="zmdi zmdi-widgets"></i> Sản phẩm</a>

                <ul>
                    <li class="@@normaltableactive {{setActiveCon('product.index')}}"><a href="{{route('product.index')}}">Danh sách sản phẩm</a></li>
                    <li class="@@datatableactive {{setActiveCon('product.create')}}"><a href="{{route('product.create')}}"> Thêm sản phẩm</a></li>
                </ul>
            </li>


            <li class="navigation__sub @@formactive {{setActive('post')}}">
                <a href="{{route('post.index')}}"><i class="zmdi zmdi-collection-text"></i> Bài viết</a>

                <ul>
                    <li class="@@formelementactive {{setActiveCon('post.index')}}"><a href="{{route('post.index')}}">Danh sách bài viết</a></li>
                    <li class="@@formcomponentactive {{setActiveCon('post.create')}}"><a href="{{route('post.create')}}">Thêm bài viết</a></li>

                </ul>
            </li>
            <li class="navigation__sub @@formactive {{setActive('user')}}">
                <a href="#"><i class="zmdi zmdi-accounts zmdi-hc-fw"></i> Thành viên</a>

                <ul>
                    <li class="@@formelementactive"><a href="form-elements.html">Danh sách thành viên</a></li>
                    <li class="@@formcomponentactive"><a href="form-components.html">Thêm thành viên</a></li>

                </ul>
            </li>
            <li class="@@photogalleryactive"><a href=""><i class="zmdi zmdi-settings"></i> Cài đặt</a>
            </li>


            <li class="navigation__sub @@chartsactive {{setActive('brand')}}">
                <a href="#"><i class="zmdi zmdi-trending-up"></i> Thống kê báo cáo</a>

                <ul>
                    <li class="@@flotchartsactive"><a href="flot-charts.html">Flot</a></li>
                    <li class="@@otherchartsactive"><a href="other-charts.html">Other Charts</a></li>
                </ul>
            </li>


            <li class="@@photogalleryactive"><a href="laravel-filemanager?type=image"><i class="zmdi zmdi-image"></i> Thư viện</a>
            </li>


        </ul>

    </div>
</aside>