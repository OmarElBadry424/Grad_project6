import 'package:flutter/material.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';

import '../nav.dart';
class DemoApp extends StatefulWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  FilePickerResult?result;
  String? _fileName;
  PlatformFile? pickedfile;
  bool isLoading = false;
  File?fileToDisplay;

  void pickFile()async{
    try{
      setState(() {
        isLoading = true;
      });

      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );
      if(result!= null){
        _fileName = result!.files.first.name;
        pickedfile = result!.files.first;
        fileToDisplay = File(pickedfile!.path.toString());

        print('File name $_fileName');
      }

      setState(() {
        isLoading = false;
      });
    }catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: new Text('Back Arrow'),
          leading: IconButton(
          color: Color(0xFF323232),
      icon: Icon(
        Icons.arrow_back,
      ),
      onPressed: () =>   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) =>MyHomePage(),
      )
      )
    ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: isLoading
                ?CircularProgressIndicator()
                :TextButton(onPressed: (){
              pickFile();
            }, child:Text('Choose File')),
          ),
          if(pickedfile!=null)

            SizedBox(
              height: 300,
              width: 400,
              child: Image.file(fileToDisplay!),
            ),
          SizedBox(height: 100,),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Your Location',
            ),
          ),
          SizedBox(height: 5,),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Your Adress',
            ),
          ),
          SizedBox(height: 10,),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Describtion',
            ),
            maxLines: 5,


          ),
          SizedBox(height: 10,),

          MaterialButton(
color: Colors.orangeAccent,

            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Succssesfuly Donated! "),
                ),
              );
            },
            child: const Text("Donate now",
              style: TextStyle(
                color: Colors.white,
              ),),
          ),

        ],

      ),
    );
  }
}
