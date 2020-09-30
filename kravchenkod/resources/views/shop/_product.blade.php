

<div class="card bg-light product" >
	@if($product->recommended)
		<div class="recommended card-header h5" style="font-weight: bold; ">Рекомендуем</div>
	@endif
   <div class="card-body" >

   <div><strong> Категория:</strong> {{$product->category->name ?? '-'}}</div>

    <a class="card-hover" href="/product/{{$product->slug}}">
        <img src="{{$product->img}}" alt="{{$product->img}}" class="img-fluid">
         <h4 class="card-title"> {{$product->name}}</h4>
      </a>  
        <div class="border-top">
         <strong style="color: black">Цена: </strong><p class="price">{{$product->price}} грн</p>
        </div>
            <form action="/" class="add-to-cart">
               @csrf
                <input type="number" name="qty" style="width:50px; margin-top:10px;margin-right:7px;" value="1">
                <input type="hidden" name="product_id" value="{{$product->id}}">
               <button class="btn btn-primary">Купить</button>
              </form>
     
  </div>
<br>


</div>