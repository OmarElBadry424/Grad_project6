import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService{

  // Google Sign in
  signInWithGoogle()async{
    // begin interactive with sign in process
     final GoogleSignInAccount? gUser= await GoogleSignIn().signIn();
    // obtain auth details from request
     final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    // create a new credintal from user
     final credintal = GoogleAuthProvider.credential(
       accessToken: gAuth.accessToken,
       idToken: gAuth.idToken,

     );
    //finally, lets sign in
    return await FirebaseAuth.instance.signInWithCredential(credintal);
  }
}