import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/flutter_auth_ui.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  

  @override
  void initState() {
    super.initState();
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
                child: const Text("start ui"),
                onPressed: () async {
                  final providers = [
                    AuthUiProvider.anonymous,
                    AuthUiProvider.email,
                    AuthUiProvider.phone,
                    AuthUiProvider.apple,
                    AuthUiProvider.github,
                    AuthUiProvider.google,
                    AuthUiProvider.microsoft,
                    AuthUiProvider.yahoo,
                  ];

                  final result = await FlutterAuthUi.startUi(
                    items: providers,
                    tosAndPrivacyPolicy: TosAndPrivacyPolicy(
                      tosUrl: "https://www.google.com",
                      privacyPolicyUrl: "https://www.google.com",
                    ),
                    androidOption: AndroidOption(
                      enableSmartLock: false, // default true
                      showLogo: true, // default false
                      overrideTheme: true, // default false
                    ),
                    emailAuthOption: EmailAuthOption(
                      requireDisplayName: true, // default true
                      enableMailLink: false, // default false
                      handleURL: '',
                      androidPackageName: '',
                      androidMinimumVersion: '',
                    ),
                  );
                  print(result);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
