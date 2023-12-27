import 'package:flutter/material.dart';
import '../../detail/widget/size_list.dart';

class CookieDetail extends StatelessWidget {
  final imagePath;

  final itemPrice;

  final itemName;
  void Function()? onPressed;


  CookieDetail(
      {
        this.imagePath,
        this.itemPrice,
        this.itemName,
        this.onPressed,
      }
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),


        actions: <Widget>[
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },

            child: Container(
              padding:EdgeInsets.all(10) ,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(30)
              ),
              child: Icon(Icons.favorite,
                color: Colors.red,
                size: 22,),
            ),
          ),
        ],
      ),

      body: ListView(
          children: [
            SizedBox(height: 15.0),
            SizedBox(height: 15.0),
            Hero(
                tag: imagePath,
                child: Image.asset(imagePath,
                    height: 150.0,
                    width: 100.0,
                    fit: BoxFit.contain
                )
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(itemPrice,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(itemName,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 24.0)),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width - 50.0,
                  child:
                  SizeList(),

              ),
            ),
            SizedBox(height: 20.0),
            Center(
                child: Container(
                    width: MediaQuery.of(context).size.width - 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color(0xFFF17532)
                    ),
                    child: Center(
                        child: Text('Add to cart',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        )
                    )
                )
            ),

          ]
      ),

    );
  }
}
