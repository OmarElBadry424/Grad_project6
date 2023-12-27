import 'package:flutter/material.dart';

class  Jeans{
  String title;
  String imagePath;
  final color;

  Jeans(
      {
        required this.title,
        required this.imagePath,
        required this.color,


      });
}

List<Jeans> jeansList=[
  Jeans(
      title: ' Men Jeans',
      imagePath: "lib/assets/images/My project (2).png",
      color:Colors.orangeAccent),

  Jeans(
      title: 'Men Shoes',
      imagePath: "lib/assets/images/shoes_men_1-removebg-preview.png",
      color:Colors.orangeAccent),

  Jeans(
      title: 'Men Tshirts',
      imagePath:"lib/assets/images/guess_tshirt-removebg-preview.png",
      color:Colors.orangeAccent),


  Jeans(
      title: 'Men Troussers',
      imagePath: "lib/assets/images/trouss_5-removebg-preview.png",
      color:Colors.orangeAccent),


  Jeans(
      title: 'Women Tshirts',
      imagePath: "lib/assets/images/wmen_tshirt-removebg-preview.png",
      color:Colors.orangeAccent),

  Jeans(
      title: 'Women dresses',
      imagePath: "lib/assets/images/dress 1..png",
      color:Colors.orangeAccent),


  Jeans(
      title: 'Women shoes',
      imagePath: "lib/assets/images/women_shoes.png",
      color:Colors.orangeAccent),







];







