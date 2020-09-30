
@extends('layouts.app')
@section('title', 'Категории мебели') 
@section('content')

<div class="mebelContainer" >
                
    <h2 class="h2">{{$title}}</h2>
        <div class="container">
                <div class="container">
                    <div class="row justify-content-md-center">
                        @foreach ($categories as $category)
                            <div class="col-md-5 col-sm-5 col-xs-10 flexbox">
                                <div class="border">
                                    <a href="/category/{{$category->slug}}">
                                        <img src="{{$category->img}}" alt="" class="img-fluid">
                                        <p class="name_category ">{{$category->name}} ({{$category->products->count()}})</p>
                                    </a>
                                </div>
                            </div>   
                        @endforeach
                    </div>
                </div>
                <br>



              

        </div>
 </div>



 



@endsection