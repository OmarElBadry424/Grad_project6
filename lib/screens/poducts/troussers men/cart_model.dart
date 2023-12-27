import 'package:flutter/material.dart';
class CartMo extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [  id, itemName, itemPrice, imagePath, color ]

    ["Grey Joggers", "700", "lib/images/My project (5).png", Colors.orangeAccent],
    ["White Joggers", "400.00", "lib/images/rouss_3-removebg-preview.png", Colors.orangeAccent],
    ["Nike  Whie Joggers", "1000.00","lib/images/trouss_4-removebg-preview.png", Colors.orangeAccent],
    ["Burgundy Joggers", "800.00",  "lib/images/trouss_5-removebg-preview.png", Colors.orangeAccent],
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


