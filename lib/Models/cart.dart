import 'package:flutter/material.dart';
import 'package:okay/Models/watch.dart';

class Cart extends ChangeNotifier {
  //list of watch for sale 
  List<Watch> watchShop = [
    Watch(name: 'G-Shock DW-5600SK-1', 
    price: '101', 
    description: 'The G-Shock DW-5600SK-1: Durable, sleek, and built for adventure.', 
    imagePath: 'lib/Image/1.jpg'),

    Watch(name: 'G-Shock DW-5600SKE-7', 
    price: '110', 
    description: 'The G-Shock DW-5600SKE-7 combines crystal-clear elegance with rugged durability, a perfect fusion of style and strength.', 
    imagePath: 'lib/Image/2.jpg'),

    Watch(name: 'G-Shock MTG-B1000-1A', 
    price: '1798', 
    description: 'The G-Shock MTG-B1000-1A blends premium craftsmanship with cutting-edge toughness, offering both luxury and resilience.', 
    imagePath: 'lib/Image/3.jpg'),

    Watch(name: 'G-Shock GA-700UC-8A', 
    price: '2450', 
    description: 'The G-Shock GA-700UC-8A features rugged durability with a bold, urban military-inspired design, built to withstand any challenge.', 
    imagePath: 'lib/Image/4.jpg')
  ];
   
   // list of items in user cart
  List<Watch> userCart = [];

  // get list of watches for sale
  List<Watch> getWatchList() {
    return watchShop;
  }

  // get cart
  List<Watch> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Watch watch) {
    userCart.add(watch);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Watch watch) {
    userCart.remove(watch);
    notifyListeners();
  }
}