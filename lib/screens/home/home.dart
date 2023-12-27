import 'package:flutter/material.dart';
import 'package:untitled/menu/jeans_list_screen.dart';
import 'package:untitled/screens/home/widget/best-sell.dart';
import 'package:untitled/screens/home/widget/custom_app_bar.dart';
import 'package:untitled/screens/home/widget/new_arrival.dart';
import 'package:untitled/screens/home/widget/search_input.dart';
import 'package:untitled/screens/poducts/cart_model.dart';
import 'package:untitled/screens/poducts/cart_page.dart';
import 'package:untitled/screens/poducts/home_page.dart';
import 'package:untitled/screens/register/login_page.dart';

import '../detail/widget/ana.dart';
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final bottomList=['home', 'menu', 'heart', 'user'];

  get onTap => null;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SearchInput(),
        NewArrival(),
          BestSell(),
        ],
      ),

    );
  }
}
