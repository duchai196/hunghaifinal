@extends('admin.master')
@section('title','Thêm danh mục ')
@section('css')
    <link rel="stylesheet"
          href="admin_assets/vendors/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.css">

    <link rel="stylesheet" href="admin_assets/vendors/bower_components/select2/dist/css/select2.min.css">
@stop
@section('content')

    <header class="content__title">
        <h1>Dashboard</h1>
        <small>Welcome to the unique SuperAdmin web app experience!</small>

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

    <div class="row quick-stats">
        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info">
                    <h2>987,459</h2>
                    <small>Total Leads Recieved</small>
                </div>

                <div class="quick-stats__chart peity-bar">6,4,8,6,5,6,7,8,3,5,9</div>
            </div>
        </div>

        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info">
                    <h2>356,785K</h2>
                    <small>Total Website Clicks</small>
                </div>

                <div class="quick-stats__chart peity-bar">4,7,6,2,5,3,8,6,6,4,8</div>
            </div>
        </div>

        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info">
                    <h2>$58,778</h2>
                    <small>Total Sales Orders</small>
                </div>

                <div class="quick-stats__chart peity-bar">9,4,6,5,6,4,5,7,9,3,6</div>
            </div>
        </div>

        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info">
                    <h2>214</h2>
                    <small>Total Support Tickets</small>
                </div>

                <div class="quick-stats__chart peity-bar">5,6,3,9,7,5,4,6,5,6,4</div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Sales Statistics</h4>
                    <h6 class="card-subtitle">Vestibulum purus quam scelerisque, mollis nonummy metus</h6>

                    <div class="flot-chart flot-curved-line"></div>
                    <div class="flot-chart-legends flot-chart-legends--curved"></div>
                </div>
            </div>
        </div>

        <div class="col-lg-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Growth Rate</h4>
                    <h6 class="card-subtitle">Commodo luctus nisi erat porttitor ligula eget lacinia odio semnec</h6>

                    <div class="flot-chart flot-line"></div>
                    <div class="flot-chart-legends flot-chart-legends--line"></div>
                </div>
            </div>
        </div>
    </div>

    <div data-columns>
        <div class="card widget-past-days">
            <div class="card-body">
                <h4 class="card-title">For the past 30 days</h4>
                <h6 class="card-subtitle">Pellentesque ornare sem lacinia quam</h6>
            </div>

            <div class="flot-chart flot-chart--sm flot-past-days"></div>

            <div class="listview listview--bordered">
                <div class="listview__item">
                    <div class="widget-past-days__info">
                        <small>Page Views</small>
                        <h3>47,896,536</h3>
                    </div>

                    <div class="widget-past-days__chart hidden-sm">
                        <div class="peity-bar">6,9,5,6,3,7,5,4,6,5,6,4,2,5,8,2,6,9</div>
                    </div>
                </div>

                <div class="listview__item">
                    <div class="widget-past-days__info">
                        <small>Site Visitors</small>
                        <h3>24,456,799</h3>
                    </div>

                    <div class="widget-past-days__chart hidden-sm">
                        <div class="peity-bar">5,7,2,5,2,8,6,7,6,5,3,1,9,3,5,8,2,4</div>
                    </div>
                </div>

                <div class="listview__item">
                    <div class="widget-past-days__info">
                        <small>Total Clicks</small>
                        <h3>13,965</h3>
                    </div>

                    <div class="widget-past-days__chart hidden-sm">
                        <div class="peity-bar">5,7,2,5,2,8,6,7,6,5,3,1,9,3,5,8,2,4</div>
                    </div>
                </div>

                <div class="listview__item">
                    <div class="widget-past-days__info">
                        <small>Total Returns</small>
                        <h3>198</h3>
                    </div>

                    <div class="widget-past-days__chart hidden-sm">
                        <div class="peity-bar">3,9,1,3,5,6,7,6,8,2,5,2,7,5,6,7,6,8</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card widget-pie">
            <div class="col-6 col-sm-4 col-md-6 col-lg-4 widget-pie__item">
                <div class="easy-pie-chart" data-percent="50" data-size="80" data-track-color="rgba(0,0,0,0.5)"
                     data-bar-color="#fff">
                    <span class="easy-pie-chart__value">92</span>
                </div>
                <div class="widget-pie__title">Email<br> Scheduled</div>
            </div>

            <div class="col-6 col-sm-4 col-md-6 col-lg-4 widget-pie__item">
                <div class="easy-pie-chart" data-percent="11" data-size="80" data-track-color="rgba(0,0,0,0.35)"
                     data-bar-color="#fff">
                    <span class="easy-pie-chart__value">11</span>
                </div>
                <div class="widget-pie__title">Email<br> Bounced</div>
            </div>

            <div class="col-6 col-sm-4 col-md-6 col-lg-4 widget-pie__item">
                <div class="easy-pie-chart" data-percent="52" data-size="80" data-track-color="rgba(0,0,0,0.35)"
                     data-bar-color="#fff">
                    <span class="easy-pie-chart__value">52</span>
                </div>
                <div class="widget-pie__title">Email<br> Opened</div>
            </div>

            <div class="col-6 col-sm-4 col-md-6 col-lg-4 widget-pie__item">
                <div class="easy-pie-chart" data-percent="44" data-size="80" data-track-color="rgba(0,0,0,0.35)"
                     data-bar-color="#fff">
                    <span class="easy-pie-chart__value">44</span>
                </div>
                <div class="widget-pie__title">Storage<br>Remaining</div>
            </div>

            <div class="col-6 col-sm-4 col-md-6 col-lg-4 widget-pie__item">
                <div class="easy-pie-chart" data-percent="78" data-size="80" data-track-color="rgba(0,0,0,0.35)"
                     data-bar-color="#fff">
                    <span class="easy-pie-chart__value">78</span>
                </div>
                <div class="widget-pie__title">Web Page<br> Views</div>
            </div>

            <div class="col-6 col-sm-4 col-md-6 col-lg-4 widget-pie__item">
                <div class="easy-pie-chart" data-percent="32" data-size="80" data-track-color="rgba(0,0,0,0.35)"
                     data-bar-color="#fff">
                    <span class="easy-pie-chart__value">32</span>
                </div>
                <div class="widget-pie__title">Server<br> Processing</div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Server Process</h4>
                <h6 class="card-subtitle">Maecenas faucibus mollis interdum porttitor</h6>

                <div class="flot-chart flot-dynamic"></div>
                <div class="flot-chart-legends flot-chart-legends--dynamic"></div>
            </div>
        </div>
    </div>

