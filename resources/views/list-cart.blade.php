<table>
    <thead>
        <tr>
            <th>Image</th>
            <th class="p-name">Product Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
            <th>Edit</th>
            <th>Delete</th>
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
                        <input type="text" value="{{($item['quanty'])}}">
                    </div>
                </div>
            </td>
            <td class="total-price first-row">{{number_format($item['price'])}}₫</td>
            <td class="close-td first-row"><i class=" ti-save"></i></td>
            <td class="close-td first-row"><i class="ti-close" id="delete" data-id="{{ $item['productInfo']->id }}"></i></td>

        </tr>
        @endforeach
        @endif
    </tbody>
</table>
<script>
    $("i[id='delete']").on("click", function() {
        $.ajax({
            url: '/Delete-Item-List-Cart/' + $(this).data("id"),
            type: 'GET',
        }).done(function(response) {
            RenderListCart(response);
            alertify.success('Đả xóa sản phẩm thành công');
        });
    })

    function RenderListCart(response) {
        $("#list-cart").empty();
        $("#list-cart").html(response);
        Location.reload();
    }
</script>