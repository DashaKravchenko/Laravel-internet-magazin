@extends('layouts.app')
@section('title', 'Оформление заказа') 

@section('content')
    <div class=" containerCheckout">
        <h1 style="text-align: center" >Заказ</h1>
        <div class="container">
            @include('.shop._cart')

        @guest
            <p style="font-size: 16px">
                    <a href="{{ route('login') }}">Войти</a> 
                или <a href="{{ route('register') }}">Зарегистрироваться</a>
            </p>
        @else
            @if( session('cart') )
            <a href="/end-checkout" class="btn btn-primary">Завершить оформление заказа</a>  
            @endif
        @endguest

        </div>
    </div>
@endsection