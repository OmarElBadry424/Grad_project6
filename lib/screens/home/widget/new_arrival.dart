import 'package:flutter/material.dart';
import 'package:untitled/models/clothes.dart';
import 'package:untitled/screens/home/widget/categories_lists.dart';
import 'package:untitled/screens/home/widget/clothes_items.dart';

class NewArrival extends StatelessWidget {
final clothesList= Clothes.generateClothes();
  @override
  Widget build(BuildContext context) {
    return Container (
      child:Column(
        children: [
          Categorieslist('New Arrival'),
          Container(
            height: 280,
            child: ListView.separated(
              padding: EdgeInsets. symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index)=> ClothesItem(clothesList[index]),
                separatorBuilder: (_, index) => SizedBox(width: 10,),

                itemCount: clothesList.length),
          ),
        ],
      ) ,
    );
  }
}
