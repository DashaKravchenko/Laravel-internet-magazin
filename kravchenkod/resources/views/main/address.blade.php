

@extends('layouts.app')
@section('title', 'Адресс магазина | Как нас найти') 

@section('content')

<div class="addressContainer">
    <h1>{{$title}}</h1>
    
    <div class="d-flex">
        <div class="addressTxt">
            <p>г. Запорожье, ул. Автострадная 109</p> 
            <p> Частный сектор по трассе Харьков-Симферополь. </p>
            <p> К нам не ездит общественный транспорт, но мы с радостью доставим Вас в магазин 
            своим служебным транспортом от ближайших остановок улицы Восточной, что на Космосе
            или от улицы Молочной, что в р-не Шевченковского. Просто позвоните нам и предупредите 
            о своем визите, и мы в срок прибудем за Вами. </p>
        </div>
        <div class="addressKarta">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d669.9494504831406!2d35.2437718480755!3d47.80475518493269!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40dc5c23d0f79905%3A0xcddfd3ef2385ca10!2z0JDQstGC0L7RgdGC0YDQsNC00L3QsNGPINGD0LsuLCAxMDksINCX0LDQv9C-0YDQvtC20YzQtSwg0JfQsNC_0L7RgNC-0LbRgdC60LDRjyDQvtCx0LvQsNGB0YLRjCwgNjkwMDA!5e0!3m2!1sru!2sua!4v1599037821459!5m2!1sru!2sua" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div>
      
    </div>



</div>

    
@endsection
