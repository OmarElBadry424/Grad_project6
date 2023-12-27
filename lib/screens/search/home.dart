import 'package:flutter/material.dart';
import 'package:untitled/screens/search/product_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      home:  SearchPage(),
    );
  }
}
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  //creating a list

  static List<ProductModel> main_products_list =[
    ProductModel(
      "Black-tshirt","lib/images/Black_shirt-removebg-preview.png", 500, 4.5,),

    ProductModel(
      "Guess-tshirt","lib/images/guess_tshirt-removebg-preview.png", 700, 4,),

    ProductModel(
      "Navy-tshirt","lib/images/navy_tshirt-removebg-preview.png", 900, 5,),


    ProductModel(
      "Nike-tshirt","lib/images/nike_tshirt-removebg-preview.png", 1000, 4,),

    ProductModel(
      "Jeans","lib/images/Black_shirt-removebg-preview.png", 800, 4.8,),


  ];

  //creating list to display and filter
  List<ProductModel> display_list = List.from(main_products_list);

  void updateList(String value){
    // this is the function that will filter the list
    setState(() {
      display_list = main_products_list.where((element) => element.product_title!.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Two Wear'),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 20.0,),
            TextField(
              onChanged: (value)=> updateList(value) ,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search for a product",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.orange
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              //display message in case there is no result

              child: display_list.length == 0 ?Center(child: Text("No result found",
                style: TextStyle(
                    color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold),),):ListView.builder(
                itemCount: display_list.length,
                itemBuilder: (context, index)=> ListTile(
                  contentPadding:   EdgeInsets.all(8.0),
                  title: Text(display_list[index].product_title!, style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  subtitle: Text('${display_list[index].product_release_year!}',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  trailing: Text("${display_list[index].rating}",
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                  leading: Image.network(display_list[index].product_poster_url!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
