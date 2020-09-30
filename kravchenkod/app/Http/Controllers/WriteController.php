<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use App\Category;

use App\LetterItems;

class WriteController extends Controller
{

public function write(){
  return view('shop.write');
}

   public function letter(Request $request){

        $item= new LetterItems();
        $item->name = $request->name;
        $item->email = $request->email;
        $item->tel = $request->tel;
        $item->text = $request->text;
        $item->save();
    
      Mail::send('email.letter', compact('request'), function($m){
          $m->to('dasha0445@gmail.com');
      });

     
      return 'ok';
   }



}
