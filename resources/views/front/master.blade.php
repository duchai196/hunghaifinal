<!DOCTYPE html>

<html lang="en">


<!-- Mirrored from kute-themes.com/html/krystal/html/index2.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Feb 2018 15:50:03 GMT -->
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="@yield('description')">

    <meta charset="UTF-8">

    <title>@yield('title')</title>
    <base href="{{asset('/front')}}/">

    <link rel="stylesheet" type="text/css" href="css/animate.css">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="css/pe-icon-7-stroke.css">

    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">

    <link rel="stylesheet" type="text/css" href="css/chosen.css">

    <link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css">

    <link rel="stylesheet" type="text/css" href="css/style.css">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,600i,700,700i" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,500i,700" rel="stylesheet">

@yield('css')
</head>

<body class="index-opt-2">



<div class="wrapper">
  <!--  HEADER -->
    @include('front.elements.header')
  <!-- end HEADER -->

@yield('content')



    <!-- FOOTER -->
@include('front.elements.footer')



    <!--back-to-top  -->

    <!-- <a href="#" class="back-to-top">

        <i aria-hidden="true" class="fa fa-angle-up"></i>

    </a> -->



</div>


<a href="#" id="scrollup" title="Scroll to Top">Scroll</a>
<!-- jQuery -->

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

<script type="text/javascript" src="js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/jquery-ui.min.js"></script>

<script type="text/javascript" src="js/owl.carousel.min.js"></script>

<script type="text/javascript" src="js/wow.min.js"></script>

<script type="text/javascript" src="js/jquery.actual.min.js"></script>

<script type="text/javascript" src="js/chosen.jquery.min.js"></script>

<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>

<script type="text/javascript" src="js/jquery.sticky.js"></script>

<script type="text/javascript" src="js/jquery.elevateZoom.min.js"></script>

<script src="js/fancybox/source/jquery.fancybox.pack.js"></script>
<script src="js/fancybox/source/helpers/jquery.fancybox-media.js"></script>
<script src="js/fancybox/source/helpers/jquery.fancybox-thumbs.js"></script>

<script type="text/javascript" src="js/function.js"></script>

<script type="text/javascript" src="js/Modernizr.js"></script>

<script type="text/javascript" src="js/jquery.plugin.js"></script>

<script type="text/javascript" src="js/jquery.countdown.js"></script>
@yield('script')

</body>


<!-- Mirrored from kute-themes.com/html/krystal/html/index2.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Feb 2018 15:50:20 GMT -->
</html>