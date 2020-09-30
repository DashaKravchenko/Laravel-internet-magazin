<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Category;

class MainController extends Controller
{
    public function index(){
      
      $products = Product::with('category')->where('recommended', '=', 1)->get();
        $title = 'Мебельный магазин «Кристалл»';
        return view('main.index', compact('title','products'));
    }

    public function mebel(){
        $title = 'Категории мебели';
        $categories = Category::with('products')->get();
        $products = Product::with('category')->where('recommended', '=', 1)->get();
        return view('main.mebel', compact('title','categories', 'products'));
     }

     public function delivery(){
        $title = 'Доставка и оплата';
        return view('main.delivery', compact('title'));
     }

     public function address(){
        $title = 'Как нас найти';
        return view('main.address', compact('title'));
     }

     


     public function category(string $slug){
      
      $categories = Category::with('products')->get();
      $category = Category::firstWhere('slug', $slug);
      $products = Product::where('category_id', $category->id)->paginate(9);
      return view('shop.category', compact('category','categories', 'products'));
  }
  
  
  
  public function product(string $slug){
    $categories = Category::with('products')->get();

      $product =  Product::firstWhere('slug', $slug);
      return view('shop.product', compact( 'product',  'categories'));
  }
  







}
