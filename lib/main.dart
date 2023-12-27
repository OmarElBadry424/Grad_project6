import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled/firebase_options.dart';
import 'package:untitled/nav.dart';
import 'package:untitled/screens/home/home.dart';
import 'package:untitled/screens/poducts/cart_model.dart';
import 'package:untitled/screens/poducts/home_page.dart';
import 'package:untitled/screens/poducts/jeans%20men/cart_model.dart';
import 'package:untitled/screens/poducts/shoes%20men/cart_model.dart';
import 'package:untitled/screens/poducts/troussers%20men/cart_model.dart';
import 'package:untitled/screens/poducts/women%20dresses/cart_model.dart';
import 'package:untitled/screens/poducts/women%20shoes/cart_model.dart';
import 'package:untitled/screens/poducts/women%20tshirt/cart_model.dart';

// ignore: non_constant_identifier_names
 Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MultiProvider(

      providers: [
        ChangeNotifierProvider<CartMode>(
          create: (_) => CartMode(),
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
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              backgroundColor: Color(0xFFFAFAFA),
              primaryColor: Color(0xFFFFBD00),
              hintColor: Color(0xFFFFEBC7),

            ),
            home: MyHomePage(),
            //YOur code goes here
          );
        },
      ),
    );

  }
}
