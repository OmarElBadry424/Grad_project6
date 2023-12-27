import 'package:flutter/material.dart';
import 'package:untitled/models/clothes.dart';
import 'package:untitled/screens/detail/widget/detail_app_bar.dart';
import 'package:untitled/screens/detail/widget/size_list.dart';
import 'package:untitled/screens/home/widget/add_cart.dart';
import 'package:untitled/screens/home/widget/clothes_info.dart';

class DetailPage extends StatelessWidget {
final Clothes clothes;
DetailPage(this.clothes);


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
DetailAppBar(clothes),
          ClothesInfo(clothes),
          SizeList(),
            AddCart(clothes),
          ],
        ),
      ),
    );
  }
}
