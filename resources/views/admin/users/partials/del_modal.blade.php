 <!-- edit modal -->
 <div class="modal fade" id="delModal{{$usersData->id}}" role="dialog">
     <div class="modal-dialog">
         <!-- Modal content-->
         <div class="modal-content">
             <div class="modal-header">
                 <h4 class="modal-title">Xoá sản phẩm</h4>
                 <button type="button" class="close" data-dismiss="modal">&times;</button>
             </div>
             <div class="modal-body">
                 <form action="{{ route('users.destroy',$usersData->id) }}" class="action-form" method="POST">
                     {{ csrf_field() }}
                     {{ method_field('DELETE') }}

                     <p style="color: black">Bạn có chắc chắn muốn xoá {{$usersData->name}}?</p>

                     <!-- footer-->
                     <div class="modal-footer">
                         <button type="submit" class="btn btn-danger">
                             <i class="fa fa-btn fa-trash"></i> Delete
                         </button>
                         <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Close</button>
                     </div>
                 </form>
             </div>
         </div>

     </div>
 </div>