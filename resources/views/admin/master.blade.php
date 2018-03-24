<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from byrushan.com/projects/super-admin/app/2.1.2/empty.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 06 Feb 2018 15:57:11 GMT -->
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>@yield('title')</title>
    <base href="{{asset('/')}}">
        <!-- Vendor styles -->
    <link href="https://fonts.googleapis.com/css?family=Encode+Sans|Open+Sans" rel="stylesheet">
        <link rel="stylesheet" href="admin_assets/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="admin_assets/vendors/bower_components/animate.css/animate.min.css">
        
        <link rel="stylesheet" href="admin_assets/vendors/bower_components/jquery.scrollbar/jquery.scrollbar.css">

            
            @yield('css')
        <!-- App styles -->
        <link rel="stylesheet" href="admin_assets/css/app.min.css">

    </head>

    <body data-sa-theme="1">
        <main class="main">
         @include('admin.elements.header')

       @include('admin.elements.sidebar')

            <div class="themes">
    <div class="scrollbar-inner">

        <a href="#" class="themes__item active" data-sa-value="3"><img src="admin_assets/img/bg/4.jpg" alt=""></a>

    </div>
</div>

            <section class="content">
                   @yield('content')
               @include('admin.elements.footer')
            </section>
        </main>



        <!-- Javascript -->
        <!-- Vendors -->
        <script src="admin_assets/vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="admin_assets/vendors/bower_components/popper.js/dist/umd/popper.min.js"></script>
        <script src="admin_assets/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="admin_assets/vendors/bower_components/jquery.scrollbar/jquery.scrollbar.min.js"></script>
        <script src="admin_assets/vendors/bower_components/jquery-scrollLock/jquery-scrollLock.min.js"></script>
         
        
        <!-- App functions and actions -->
        <script src="admin_assets/js/app.min.js"></script>
        <script>
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
        </script>
        @yield('script')
    <script>
        $('.alert').show(0).delay(3000).hide(0);
    </script>
    </body>

<!-- Mirrored from byrushan.com/projects/super-admin/app/2.1.2/empty.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 06 Feb 2018 15:57:11 GMT -->
</html>