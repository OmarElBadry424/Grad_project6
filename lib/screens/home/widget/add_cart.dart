import 'package:flutter/material.dart';
import 'package:untitled/models/clothes.dart';

class AddCart extends StatelessWidget {
final Clothes clothes;
AddCart(this.clothes);
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text('Price',
             style: TextStyle(
               fontSize: 16,
               color: Colors.grey
             ),),
              Text(clothes.price,
              style: TextStyle(
                height: 1.5,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Container(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 0,
                  primary: Theme.of(context).primaryColor
                ),
                onPressed: (){
              }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Add to Cart',
                style: TextStyle(
                  fontSize: 20,
                ),),
                SizedBox(width: 10,),
                Icon(Icons.shopping_cart_outlined),
              ],
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