@stop
@section('script')

    <script src="admin_assets/vendors/bower_components/trumbowyg/dist/trumbowyg.min.js"></script>
    <script src="admin_assets/vendors/bower_components/select2/dist/js/select2.full.min.js"></script>
    <script src="admin_assets/vendors/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="admin_assets/vendors/bower_components/popper.js/dist/umd/popper.min.js"></script>
    <script src="admin_assets/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="admin_assets/vendors/bower_components/remarkable-bootstrap-notify/dist/bootstrap-notify.min.js"></script>


    <script src="admin_assets/vendors/bower_components/salvattore/dist/salvattore.min.js"></script>
    <script src="admin_assets/vendors/bower_components/flot/jquery.flot.js"></script>
    <script src="admin_assets/vendors/bower_components/flot/jquery.flot.resize.js"></script>
    <script src="admin_assets/vendors/bower_components/jqvmap/dist/jquery.vmap.min.js"></script>
    <script src="admin_assets/vendors/bower_components/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="admin_assets/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
    <script src="admin_assets/vendors/bower_components/peity/jquery.peity.min.js"></script>

    <!-- Charts and maps-->
    <script src="admin_assets/demo/js/flot-charts/curved-line.js"></script>
    <script src="admin_assets/demo/js/flot-charts/line.js"></script>
    <script src="admin_assets/demo/js/flot-charts/dynamic.js"></script>
    <script src="admin_assets/demo/js/flot-charts/chart-tooltips.js"></script>
    <script src="admin_assets/demo/js/other-charts.js"></script>
    <script src="admin_assets/demo/js/jqvmap.js"></script>

    <script>
        $(document).ready(function () {
            $('input[type="radio"]').on('change', function () {
                var val = $(this).val();
                $.ajax({
                    url: '{{route('category.ajax')}}',
                    type: 'post',
                    dataType: 'text',
                    data: {value: val, action: "loadCate"}
                })
                    .done(function (data) {
                        $('#parentIdSelect').html(data);
                    })

            });
        })
    </script>
@stop