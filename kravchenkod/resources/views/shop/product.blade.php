@extends('layouts.app')
@section('title', $product->name) 

@section('content')

<div>


<div class=" text-left ">

    <div class="card bg-light card-product" style="max-width:1200px; margin-left:5%;padding:8px 16px">
    <div class="txt-back"  style="margin-left:0" >
        <div class=" navbar-collapse cat-navbar" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto col-xs-5">
                              <div class ="navbar">
                                  <?php foreach($categories as $category){ ?>
                                        <li class="nav-item ">
                                          <a href="/category/{{$category->slug}}">
                                              <p class="name_category ">{{$category->name}} ({{$category->products->count()}})</p>
                                          </a>
                                        </li>
                                  <?php } ?>  
                              </div>
                        </ul>
          </div>
    </div> 
      <h2 class="text-center font-weight-bold mt-2">{{$product->name}}</h2>
        <div class="card-body " >
          <a href="{{$product->img}}"><img src="{{$product->img}}" alt="{{$product->img}}" target="_blank" class="img-fluid"></a>
            
               <div><strong>Категория: </strong>{{$product->category ? $product->category->name : "No category"}}</div>
               <div class="border-top">
               <div class="border-top">
                 <strong>Габариты: </strong>{{$product->dimensions}}
               </div>
                 <strong>Описание: </strong>{{$product->description}}
               </div>
              
               <div class="border-top price">
                 <strong>Цена: </strong>{{$product->price}} грн
               </div>

               <form action="/" class="add-to-cart">
               @csrf
                <input type="number" name="qty" style="width:50px; margin-top:10px;margin-right:10px;" value="1">
                <input type="hidden" name="product_id" value="{{$product->id}}">
               <button class="btn btn-primary">Купить</button>
              </form>
              
</div>

 </div>

@endsection