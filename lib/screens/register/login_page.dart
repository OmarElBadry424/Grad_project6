import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/register/rgister_page.dart';
import 'package:untitled/screens/register/square_tile.dart';
import 'package:untitled/services/auth_services.dart';


import 'my-textfield.dart';
import 'my_button.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //tex editing
  final emailController = TextEditingController();

  final passwordController= TextEditingController();

  void signUserIn()async{
    //show loading circle
    showDialog(context: context, builder: (context) {
      return Center( child: CircularProgressIndicator( valueColor: new AlwaysStoppedAnimation<Color>(Color(0xFFFFBD00),)),
      );
    },);

//try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);

      //show error message
      showErrorMessage(e.code);
    }
  }

  // error message to user
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog
          (

          title :Center(
            child: Text(
              message,

            ),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child:   Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 25,
                ),

                //logo

                Icon(Icons.lock,


                  size: 50,

                ),

                const SizedBox(height: 25,
                ),



                //welcome back!
                Text('welcome back you have been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,

                  ),),

                const SizedBox(height: 25,
                ),



//email textfield

                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                SizedBox(
                  height: 10,
                ),
                //password textfield

                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                SizedBox(height: 10,),
                //forgot password?
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25),
                  child:   Row(

                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [

                      Text('Forgot Password?',



                        style: TextStyle(



                            color: Colors.grey[600]



                        ),



                      ),

                    ],

                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                //sign in button
                MyButton(
                  text: " Sign In",
                  onTap: signUserIn,
                ),

                const SizedBox(height: 50,
                ),


                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child:   Row(

                    children: [

                      Expanded(

                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),

                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Or continue with',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),

                        ),
                      ),

                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),

                      ),

                    ],

                  ),
                ),

                SizedBox(
                  height: 50,
                ),


                //google + apple sign in buttons

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(
                         onTap: ()=>AuthService().signInWithGoogle(),
                      imagePath:'lib/assets/images/google.png',
                    ),

                    // GestureDetector(
                    //   onTap: ()=>AuthService().signInWithGoogle(),
                    //   child: Container(
                    //     padding: EdgeInsets.all(20),
                    //     decoration: BoxDecoration(
                    //       border: Border.all(color: Colors.white),
                    //       borderRadius: BorderRadius.circular(16),
                    //       color: Colors.grey[200],
                    //     ),
                    //     child: Image.asset('lib/assets/images/google.png',
                    //       height: 40,),
                    //   ),
                    // ),

                    SizedBox(
                      width: 25,
                    ),

                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey[200],
                      ),
                      child: Image.asset('lib/assets/images/apple.png',
                        height: 40,),
                    ),

                  ],
                ),

                SizedBox(height: 50,),

                //not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member ?',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),),
                    SizedBox(width: 4,),
                    GestureDetector(
                      onTap:() {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) =>RegisterPage(onTap: () {  },),
                        )
                        );
                      },
                      child: Text('Register now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                  ],
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
