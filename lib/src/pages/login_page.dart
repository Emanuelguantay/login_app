import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twitter_login/twitter_login.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late GoogleSignIn? _googleSignIn;

  @override
  void initState() {
    super.initState();
    _googleSignIn = GoogleSignIn(
      scopes: <String>[
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: Text(
                  "Google",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
                onPressed: () async {
                  await onPressGoogleLogin();
                  print("Google");
                  //onPressGoogleLogin();
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                child: Text(
                  "Facebook",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
                onPressed: () async {
                  await onPressGoogleLogin();
                  print("Facebook");
                  //onPressGoogleLogin();
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                child: Text(
                  "Twitter",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
                onPressed: () async {
                  await signInWithTwitter();
                  print("Twitter");
                  //onPressGoogleLogin();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  onPressGoogleLogin() async {
    try {
      GoogleSignInAccount? result = await _googleSignIn!.signIn();

      if (result != null) {
        print(result.id);
        String firstName = "";
        String lastName = "";
      }
    } catch (error) {
      print(error);
    }
  }

  onPressTwitterLogin() async {
    try {
      GoogleSignInAccount? result = await _googleSignIn!.signIn();

      if (result != null) {
        print(result.id);
        String firstName = "";
        String lastName = "";
      }
    } catch (error) {
      print(error);
    }
  }

  Future<bool?> signInWithTwitter() async {
    try {
      final twitterLogin = TwitterLogin(
        apiKey: "IOCSQXQaLlHdlDTp1aruqj89d",
        apiSecretKey: "YEgKy2hiJwlWIdsSvJgMbirUeHOm1MHWF36JNUO3AoWg2tTOAQ",
        redirectURI: "edesa-app://",
      );
      final authResult = await twitterLogin.login();

      print(authResult);
    } catch (error) {
      print(error);
    }

    // switch (authResult.status) {
    //   case TwitterLoginStatus.loggedIn:
    //     final AuthCredential twitterAuthCredential =
    //         TwitterAuthProvider.credential(
    //             accessToken: authResult.authToken!,
    //             secret: authResult.authTokenSecret!);

    //     final userCredential =
    //         await _auth.signInWithCredential(twitterAuthCredential);
    //     return Resource(status: Status.Success);
    //   case TwitterLoginStatus.cancelledByUser:
    //        return Resource(status: Status.Success);
    //   case TwitterLoginStatus.error:
    //      return Resource(status: Status.Error);
    //   default:
    //     return null;
    //  }
  }
}
