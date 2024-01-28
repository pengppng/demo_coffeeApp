import 'package:flutter/material.dart';
import 'package:my_hospi/models/coffee.dart';

class CoffeeShop extends ChangeNotifier {
  //menu list
  final List<Coffee> _shop =[
    //black coffee
    Coffee(name: 'black Coffee', price: "50", imagePath: "lib/images/latte.png",),//forget lib/
    //latte
    Coffee(name: 'latte', price: "60", imagePath: "lib/images/iced-latte.png",),    
    //espres
    Coffee(name: 'Espresso', price: "50", imagePath: "lib/images/espresso.png",),
    //cocoa
    Coffee(name: 'Hot Chocolate', price: "55", imagePath: "lib/images/Hot-Chocolate.png",),
  ];
  //user cart
  List<Coffee> _userCart = [];
  //get list
  List<Coffee> get coffeeShop => _shop;
  //get cart
  List<Coffee> get userCart => _userCart;
  //add cart
  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }
  //remove cart
  void removeItemToCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  } 
}