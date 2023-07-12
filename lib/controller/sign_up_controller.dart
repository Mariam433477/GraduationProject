import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twitter_login/twitter_login.dart';

class SignUpController extends GetxController {
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );


    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
  Future<UserCredential?> signInWithFacebook() async {
    // Trigger the sign-in flow
try{

  final LoginResult loginResult = await FacebookAuth.instance.login();

  // Create a credential from the access token
  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
print("thats no errore ${FirebaseAuth.instance.signInWithCredential(facebookAuthCredential)}");
  // Once signed in, return the UserCredential
  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
}catch(e){
  print("thats error $e");
}
  }
  Future<UserCredential> signInWithTwitter() async {
    // Create a TwitterLogin instance
    final twitterLogin = new TwitterLogin(
        apiKey: '16X8rhJSclrcVQwP2GyGOKuT3',
        apiSecretKey:'TWUoYGoamGfs34bgloEYCuctyKFbrnWRolNnScLHzltwGa0JcC',
        redirectURI: 'https://projectgraduation-fb1c1.firebaseapp.com/__/auth/handler'
    );

    // Trigger the sign-in flow
    final authResult = await twitterLogin.login();

    // Create a credential from the access token
    final twitterAuthCredential = TwitterAuthProvider.credential(
      accessToken: authResult.authToken!,
      secret: authResult.authTokenSecret!,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(twitterAuthCredential);
  }
 }
