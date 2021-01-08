@extends('layouts.admin')

@section('content')
<div>
    <div class="row">
        <div class="col-lg-6">
            <br>
            <h2 style="color: Red">Danh Sách Người Dùng</h2>
            <h4 style="margin-top:30px">{{$usersData->count()}} Người Dùng</h4>
        </div>
    </div>

    <br>
    @include('common.errors')

    <!-- table -->
    <table class="table table-hover">
        <thead>
            <tr class="bg-info">
                <th>ID</th>
                <th>Tên Người Dùng</th>
                <th>Email</th>
                <th>Ngày thêm</th>
                <th>Ngày sửa</th>
                <th style="width: 10%;text-align:end">Thao Tác</th>
            </tr>
        </thead>
        <tbody>
            @foreach($usersData as $usersData)
            <tr>
                <td>{{$usersData->id}}</td>
                <td>{{$usersData->name}}</td>
                <td>{{$usersData->email}}</td>
                <td>{{$usersData->created_at}}</td>
                <td>{{$usersData->updated_at}}</td>
                <td>
                        <!-- delete button -->
                        <div class="action-delete">
                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#delModal{{$usersData->id}}">
                                <i class="fa fa-btn fa-trash"></i> Delete
                            </button>
                            <!-- del Modal !-->
                            @include('admin.users.partials.del_modal')
                        </div>
                        
                    </div>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection