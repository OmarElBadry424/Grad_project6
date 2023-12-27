import 'package:coupon/coupon.dart';
import 'package:flutter/material.dart';
class CartMode extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [  id, itemName, itemPrice, imagePath, color ]

    ["Blue jeans", "350.00", "lib/assets/images/jeans-removebg-preview.png", Colors.orangeAccent],
    ["Black Jeans", "400.50", "lib/assets/images/jeans2-removebg-preview.png", Colors.orangeAccent],
    ["Medium blue jeans", "500.80", "lib/assets/images/My project (1).png", Colors.orangeAccent],
    ["Ligh blue jeans", "300.00", "lib/assets/images/My project (2).png", Colors.orangeAccent],
  ];


  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  get coupon => null;

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
    Coupon.percentage(discountPercentage: 10); // or use Coupon.fixed
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

  Calculate() {
    Coupon.percentage(discountPercentage: 20); // or use Coupon.fixed
    num discountValue = coupon.discountValueFor(calculateTotal() );
    print(discountValue); // 60
    num totalAfterDiscount = coupon.totalAfterDiscount(calculateTotal());
    return(totalAfterDiscount); // 140
  }
}


