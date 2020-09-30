@extends('layouts.app')

@section('title',  "Напишите нам письмо" ) 


@section('content')



<div class=" containerLetter ">

   <div class="letter col-md-6 letr" >
   
   <form action="/" class=" mr-auto letter letter-form " novalidate>

   <h2 class="txtLetter">Форма обратной связи</h2>
   @csrf
      <div class="row">
         <div class="col">
            <div class="form-group ">
               <label for="name">Имя</label>
               <input type="name" name="name" id="name" class="form-control" @auth  value="{{ \Auth::user()->name}}"  @endauth placeholder="Введите имя" required>
               <div class="invalid-feedback">
                  Введите имя
               </div>
            </div>
            
         </div>

         <div class="col">
            <div class="form-group is-invalid">
               <label for="tel">Телефон</label>
               <input type="tel" name="tel" class="form-control" placeholder="Введите номер телефона" required>
               <div class="invalid-feedback">
                  Введите номер телефона
               </div>
            </div>
         </div>
      </div>

      <div class="form-group is-invalid">
            <label for="email">Email</label>
            <input type="Email" name="email" class="form-control" @auth  value="{{ \Auth::user()->email}}"  @endauth placeholder="Введите email" required>
            <div class="invalid-feedback">
                  Введите Email
            </div>
         </div>

      <div class="form-group">
         <textarea name="text" id="letter" class="form-control" cols="40" rows="7" placeholder="Напиши нам" required></textarea>
         <div class="invalid-feedback">
            Введите ваше смс
         </div>
      </div>

      <button type="submit" class="btn btn-secondary">Отправить</button>

   </form>

   </div>





      <div class="cmc " style="display:none">

         <div class="alert alert-success" role="alert">
            <h2>Ваше письмо отправлено</h2>
         </div>
            <p>Спасибо, что написали нам.<br> 
            В ближайшее время наш менеджер  с вами свяжется</p>

      </div>




  




 

      
</div>


@endsection

