import 'package:flutter/material.dart';
class CartMod extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [  id, itemName, itemPrice, imagePath, color ]

    ["Brown Shoes", "500.00", "lib/images/shoes_men_1-removebg-preview.png", Colors.orangeAccent],
    ["Black Nike Shoes", "1000.00", "lib/images/shoes_men_2-removebg-preview.png", Colors.orangeAccent],
    ["Running Nike Shoes", "1100.00","lib/images/shoes_men_3-removebg-preview.png", Colors.orangeAccent],
    ["Black Classic Shoes", "300.00",  "lib/images/shoes man1.png", Colors.orangeAccent],
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


