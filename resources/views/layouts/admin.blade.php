@extends('layouts.master')

<title>AdminPanel</title>

<body>
    <div class="container-fluid">
        <div class="row">
            <!-- left panel -->
            <div class="col-sm-2 sidenav" style="background-color:light-blue">
                <!-- user header -->
                <div class="list-group">
                    <a href="{{route('products.index')}}" class="list-group-item {{Route::currentRouteName() == 'products.index' ? 'active' : ''}}">Sản Phẩm</a>
                    <a href="{{route('brands.index')}}" class="list-group-item {{Route::currentRouteName() == 'brands.index' ? 'active' : ''}}">Thương Hiệu</a>
                    <a href="{{route('categories.index')}}" class="list-group-item {{Route::currentRouteName() == 'categories.index' ? 'active' : ''}}">Danh Mục</a>
                    <a href="{{route('users.index')}}" class="list-group-item {{Route::currentRouteName() == 'users.index' ? 'active' : ''}}">Người Dùng</a>
                    
                    <a href="/" class="list-group-item" style=" margin-top:320px"><i class="fa fa-arrow-left"></i> Trở về trang chủ</a>
                </div>
            </div>

            <!-- right panel -->
            <div class="col-sm-10" style="background-color:white;margin-left: 16.5%">
                @yield('content')
            </div>
        </div>
    </div>
</body>