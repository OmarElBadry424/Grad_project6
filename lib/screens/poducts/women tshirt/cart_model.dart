import 'package:coupon/coupon.dart';
import 'package:flutter/material.dart';
class Car extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [  id, itemName, itemPrice, imagePath, color ]

    ["Pink T-Shirt", "800.00", "lib/assets/images/hust_do_it_tshirt-removebg-preview.png", Colors.orangeAccent],
    ["Black T-Shirt", "300.00", "lib/assets/images/women_tshirt-removebg-preview.png", Colors.orangeAccent],
    ["Printed T-Shirt", "700.00", "lib/assets/images/womens_tshirt-removebg-preview.png", Colors.orangeAccent],
    ["Purple T-Shirt", "500.00",  "lib/assets/images/wmen_tshirt-removebg-preview.png", Colors.orangeAccent],
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