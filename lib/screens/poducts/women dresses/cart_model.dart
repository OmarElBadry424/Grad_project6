import 'package:flutter/material.dart';
class CartM extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [  id, itemName, itemPrice, imagePath, color ]

    ["Red Dress", "600.00", "lib/assets/images/My project (3).png", Colors.orangeAccent],
    ["Yellow Dress", "900.00", "lib/assets/images/dress 1..png", Colors.orangeAccent],
    ["Black Dress", "1200.00",  "lib/assets/images/My project (4).png", Colors.orangeAccent],
    ["Rose Dress", "1500.00", "lib/assets/images/women-dresses_2-removebg-preview.png", Colors.orangeAccent],
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
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return (totalPrice*0.90).toStringAsFixed(2);
  }

  String calculateTotalee() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return (totalPrice).toStringAsFixed(2);
  }

}

