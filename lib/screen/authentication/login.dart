import 'package:dapopatafood_app/services/auth.dart';
import 'package:dapopatafood_app/widget/commons_widget.dart';
import 'package:dapopatafood_app/widget/customText_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final AuthService _auth = AuthService();

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Firebase.initializeApp();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                'images/wallpaper.jpg',
                height: double.maxFinite,
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: white)
                  ),
                  color: red,
                  child: CustomText(text: 'Goto', color: black),
                  onPressed: () async {

                    var result =  await _auth.signInAnon();

                    print('user $result');

                    if(result != null){
                      print('you make it');
                      Get.to(Home());
                    }
                    else{
                      print('fail');
                    }

                  }),
            )
          ],
        ),
      ),
    );
  }
}
