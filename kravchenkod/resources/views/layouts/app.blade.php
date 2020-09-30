<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="..//favicon.png" type="image/png">
    
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title> @yield('title')  </title>

    
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
</head>
<body>

    <header>
        <div class="tel">
        
            <button type="button" class="btn cart" data-toggle="modal" data-target="#exampleModal">
            <img src="https://img.icons8.com/wired/64/000000/shopping-cart-loaded.png"/> 
            <?php if(session('cart')){ ?>
                <span class="count">{{array_sum(array_column(session('cart'), 'qty'))}}</span>
            <?php }  
           else{ ?>
                <span class="count" style=" width: 10px;"></span>
           <?php } ?>
            </button>
        </div>
        <div class="tel">
            <a href="tel:380974837125"> <p class="kievstar"><img src="..//images/kievstar.png" style="width:25px;"   alt="">+380974837125</a></p>
            <a href="tel:+380663451846"><p class="vodafon"> <img src="..//images/vodafon.png" style="width:25px"   alt="">+380663451846</a></p>
        </div>
        
    </header>  



    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container nav-menu2" >
                <a href="{{ url('/') }}" class="navbar-brand {{ Request::is('/') ? 'activeI' : '' }}" >
                   <img src="..//images/sofa.jpg" alt="" style="width:120px;">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto ">
                        <div class ="navbar glob-menu">
                            <li class="nav-item ">
                                <a href="/mebel" class="nav-link mebel {{ Request::is('mebel') ? 'activeM' : '' }}" ></a>
                            </li>

                            <li class="nav-item">
                                <a href="/delivery" class="nav-link delivery {{ Request::is('delivery') ? 'activeD' : '' }}"  >
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link address {{ Request::is('address') ? 'activeA' : '' }}" href="/address" >
                                  
                                </a>
                            </li>
                        </div>
                          
                    </ul>




                   
                   
                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto ">
                        <!-- Authentication Links -->
                        
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Войти ') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Зарегистрироваться') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item logout" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Выйти') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>

    

    @if(!Request::is('write') ) 
    <div class="write">
            <button class="btn">
                <a href="/write" > <img src="..//images/write.png" alt="letter"> </a> 
            </button>
        </div>
    @endif


        
    
    
  

<footer>
    <div>
        <p class="m-0">г. Запорожье Автострадная, 109    </p>
    </div>
    <div class="col-5 cl " >
        <a href="https://www.instagram.com/crystal.mebel/" target="_blank"><img src="https://img.icons8.com/fluent/65/000000/instagram-new.png"/></a>
        <a href="https://telegram.me/Kravchenko5609" target="_blank"><img src="https://img.icons8.com/color/65/000000/telegram-app.png"/></a>
        <a href="viber://mobile?number=+380668856790"><img src="https://img.icons8.com/color/65/000000/viber.png"/></a>
    </div>
    <div class="col-5 cl" >
        <p>График работы <br>
        Ежедневно с 9:00 до 18:00</p>

    </div>
    
</footer>












<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Корзина</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        @include ('shop._cart')
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
         <a href="/checkout" class="btn btn-primary">Оформить заказ</a>
        <button type="button" class="btn btn-primary clear-cart">Очистить корзину</button>
      </div>
    </div>
  </div>
</div>







</body>
</html>
