<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fashi Store</title>
    <link rel="icon" href="assets/img/iconlogo.png" type="image/icon type">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="assets/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="assets/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/style.css" type="text/css">
    <style>
        #change-item-cart table tbody tr td img {
            width: 100px;
        }

        ;
    </style>
</head>

<body>


    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="header-top">
            <div class="container">
                <div class="ht-left">
                    <div class="mail-service">
                        <i class=" fa fa-envelope"></i>
                        hoagamer2k@gmail.com
                    </div>
                    <div class="phone-service">
                        <i class=" fa fa-phone"></i>
                        +84 354267587
                    </div>
                </div>
                <div class="ht-right">
                    @if (Auth::user())
                    <a class="login-panel" href="{{url('http://127.0.0.1:8000/admin/products')}}"><i class="fa fa-tasks"></i>AdminPanel</a>
                    <a class="login-panel" href="{{url('logout')}}"><i class="fa fa-sign-out"></i>Đăng Xuất</a>
                    <a class="login-panel"><i class="fa fa-user"></i> Hello {{Auth::user()->name}} </a>
                    @else
                    <a href="{{ url('signup') }}" class="login-panel"><i class="fa fa-user"></i>Đăng kí</a>
                    <a href="{{ url('login') }}" class="login-panel"><i class="fa fa-user"></i>Đăng Nhập</a>
                    @endif
                    <div class="top-social">
                        <a href="#"><i class="ti-facebook"></i></a>
                        <a href="#"><i class="ti-twitter-alt"></i></a>
                        <a href="#"><i class="ti-linkedin"></i></a>
                        <a href="#"><i class="ti-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="inner-header">
                <div class="row">
                    <div class="col-lg-2 col-md-2">
                        <div class="logo">
                            <a href="/">
                                <img src="assets/img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-7">
                        <div class="advanced-search">
                            <button type="button" class="category-btn"></button>
                            <form action="#" class="input-group">
                                <input type="text" placeholder="Tìm kiếm">
                                <button type="button"><i class="ti-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3 text-right col-md-3">
                        <ul class="nav-right">

                            <li class="cart-icon"><a href="/Cart">
                                    <i class="icon_bag_alt"></i>
                                    @if(Session:: has("Cart") != null)
                                    <span id="total-quanty-show">{{Session::get("Cart")->totalQuanty}}</span>
                                    @else
                                    <span id="total-quanty-show">0</span>
                                    @endif

                                </a>
                                <div class="cart-hover">
                                    <div id="change-item-cart">
                                        @if(Session:: has("Cart") != null)
                                        <div class="select-items">
                                            <table>
                                                <tbody>
                                                    @foreach(Session::get('Cart')->products as $item)
                                                    <tr>
                                                        <td class="si-pic"><img src="{{$item['productInfo']->image}}" alt=""></td>
                                                        <td class="si-text">
                                                            <div class="product-selected">
                                                                <p>{{number_format($item['productInfo']->price)}}₫ x {{$item['quanty']}}</p>
                                                                <h6>{{$item['productInfo']->name}}</h6>
                                                            </div>
                                                        </td>
                                                        <td class="si-close">
                                                            <i class="ti-close" data-id="{{$item['productInfo']->id}}"></i>
                                                        </td>
                                                    </tr>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="select-total">
                                            <span>total:</span>
                                            <h5>{{number_format(Session::get('Cart')->totalPrice)}}₫</h5>
                                        </div>
                                        @endif
                                    </div>


                                    <div class="select-button">
                                        <a href="{{ url('Cart') }}" class="primary-btn view-card">Xem giỏ hàng</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="nav-item">
            <div class="container">
                <div class="nav-depart">
                    <div class="depart-btn">
                        <i class="ti-menu"></i>
                        <span>Danh mục sản phẩm</span>
                        <ul class="depart-hover">
                            @foreach($categories as $category)
                            <li><a href="{{ url ('category/'.$category->id)}}">{{ $category->name }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> Trang chủ</a>
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Product Shop Section Begin -->
    <section class="product-shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 order-1 order-lg-2">
                    <div class="product-list">
                        <div class="row">
                            @for ( $i = 0; $i < 9; $i++) <div class="col-lg-4 col-sm-6">
                                <div class="product-item">
                                    <div class="pi-pic">
                                        <img src="{{$products[$i]->image}}" alt="">
                                        <div class="sale pp-sale">Sale</div>
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <!-- <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li> -->
                                            <li class="quick-view"><a onclick="AddCart('{{$products[$i]->id}}')" href="javascript:">+ Add Cart</a></li>
                                            <!-- <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li> -->
                                        </ul>
                                    </div>
                                    <div class="pi-text">

                                        <a href="#">
                                            <h5>{{$products[$i]->name}}</h5>
                                        </a>
                                        <div class="product-price">
                                            {{number_format($products[$i]->price)}}₫
                                        </div>
                                    </div>
                                </div>
                        </div>
                        @endfor

                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>
    </section>
    <!-- Product Shop Section End -->


    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left">
                        <div class="footer-logo">
                            <a href="#"><img src="assets/img/footer-logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Địa chỉ: Huế - Việt Nam</li>
                            <li>Điện thoại: +84 354267587</li>
                            <li>Email: hoagamer2k@gmail.com</li>
                        </ul>
                        <div class="footer-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1">
                    <div class="footer-widget">
                        <h5>Về chúng tôi</h5>
                        <ul>
                            <li><a href="#">Giới thiệu về Fashi Store</a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                            <li><a href="#">Cam kết hàng chính hãng</a></li>
                            <li><a href="#">Chính sách đổi trả</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="footer-widget">
                        <h5>Tài khoản của tôi</h5>
                        <ul>
                            <li><a href="#">Tài khoản của tôi</a></li>
                            <li><a href="#">Liên hệ</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="newslatter-item">
                        <h5>Nhập điện thoại để được tư vấn nhanh từ Fashi Store.</h5>
                        <form action="#" class="subscribe-form">
                            <input type="text" placeholder="Số điện thoại">
                            <button type="button">Tư vấn</button>
                        </form>
                        <h5 class="footer-download-text">Tải ứng dụng trên điện thoại</h5>
                        <div class="footer-about-download-content-app">
                          <a href="#">
                                 <img src="assets/img/app-store.png" alt="" class="footer-about-download-content-img">
                            </a>
                            <a href="#">
                                 <img src="assets/img/google-play.png" alt="" class="footer-about-download-content-img">
                            </a>
                        </div>
        
                        
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery-ui.min.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/jquery.zoom.min.js"></script>
    <script src="assets/js/jquery.dd.min.js"></script>
    <script src="assets/js/jquery.slicknav.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/main.js"></script>
    <!-- JavaScript -->
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

    <!-- CSS -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
    <!-- Default theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />
    <!-- Semantic UI theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css" />
    <!-- Bootstrap theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css" />
    <!-- Javascript -->
    <script>
        function AddCart(id) {
            $.ajax({
                url: 'Add-Cart/' + id,
                type: 'GET',
            }).done(function(response) {
                RenderCart(response);
                alertify.success('Đả thêm mới sản phẩm');
            });
        }

        $("#change-item-cart").on("click", ".si-close i", function() {
            $.ajax({
                url: 'Delete-Item-Cart/' + $(this).data("id"),
                type: 'GET',
            }).done(function(response) {
                RenderCart(response);
                alertify.success('Đả xóa sản phẩm thành công');
            });

        });

        function RenderCart(response) {
            $("#change-item-cart").empty();
            $("#change-item-cart").html(response);
            $("#total-quanty-show").text($("#total-quanty-cart").val());
        }
    </script>
</body>

</html>