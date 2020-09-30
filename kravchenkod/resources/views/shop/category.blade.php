@extends('layouts.app')

@section('title',  "Категория: ". $category->name . " диваны" ) 


@section('content')



<div class=" containerCategory">
 
   <div class="txt" >
                  <div class=" navbar-collapse cat-navbar" id="navbarSupportedContent">
                     <ul class="navbar-nav mr-auto  col-xs-5 ">
                           <div class ="navbar nav-menu nav-menu3">
                              <?php foreach($categories as $cat){ ?>
                                    <li class="nav-item col-auto {{ Request::is('category/'.$cat->slug) ? 'active' : '' }}">
                                       <a href="/category/{{$cat->slug}}" >
                                          <p class="name_category cat-menu">{{$cat->name}} ({{$cat->products->count()}})</p>
                                       </a>
                                    </li>
                              <?php } ?>
                                
                           </div>
                     </ul>
                  </div>

   </div> 

   <h2 class="contCategory">{{$category->name}} диваны</h2>

  
    <div style="">
        <div class="container">
            <div class="row row2">
               @foreach ($products as $product)
                  <div class="col-4 cartochka">
                     
                     @include('shop._product')
                  </div>   
               @endforeach
            </div>
         <!-- <div class="mt-5 d-flex justify-content-center">
       {{ $products->links()}}
      </div> -->
  



@endsection