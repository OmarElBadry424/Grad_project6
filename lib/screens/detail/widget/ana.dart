import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/clothes.dart';
import 'package:untitled/nav.dart';
import 'package:untitled/screens/detail/widget/size_list.dart';
import 'package:untitled/screens/home/home.dart';
import 'package:untitled/screens/poducts/home_page.dart';

class Ana extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height /1.7,
            decoration: BoxDecoration(
              color: Color.fromARGB(255,224 ,224 ,224 ),
              image: DecorationImage(image: AssetImage('lib/assets/images/best1.png'),
                fit: BoxFit.cover,

              )
            ),
            child: Padding(
              padding: EdgeInsets.all(20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap:() {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) =>MyHomePage(),
                  )
                  );
                },

                child: Container(
                    padding:EdgeInsets.all(10) ,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.arrow_back_ios_new,
                  size: 22,),
                  ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },

                child: Container(
                  padding:EdgeInsets.all(10) ,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.favorite,
                    color: Colors.red,
                    size: 22,),
                ),
              ),
            ],
            ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(padding:EdgeInsets.only(top: 8,left: 15,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Black T-Shirt',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text('\$300',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.red.withOpacity(0.7),

                      ),),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Text('For Women',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),),
              SizedBox(height: 16,),
              //rating bar
              SizedBox(height: 20,),
              Text('Long description of the product here',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),),
              SizedBox(height: 20,),
              SizeList(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
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

              
            ],
          ),
          ),

          
        ],
      ),


      ),
    );
  }
}
