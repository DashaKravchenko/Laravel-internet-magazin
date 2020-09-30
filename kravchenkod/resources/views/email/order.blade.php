<h1>Новый заказ #{{$order->id}}</h1>
Пользователь {{$order->user->name}} <br>
Общая сумма {{$order->total_sum}}

<hr>

<h2>Выбраный товар</h2>
    

        <table class="table">
            <thead>
                <tr>
                    <th>Фото</th>
                    <th>Имя</th>
                    <th>Цена</th>
                    <th>Количество</th>
                    <th>Сумма</th>
                    
                </tr>
            </thead>
            <tbody>
        @foreach (session('cart') as $product)
                <tr>
                    <td><img src="{env('APP_URL')}/{{$product['img']}}" alt="" style="width: 70px"> </td>
                    <td>{{$product['name']}}</td>
                    <td>{{$product['price']}}</td>
                    <td>{{$product['qty']}}</td>
                    <td>{{$product['price'] * $product['qty']}}</td>
                </tr>
        @endforeach
            </tbody>
        </table>
