import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
                  print("Prueba");
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
                  print("Prueba");
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
        print (result.id);
        String firstName = "";
        String lastName = "";
        
      }
    } catch (error) {
      print(error);
    }
  }
}
