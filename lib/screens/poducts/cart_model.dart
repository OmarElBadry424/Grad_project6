import 'package:flutter/material.dart';
import 'package:coupon/coupon.dart';
class CartModel extends ChangeNotifier {
  var coupon;

  get discountPercentage => null;


  // list of items on sale
   main() {
    final coupon =
    Coupon.percentage(discountPercentage: 20); // or use Coupon.fixed
  }

  final List _shopItems = const [
    // [  id, itemName, itemPrice, imagePath, color ]

    [
      "Black T-Shirt",
      "4.00",
      "lib/assets/images/Black_shirt-removebg-preview.png",
      Colors.orangeAccent
    ],
    [
      "Guess T-Shirt",
      "2.50",
      "lib/assets/images/guess_tshirt-removebg-preview.png",
      Colors.orangeAccent
    ],
    [
      "Navy T-Shirt",
      "12.80",
      "lib/assets/images/navy_tshirt-removebg-preview.png",
      Colors.orangeAccent
    ],
    [
      "Nike T-Shirt",
      "1.00",
      "lib/assets/images/nike_tshirt-removebg-preview.png",
      Colors.orangeAccent
    ],
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

