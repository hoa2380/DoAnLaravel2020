@extends('layouts.master')
<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>Order</title>

  <!-- Scripts -->
  <script src="{{ asset('js/app.js') }}" defer></script>

  <!-- Fonts -->
  <link rel="dns-prefetch" href="//fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

  <!-- Styles -->
  <link href="{{ asset('css/app.css') }}" rel="stylesheet">
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
  <link rel="stylesheet" href="css/order.css" type="text/css">
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
      body {
        font-family: 'Varela Round', sans-serif;
      }

      .modal-confirm {
        color: #636363;
        width: 325px;
        font-size: 14px;
      }

      .modal-confirm .modal-content {
        padding: 20px;
        border-radius: 5px;
        border: none;
      }

      .modal-confirm .modal-header {
        border-bottom: none;
        position: relative;
      }

      .modal-confirm h4 {
        text-align: center;
        font-size: 26px;
        margin: 30px 0 -15px;
      }

      .modal-confirm .form-control,
      .modal-confirm .btn {
        min-height: 40px;
        border-radius: 3px;
      }

      .modal-confirm .close {
        position: absolute;
        top: -5px;
        right: -5px;
      }

      .modal-confirm .modal-footer {
        border: none;
        text-align: center;
        border-radius: 5px;
        font-size: 13px;
      }

      .modal-confirm .icon-box {
        color: #fff;
        position: absolute;
        margin: 0 auto;
        left: 0;
        right: 0;
        top: -70px;
        width: 95px;
        height: 95px;
        border-radius: 50%;
        z-index: 9;
        background: #82ce34;
        padding: 15px;
        text-align: center;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
      }

      .modal-confirm .icon-box i {
        font-size: 58px;
        position: relative;
        top: 3px;
      }

      .modal-confirm.modal-dialog {
        margin-top: 80px;
      }

      .modal-confirm .btn {
        color: #fff;
        border-radius: 4px;
        background: #82ce34;
        text-decoration: none;
        transition: all 0.4s;
        line-height: normal;
        border: none;
      }

      .modal-confirm .btn:hover,
      .modal-confirm .btn:focus {
        background: #6fb32b;
        outline: none;
      }

      .trigger-btn {
        display: inline-block;
        margin: 100px auto;
      }
    </style>
  </head>

<body>
  <style>
    #change-item-cart table tbody tr td img {
      width: 100px;
    }

    ;
  </style>
  </head>

  <body>
    <div class="header-top">
      <div class="container">
        <div class="ht-left">
          <div class="logo" style="margin-top: 10px;">
            <a href="/">
              <img src="assets/img/logo.png" alt="">
            </a>
          </div>
        </div>
      </div>
    </div>
    <section class="order-form my-4 mx-4">
      <div class="container pt-4">

        <div class="row">
          <div class="col-12">
            <h1>Mời bạn điền thông tin để đặt hàng</h1>
            <hr class="mt-1">
          </div>
          <div class="col-12">

            <div class="row mx-4">
              <div class="col-12 mb-2">
                <label class="order-form-label">Họ và tên</label>
              </div>
              <div class="col-12 col-sm-6">
                <input class="order-form-input" placeholder="Tên">
              </div>
              <div class="col-12 col-sm-6 mt-2 mt-sm-0">
                <input class="order-form-input" placeholder="Họ">
              </div>
            </div>

            <div class="row mt-3 mx-4">
              <div class="col-12">
                <label class="order-form-label">Số điện thoại</label>
              </div>
              <div class="col-12">
                <input class="order-form-input" placeholder=" ">
              </div>
            </div>
            <div class="row mt-3 mx-4">
              <div class="col-12">
                <label class="order-form-label">Email</label>
              </div>
              <div class="col-12">
                <input class="order-form-input" placeholder=" ">
              </div>
            </div>
            <div class="row mt-3 mx-4">
              <div class="col-12">
                <label class="order-form-label" for="date-picker-example">Ngày Sinh</label>
              </div>
              <div class="col-12">
                <input class="order-form-input datepicker" placeholder=" " type="text" id="date-picker-example">
              </div>
            </div>

            <div class="row mt-3 mx-4">
              <div class="col-12">
                <label class="order-form-label">Địa chỉ</label>
              </div>
              <div class="col-12">
                <input class="order-form-input" placeholder="">
              </div>
            </div>
            <div class="row mt-3">
              <div class="col-12">
                <a>
                  <button data-target="#myModal" data-toggle="modal" type="button" id="btnSubmit" class="btn btn-dark d-block mx-auto btn-submit">Xác Nhận</button>
                </a>

              </div>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- Modal HTML -->
    <div id="myModal" class="modal fade">
      <div class="modal-dialog modal-confirm">
        <div class="modal-content">
          <div class="modal-header">
            <div class="icon-box">
              <i class="material-icons">&#xE876;</i>
            </div>
            <h4 class="modal-title w-100">Thành Công</h4>
          </div>
          <div class="modal-body">
            <p class="text-center">Cảm ơn bạn đả ủng hộ cửa hàng của chúng tôi.</p>
          </div>
          <div class="modal-footer">
            <button class="btn btn-success btn-block" data-dismiss="modal">OK</button>
          </div>
        </div>
      </div>
    </div>
    <main class="py-4">
      @yield('content')
    </main>
  </body>

</html>