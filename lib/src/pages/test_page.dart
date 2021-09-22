import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twitter_login/twitter_login.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';

class TestPage extends StatefulWidget {
  TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    
    List dataCat = [1,2,3,4];
    return Scaffold(
        body: Container(
          color: Colors.red,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: dataCat.length,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) => (dataCat.length == 0)?
            Center(child: Container()):
             Container(
              margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
              child: Card(
                elevation: 1.0,
                child: (index % 2 == 0)? ListTile(
                  leading: Hero(
                    tag: "$index",
                    child: CircleAvatar(
                      backgroundImage: new NetworkImage("https://media.istockphoto.com/vectors/cartoon-design-of-black-panther-for-sport-team-vector-id1168818351?k=6&m=1168818351&s=612x612&w=0&h=sWq-JSSq5shgQz4pgKtIsLF3-0EaGWdhkpWqz0mAWRs="),
                    ),
                  ),
                  title: Text("Prueba",
                  style: TextStyle(
                    fontSize: 18
                  ),
                  ),
                ):
                Center(child: Container()),
              ),
            )
          ),
        )
    );
  }
}
