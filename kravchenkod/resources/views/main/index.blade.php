@extends('layouts.app')
@section('title', 'Мебельный магазин "Кристалл" | г.Запорожье') 

@section('content')

<div class="indexContainer" >
    <h1>{{$title}}</h1>
    <div class="col-lg-12 d-flex justify-content-center">
        <div class="col-lg-10 d-flex justify-content-center">
            <div  class="carousel slide center" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                    </ol>
                <div class="carousel-inner ">
                    <div class="carousel-item active ">
                        <img class="d-block " src="images/divan_kanzas.jpg" alt="Диван Канзас">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block " src="images/divan_aleks_2_1.jpg" alt="Диван Алекс">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block " src="images/takhta_marta.jpg" alt="Тахта Марта">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block " src="images/divan_aleks.jpg" alt="Диван Алекс">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block " src="images/Divan_monako.jpg" alt="Диван Монако">
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <div class="indexTxt">
    <p>Мебельный магазин «Кристалл» представляет Вашему вниманию широкий ассортимент мягкой и корпусной мебели. Магазин работает только с проверенными поставщиками с 1999 года, не экспериментируя с качеством и высоким сервисом обслуживания.<br> Ценовая политика нашего магазина позволяет за небольшие деньги закрыть потребность в покупке качественной и долговечной мебели. Сотни наших клиентов приводят к нам в магазин своих уже взрослых детей для покупки мебели в их новые дома. <br>
    Высокий сервис на нашем языке это быстрая доставка (по городу Запорожье – в день покупки), подробная консультация и индивидуальный подход в выборе мебели, возможность оплаты любым удобным для Вас способом, гарантия на изделия 12 месяцев, бесплатный занос и сборка мебели у Вас дома. 
    <br></p> 
    <p> Также, заказ мебели возможен <u>несколькими вариантами: </u><br>
    - приехав к нам в магазин по адресу, ул. Автострадная 109;<br>
    - позвонив по номеру, +38096 055 16 17 или +38050 608 63 93;<br>
    - создать онлайн заказ на нашем сайте;<br> </p>
    <p>Не беспокойтесь о качестве мебели, купленной в нашем магазине <br> Прочность и выносливость наших изделий проверенна не одной сотней покупателей.</p><br>
    <p><strong>   Удачных покупок! </strong> </p>
    </div>


    <h2 style="text-align: center;font-weight: bold;margin-right: 10px">Рекомендуемые товары</h2>
                <div class="container">
                    <div class="row ">
                        @foreach ($products as $product)
                            <div class="col-4 mb-2">
                                @include('shop._product')
                            </div>   
                        @endforeach
                    </div>
                </div>





</div>




    
@endsection








