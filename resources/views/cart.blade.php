<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Giỏ Hàng</title>

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
        .cart-pic img {
            width: 100px;
        }
    </style>
</head>

<body>



    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="/"><i class="fa fa-home"></i> Trang chủ</a>
                        <span>Giỏ hàng</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12" id="list-cart">
                    <div class="cart-table">
                        <table>
                            <thead>
                                <tr>
                                    <th>Hình ảnh</th>
                                    <th class="p-name">Tên sản phẩm</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Tổng tiền</th>
                                    <th>Thay đổi</th>
                                    <th>Xóa </th>
                                </tr>
                            </thead>
                            <tbody>
                                @if(Session:: has("Cart") != null)
                                @foreach(Session::get('Cart')->products as $item)
                                <tr>
                                    <td class="cart-pic first-row"><img src="{{$item['productInfo']->image}}" alt=""></td>
                                    <td class="cart-title first-row">
                                        <h5>{{$item['productInfo']->name}}</h5>
                                    </td>
                                    <td class="p-price first-row">{{number_format($item['productInfo']->price)}}₫</td>
                                    <td class="qua-col first-row">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input id="quanty-item-{{ $item['productInfo']->id }}" type="text" value="{{($item['quanty'])}}">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="total-price first-row">{{number_format($item['price'])}}₫</td>
                                    <td class="close-td first-row"><i class=" ti-save" id="save" data-id="{{$item['productInfo']->id}}"></i></td>
                                    <td class="close-td first-row"><i class="ti-close" id="delete" data-id="{{ $item['productInfo']->id }}"></i></td>

                                </tr>
                                @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 offset-lg-8">
                            <div class="proceed-checkout">
                                @if(Session:: has("Cart") !=null)
                                <ul>
                                    <li class="subtotal">Tổng số lượng<span>{{Session::get('Cart')->totalQuanty}}</span></li>
                                    <li class="cart-total">Tổng tiền <span>{{number_format(Session::get('Cart')->totalPrice)}}₫</span></li>
                                    
                                    <a href="/Order" class="proceed-btn">Xác nhận đơn hàng</a>
                                </ul>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shopping Cart Section End -->

    <!-- Footer Section Begin -->

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
        $("i[id='delete']").on("click", function() {
            $.ajax({
                url: '/Delete-Item-List-Cart/' + $(this).data("id"),
                type: 'GET',
            }).done(function(response) {
                //RenderListCart(response);
                location.reload();
                alertify.success('Đả xóa sản phẩm thành công');
            });
        });

        $("i[id='save']").on("click", function() {
            console.log($(this).data("id") + '/' + $("#quanty-item-" + $(this).data("id")).val())
            $.ajax({
                url: '/Save-Item-List-Cart/' + $(this).data("id") + '/' + $("#quanty-item-" + $(this).data("id")).val(),
                type: 'GET',
            }).done(function(response) {
                //RenderListCart(response);
                location.reload();
                alertify.success('Cập nhật thành công');
            });
        });

        function RenderListCart(response) {
            $("#list-cart").empty();
            $("#list-cart").html(response);
        }
    </script>
</body>

</html>