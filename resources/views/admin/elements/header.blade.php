<header class="header">
    <div class="navigation-trigger hidden-xl-up" data-sa-action="aside-open" data-sa-target=".sidebar">
        <i class="zmdi zmdi-menu"></i>
    </div>

    <div class="logo hidden-sm-down">
        <h1><a href="admin/"> Hùng Hải Sport </a></h1>
    </div>

    <form class="search">
        <div class="search__inner">
            <input type="text" class="search__text" placeholder="Search for people, files, documents...">
            <i class="zmdi zmdi-search search__helper" data-sa-action="search-close"></i>
        </div>
    </form>

    <ul class="top-nav">
        <li class="hidden-xl-up"><a href="#" data-sa-action="search-open"><i class="zmdi zmdi-search"></i></a></li>


        <li class="dropdown top-nav__notifications">
            <div class="dropdown-demo">
                <div class="btn-group" dropdown="">
                    <button type="button" class="btn btn-light dropdown-toggle dropdown-toggle-split"
                            data-toggle="dropdown">
                        <span class="caret">{{Auth::user()->name}}</span>
                    </button>

                    <ul class="dropdown-menu">
                        @if(Auth::user()->role==1)
                            <li><a class="dropdown-item" href="admin/">Quản trị</a></li>
                        @endif
                        <li><a class="dropdown-item" href="logout">Đăng xuất</a></li>
                    </ul>
                </div>
            </div>
        </li>

    </ul>

    <div class="clock hidden-md-down">
        <div class="time">
            <span class="time__hours"></span>
            <span class="time__min"></span>
            <span class="time__sec"></span>
        </div>
    </div>
</header>