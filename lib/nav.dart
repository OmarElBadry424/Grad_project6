import 'package:flutter/material.dart';
import 'package:untitled/chat%20bot/main.dart';
import 'package:untitled/donation/dmo_app.dart';
import 'package:untitled/screens/home/home.dart';
import 'package:untitled/screens/poducts/cart_model.dart';
import 'package:untitled/screens/poducts/home_page.dart';
import 'package:untitled/screens/poducts/jeans%20men/cart_model.dart';
import 'package:untitled/screens/register/login_page.dart';
import 'package:untitled/tabbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Create a cart model to pass to the home page

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // Create a list of pages to be displayed in the bottom navigation bar
  final List<Widget> _pages = [
    HomePage(),
    LoginPage(onTap: () {  },),
MyTabBar(),
  MyHomePagee(title: ''),
  DemoApp(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Colors.orangeAccent,
            size: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
            color: Colors.orangeAccent,
            size: 30,),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,
            color: Colors.orangeAccent,
            size: 30,),
            label: 'Cart',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.chat,
            color: Colors.orangeAccent,
            size: 30,),
            label: 'Chat',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on	,
              color: Colors.orangeAccent,
              size: 30,),
            label: 'Donation',

          ),




        ],
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 14),
        selectedItemColor: Colors.black,
      ),
    );
  }
}
