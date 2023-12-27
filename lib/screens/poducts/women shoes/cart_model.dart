import 'package:flutter/material.dart';
class Cart extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [  id, itemName, itemPrice, imagePath, color ]

    ["Classic Shoes", "500.00", "lib/images/women_shoes.png", Colors.orangeAccent],
    ["Black Vans", "700.00", "lib/images/shoes_women_2-removebg-preview.png", Colors.orangeAccent],
    ["White Sneakers", "660.80", "lib/images/shoes_women-removebg-preview.png", Colors.orangeAccent],
    ["Brown Shoes", "900.00", "lib/images/shoes_women_3-removebg-preview.png", Colors.orangeAccent],
  ];


  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}


