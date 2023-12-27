import 'package:flutter/material.dart';
import 'package:untitled/screens/poducts/home_page.dart';
import 'package:untitled/screens/poducts/jeans%20men/home_page.dart';
import 'package:untitled/screens/poducts/women%20dresses/home_page.dart';
import 'package:untitled/screens/poducts/women%20tshirt/home_page.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Men Tshirt'),
            Tab(text: 'Women Tshirt'),
            Tab(text: 'women dress'),
            Tab(text: 'Men Jeans'),


          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
        Home(),
          Homeee(),
          Homee(),
          Homeeee(),


        ],
      ),
    );
  }
}
