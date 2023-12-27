import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screens/poducts/donat.dart';
import 'package:untitled/screens/poducts/shoes%20men/cart_model.dart';
import 'package:untitled/screens/poducts/troussers%20men/cart_model.dart';
import 'package:untitled/screens/poducts/women%20dresses/cart_model.dart';
import 'package:untitled/screens/poducts/women%20shoes/cart_model.dart';
import 'package:untitled/screens/poducts/women%20tshirt/cart_model.dart';
import '../home/home.dart';
import 'cart_model.dart';
import 'home_page.dart';
import 'jeans men/cart_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartMode>(
          create: (_) => CartMode(),
        ),
        ChangeNotifierProvider<CartModelll>(
          create: (_) => CartModelll(),
        ),
        ChangeNotifierProvider<CartModel>(
          create: (_) => CartModel(),
        ),

        ChangeNotifierProvider<CartMod>(
          create: (_) => CartMod(),
        ),
        ChangeNotifierProvider<CartMo>(
          create: (_) => CartMo(),
        ),
        ChangeNotifierProvider<CartM>(
          create: (_) => CartM(),
        ),
        ChangeNotifierProvider<Cart>(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider<Car>(
          create: (_) => Car(),
        ),
      ],
      child: Builder(
        builder: (BuildContext context) {
          return MaterialApp(
            home: Home(),
            //YOur code goes here
          );
        },
      ),
    );
  }
}

