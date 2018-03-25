@extends('front.master')
@section('content')

    <!-- MAIN -->

    <main class="site-main">

        <div class="block-slide">

            <div class="container">

                <div class="row">

                    <div class="col-sm-3"></div>

                    <div class="col-sm-9 padding-left-5 main-slide slide-opt-2">

                        <div class="owl-carousel nav-style5" data-nav="true" data-autoplay="false" data-dots="true"
                             data-loop="true" data-margin="0"
                             data-responsive='{"0":{"items":1},"600":{"items":1},"1000":{"items":1}}'>

                            <div class="item-slide item-slide-1">

                                <div class="container">

                                    <div class="slide-desc slide-desc-1">

                                        <div class="p-primary">Crafted For Him</div>

                                        <p>Contemporary designs that Compliment his everyday Look.</p>

                                        <a href="#" class="btn-shop-now">Shop Now</a>

                                    </div>

                                </div>

                            </div>

                            <div class="item-slide item-slide-2">

                                <div class="container">

                                    <div class="slide-desc slide-desc-2">

                                        <div class="p-primary">The new-Laptop gift you are wishing.</div>

                                        <p>Big screen in incredibly slim designs that in your hand.</p>

                                        <a href="#" class="btn-shop-now">Shop Now</a>

                                    </div>

                                </div>

                            </div>

                            <div class="item-slide item-slide-3">

                                <div class="container">

                                    <div class="slide-desc slide-desc-3">

                                        <div class="p-primary">Meet Our Brilliant New Rolling Luggage</div>

                                        <p>Convenience that Packs a Punch.</p>

                                        <a href="#" class="btn-shop-now">Shop Now</a>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <div class="block-promotion-banner">

            <div class="container">

                <div class="row">

                    <div class="col-md-4 col-sm-6 col-xs-6">

                        <div class="promotion-banner item-1 style-6">

                            <a href="#" class="banner-img"><img src="{{asset('/front')}}/images/home2/banner1.jpg"
                                                                alt="banner1"></a>

                        </div>

                    </div>

                    <div class="col-md-4 col-sm-6 col-xs-6">

                        <div class="promotion-banner item-2 style-6">

                            <a href="#" class="banner-img"><img src="{{asset('/front')}}/images/home2/banner2.jpg"
                                                                alt="banner2"></a>

                            <a href="#" class="shop-now style2 hidden-mobile">Shop now<i class="fa fa-angle-right"
                                                                                         aria-hidden="true"></i></a>

                        </div>

                    </div>

                    <div class="col-sm-4 hidden-sm hidden-xs">

                        <div class="promotion-banner item-3 style-6">

                            <a href="#" class="banner-img"><img src="{{asset('/front')}}/images/home2/banner3.jpg"
                                                                alt="banner3"></a>

                            <a href="#" class="shop-now style2 ">Shop now<i class="fa fa-angle-right"
                                                                            aria-hidden="true"></i></a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <div class="block-recent-view">

            <div class="container">

                <div class="title-of-section">Sản phẩm mới</div>

                <div class="owl-carousel nav-style2 border-background equal-container" data-nav="true"
                     data-autoplay="false" data-dots="false" data-loop="true" data-margin="0"
                     data-responsive='{"0":{"items":1},"480":{"items":2},"600":{"items":3},"1000":{"items":5}}'>
                    @foreach($listNewProduct as $product)
                        <div class="product-item style1">

                            <div class="product-inner equal-elem">

                                <div class="product-thumb">
                                    <div class="thumb-inner">
                                        <a href="#"><img src="{{$product->image}}" alt="r1"></a>
                                    </div>
                                    @if($product->sale_price!=0)
                                        <span class="onsale">{{  ($product->price-$product->sale_price)/$product->price*100}}
                                            %</span>
                                    @endif
                                </div>

                                <div class="product-innfo">
                                    <div class="product-name"><a href="#">{{$product->name}}</a></div>
                                    @if($product->sale_price !=0)
                                        <span class="price">
                                        <ins>{{$product->sale_price}}</ins>
                                        <del>{{$product->price}}</del>
                                    </span>
                                    @else
                                        <span class="price price-dark">
                                              <ins>{{$product->price}}</ins>
                                        </span>
                                    @endif
                                    <div class="group-btn-hover">
                                        <div class="inner">
                                            <a href="#" class="add-to-cart">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>

            </div>

        </div>


        <div class="block-bestseller-and-deals full-width">

            <div class="container">

                <div class="block-bestseller-product style2">

                    <div class="title-of-section">Sản phẩm bán chạy</div>

                    <div class="bestseller-and-deals-content border-background equal-container">
                        @foreach($listFeaturedProducts as $productF)
                            <div class="product-item style1 col-md-4 col-sm-6 col-xs-6 padding-0 hidden-sm">

                            <div class="product-inner equal-elem">

                                <div class="product-thumb">

                                    <div class="thumb-inner">

                                        <a href="#"><img src="{{$productF->image}}" alt="b5"></a>

                                    </div>

                                    @if($product->sale_price!=0)
                                        <span class="onsale">{{  ($product->price-$product->sale_price)/$product->price*100}}
                                            %</span>
                                    @endif

                                </div>

                                <div class="product-innfo">

                                    <div class="product-name"><a href="#">{{$productF->name}}</a></div>

                                    @if($productF->sale_price !=0)
                                        <span class="price">
                                        <ins>{{$productF->sale_price}}</ins>
                                        <del>{{$productF->price}}</del>
                                    </span>
                                    @else
                                        <span class="price price-dark">
                                              <ins>{{$productF->price}}</ins>
                                        </span>
                                    @endif
                                    <div class="group-btn-hover">

                                        <div class="inner">

                                            <a href="#" class="compare"><i
                                                        class="flaticon-refresh-square-arrows"></i></a>

                                            <a href="#" class="add-to-cart">Add to cart</a>

                                            <a href="#" class="wishlist"><i class="fa fa-heart-o"
                                                                            aria-hidden="true"></i></a>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>
                        @endforeach
                    </div>

                </div>

                <div class="block-daily-deals style3">

                    <div class="title-of-section">Deals Of the week</div>

                    <div class="owl-carousel nav-style2" data-nav="true" data-autoplay="false" data-dots="true"
                         data-loop="true" data-margin="10"
                         data-responsive='{"0":{"items":1},"480":{"items":2},"680":{"items":3},"768":{"items":1}}'>

                        <div class="product-item style1">

                            <div class="product-inner">

                                <div class="product-thumb">

                                    <div class="thumb-inner">

                                        <a href="#"><img src="{{asset('/front')}}/images/home2/d1.jpg" alt="d1"></a>

                                    </div>


                                </div>

                                <div class="product-innfo">

                                    <div class="product-name"><a href="#">Parka with a hood Pandora Coat</a></div>

                                    <span class="price">

                                            <ins>$229.00</ins>

                                            <del>$259.00</del>

                                        </span>

                                    <span class="onsale">-50%</span>

                                </div>

                                <div class="product-count-down">

                                    <div class="title-count-down">Hurry up!<span>Deal ends in:</span></div>

                                    <div class="kt-countdown" data-y="2018" data-m="3" data-d="28" data-h="10"
                                         data-i="0"
                                         data-s="0"></div>

                                </div>

                            </div>

                        </div>

                        <div class="product-item style1">

                            <div class="product-inner">

                                <div class="product-thumb">

                                    <div class="thumb-inner">

                                        <a href="#"><img src="{{asset('/front')}}/images/home2/d1.jpg" alt="d1"></a>

                                    </div>


                                </div>

                                <div class="product-innfo">

                                    <div class="product-name"><a href="#">Parka with a hood Pandora Coat</a></div>

                                    <span class="price">

                                            <ins>$229.00</ins>

                                            <del>$259.00</del>

                                        </span>

                                    <span class="onsale">-50%</span>

                                    <span class="star-rating">

                                            <i class="fa fa-star" aria-hidden="true"></i>

                                            <i class="fa fa-star" aria-hidden="true"></i>

                                            <i class="fa fa-star" aria-hidden="true"></i>

                                            <i class="fa fa-star" aria-hidden="true"></i>

                                            <i class="fa fa-star" aria-hidden="true"></i>

                                            <span class="review">5 Review(s)</span>

                                        </span>

                                </div>

                                <div class="product-count-down">

                                    <div class="title-count-down">Hurry up!<span>Deal ends in:</span></div>

                                    <div class="kt-countdown" data-y="2017" data-m="8" data-d="1" data-h="10" data-i="0"
                                         data-s="0"></div>

                                </div>

                            </div>

                        </div>

                        <div class="product-item style1">

                            <div class="product-inner">

                                <div class="product-thumb">

                                    <div class="thumb-inner">

                                        <a href="#"><img src="{{asset('/front')}}/images/home2/d1.jpg" alt="d1"></a>

                                    </div>


                                </div>

                                <div class="product-innfo">

                                    <div class="product-name"><a href="#">Parka with a hood Pandora Coat</a></div>

                                    <span class="price">

                                            <ins>$229.00</ins>

                                            <del>$259.00</del>

                                        </span>

                                    <span class="onsale">-50%</span>

                                    <span class="star-rating">

                                            <i class="fa fa-star" aria-hidden="true"></i>

                                            <i class="fa fa-star" aria-hidden="true"></i>

                                            <i class="fa fa-star" aria-hidden="true"></i>

                                            <i class="fa fa-star" aria-hidden="true"></i>

                                            <i class="fa fa-star" aria-hidden="true"></i>

                                            <span class="review">5 Review(s)</span>

                                        </span>

                                </div>

                                <div class="product-count-down">

                                    <div class="title-count-down">Hurry up!<span>Deal ends in:</span></div>

                                    <div class="kt-countdown" data-y="2017" data-m="8" data-d="1" data-h="10" data-i="0"
                                         data-s="0"></div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <div class="block-promotion-banner">

            <div class="container">

                <div class="row">

                    <div class="col-sm-6 col-xs-6">

                        <div class="promotion-banner style-7">

                            <a href="#" class="banner-img"><img src="{{asset('/front')}}/images/home2/banner4.jpg"
                                                                alt="banner4"></a>

                        </div>

                    </div>

                    <div class="col-sm-6 col-xs-6">

                        <div class="promotion-banner style-7">

                            <a href="#" class="banner-img"><img src="{{asset('/front')}}/images/home2/banner5.jpg"
                                                                alt="banner5"></a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <div class="block-recent-view">

            <div class="container">

                <div class="title-of-section">Recently Viewed Products</div>

                <div class="owl-carousel nav-style2 border-background equal-container" data-nav="true"
                     data-autoplay="false" data-dots="false" data-loop="true" data-margin="0"
                     data-responsive='{"0":{"items":1},"480":{"items":2},"600":{"items":3},"1000":{"items":6}}'>

                    <div class="product-item style1">

                        <div class="product-inner equal-elem">

                            <div class="product-thumb">

                                <div class="thumb-inner">

                                    <a href="#"><img src="{{asset('/front')}}/images/home2/r1.jpg" alt="r1"></a>

                                </div>

                                <span class="onsale">-50%</span>


                            </div>

                            <div class="product-innfo">

                                <div class="product-name"><a href="#">Women Hats</a></div>

                                <span class="price">

                                        <ins>$229.00</ins>

                                        <del>$259.00</del>

                                    </span>

                                <span class="star-rating">

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <span class="review">5 Review(s)</span>

                                    </span>

                                <div class="group-btn-hover style2">

                                    <a href="#" class="add-to-cart"><i class="fa fa-shopping-bag"
                                                                       aria-hidden="true"></i></a>

                                    <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                                    <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="product-item style1">

                        <div class="product-inner equal-elem">

                            <div class="product-thumb">

                                <div class="thumb-inner">

                                    <a href="#"><img src="{{asset('/front')}}/images/home2/r2.jpg" alt="r2"></a>

                                </div>


                            </div>

                            <div class="product-innfo">

                                <div class="product-name"><a href="#">Basketball Sports Shoes</a></div>

                                <span class="price price-dark">

                                        <ins>$229.00</ins>

                                    </span>

                                <span class="star-rating">

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <span class="review">5 Review(s)</span>

                                    </span>

                                <div class="group-btn-hover style2">

                                    <a href="#" class="add-to-cart"><i class="fa fa-shopping-bag"
                                                                       aria-hidden="true"></i></a>

                                    <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                                    <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="product-item style1">

                        <div class="product-inner equal-elem">

                            <div class="product-thumb">

                                <div class="thumb-inner">

                                    <a href="#"><img src="{{asset('/front')}}/images/home2/r3.jpg" alt="r3"></a>

                                </div>

                                <span class="onnew">new</span>


                            </div>

                            <div class="product-innfo">

                                <div class="product-name"><a href="#">Dark Green Prada Sneakers</a></div>

                                <span class="price price-dark">

                                        <ins>$229.00</ins>

                                    </span>

                                <span class="star-rating">

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <span class="review">5 Review(s)</span>

                                    </span>

                                <div class="group-btn-hover style2">

                                    <a href="#" class="add-to-cart"><i class="fa fa-shopping-bag"
                                                                       aria-hidden="true"></i></a>

                                    <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                                    <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="product-item style1">

                        <div class="product-inner equal-elem">

                            <div class="product-thumb">

                                <div class="thumb-inner">

                                    <a href="#"><img src="{{asset('/front')}}/images/home2/r4.jpg" alt="r4"></a>

                                </div>


                            </div>

                            <div class="product-innfo">

                                <div class="product-name"><a href="#">Clutches in Men's Bags for Men</a></div>

                                <span class="price price-dark">

                                        <ins>$229.00</ins>

                                    </span>

                                <div class="group-btn-hover style2">

                                    <a href="#" class="add-to-cart"><i class="fa fa-shopping-bag"
                                                                       aria-hidden="true"></i></a>

                                    <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                                    <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="product-item style1">

                        <div class="product-inner equal-elem">

                            <div class="product-thumb">

                                <div class="thumb-inner">

                                    <a href="#"><img src="{{asset('/front')}}/images/home2/r5.jpg" alt="r5"></a>

                                </div>

                                <span class="onsale">-50%</span>


                            </div>

                            <div class="product-innfo">

                                <div class="product-name"><a href="#">Parka With a Hood</a></div>

                                <span class="price">

                                        <ins>$229.00</ins>

                                        <del>$259.00</del>

                                    </span>

                                <span class="star-rating">

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <span class="review">5 Review(s)</span>

                                    </span>

                                <div class="group-btn-hover style2">

                                    <a href="#" class="add-to-cart"><i class="fa fa-shopping-bag"
                                                                       aria-hidden="true"></i></a>

                                    <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                                    <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="product-item style1">

                        <div class="product-inner equal-elem">

                            <div class="product-thumb">

                                <div class="thumb-inner">

                                    <a href="#"><img src="{{asset('/front')}}/images/home2/r6.jpg" alt="r6"></a>

                                </div>


                            </div>

                            <div class="product-innfo">

                                <div class="product-name"><a href="#">Smartphone MTK6737 Quad Core.</a></div>

                                <span class="price price-dark">

                                        <ins>$229.00</ins>

                                    </span>

                                <div class="group-btn-hover style2">

                                    <a href="#" class="add-to-cart"><i class="fa fa-shopping-bag"
                                                                       aria-hidden="true"></i></a>

                                    <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                                    <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>


        <div class="block-section-brand">
            <div class="container">
                <div class="section-brand style1">
                    <div class="owl-carousel nav-style3" data-nav="true" data-autoplay="false" data-dots="false"
                         data-loop="true" data-margin="2"
                         data-responsive='{"0":{"items":1},"480":{"items":2},"600":{"items":4},"1000":{"items":6}}'>
                        <a href="#" class="item-brand"><img src="{{asset('/front')}}/images/home1/brand1.jpg"
                                                            alt="brand1"></a>
                        <a href="#" class="item-brand"><img src="{{asset('/front')}}/images/home1/brand1.jpg"
                                                            alt="brand1"></a>
                        <a href="#" class="item-brand"><img src="{{asset('/front')}}/images/home1/brand1.jpg"
                                                            alt="brand1"></a>
                        <a href="#" class="item-brand"><img src="{{asset('/front')}}/images/home1/brand1.jpg"
                                                            alt="brand1"></a>
                        <a href="#" class="item-brand"><img src="{{asset('/front')}}/images/home1/brand1.jpg"
                                                            alt="brand1"></a>
                        <a href="#" class="item-brand"><img src="{{asset('/front')}}/images/home1/brand1.jpg"
                                                            alt="brand1"></a>
                    </div>
                </div>
            </div>
        </div>

    </main><!-- end MAIN -->


@stop