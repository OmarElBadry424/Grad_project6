import 'package:flutter/material.dart';
import 'package:untitled/screens/detail/detail.dart';
import 'package:untitled/screens/detail/widget/detail_app_bar.dart';
import 'package:untitled/screens/home/widget/add_cart.dart';
import 'package:untitled/screens/home/widget/categories_lists.dart';
import 'package:untitled/screens/home/widget/clothes_info.dart';
import 'package:untitled/screens/detail/widget/ana.dart';
import 'package:untitled/models/clothes.dart';



class BestSell extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Categorieslist('Best Products'),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Padding(
                  padding:  EdgeInsets.all(5),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),

                   child:GestureDetector(
                       child: Image.asset('lib/assets/images/best1.png', width: 80),
                     onTap:() {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) =>Ana(),
                       )
                      );
                   },


                   ),
                      ),
            SizedBox(width: 10,),
                        Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
  Text('Miniso Woman Oversized',
  style: TextStyle(
    fontWeight: FontWeight.bold,
    height: 1.5,

  ),),
  Text('T-Shirt',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      height: 1.5,

    ),),
  Text('\$79.99',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      height: 1.5,
      color: Theme.of(context).primaryColor,

    ),),

],
          ),

                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                        size: 15,
                ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
