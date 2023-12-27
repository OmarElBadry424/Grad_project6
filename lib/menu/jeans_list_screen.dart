import 'package:flutter/material.dart';

import 'jeans.dart';
class JeansListScreen extends StatelessWidget {
  const JeansListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Two Wear'),
      ),
      body: ListView.builder(
          itemCount: jeansList.length,
          itemBuilder: (context, index){
            Jeans jeans = jeansList[index];
            return Card(
              child: ListTile(
                title: Text(jeans.title),
                leading: Image.asset(jeans.imagePath),
                trailing: GestureDetector(

                    child: Icon(Icons.arrow_forward_rounded
                    ),
                ),
              ),
            );
          }   ),

    );
  }
}
