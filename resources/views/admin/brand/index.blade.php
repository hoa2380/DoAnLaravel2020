@extends('layouts.admin')

@section('content')
<div>
    <div class="row">
        <div class="col-lg-6">
            <br>
            <h2 style="color: Red">Danh Sách Thương Hiệu</h2>
            <h4 style="margin-top:30px">{{$brandsData->count()}} Thương Hiệu</h4>
        </div>

        <!-- add modal -->
        <div class="col-lg-6 right">
            <div style="margin-top:20px">
                <button type="btn" class="btn btn-secondary btn-lg" data-toggle="modal" data-target="#addModal">
                    <i class="fa fa-plus"></i> Thêm Thương Hiệu
                </button>
            </div>

            <!-- add modal -->
            @include('admin.brand.partials.add_modal')
        </div>
    </div>

    <br>
    @include('common.errors')

    <!-- table -->
    <table class="table table-hover">
        <thead>
            <tr class="bg-info">
                <th>ID</th>
                <th>Tên thương hiệu</th>
                <th>Ngày Thêm</th>
                <th>Ngày Sửa</th>
                <th style="width: 10%; text-align:end">Thao Tác</th>
            </tr>
        </thead>
        <tbody>
            @foreach($brandsData as $brandsData)
            <tr>
                <td>{{$brandsData->id}}</td>
                <td>{{$brandsData->name}}</td>
                <td>{{$brandsData->created_at}}</td>
                <td>{{$brandsData->updated_at}}</td>
                <td>
                    <div class="row action-button">
                        <!-- edit button -->
                        <div class="action-edit">
                            <button type="submit" class="btn btn-outline-info edit" data-toggle="modal" data-target="#editBrandModal{{$brandsData->id}}">
                                <i class="fa fa-btn fa-edit"></i> Edit
                            </button>

                            <!-- edit modal -->
                            @include('admin.brand.partials.edit_modal')
                        </div>

                        <!-- delete button -->
                        <div class="action-delete">
                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#delModal{{$brandsData->id}}">
                                <i class="fa fa-btn fa-trash"></i> Delete
                            </button>

                            <!-- del modal -->
                            @include('admin.brand.partials.del_modal')
                        </div>
                    </div>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection