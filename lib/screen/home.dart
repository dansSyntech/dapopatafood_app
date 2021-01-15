import 'package:dapopatafood_app/services/auth.dart';
import 'package:dapopatafood_app/widget/category_widget.dart';
import 'package:dapopatafood_app/widget/commons_widget.dart';
import 'package:dapopatafood_app/widget/customText_widget.dart';
import 'package:dapopatafood_app/widget/food_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

   final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: 'What would you like to eat?',
                  ),
                ),
                // Stack(children: [
                //   IconButton(
                //     icon: Icon(Icons.settings),
                //     onPressed: () {},
                //   ),
                //   Positioned(
                //     top: 12,
                //     right: 12,
                //     child: Container(
                //       height: 10,
                //       width: 10,
                //       decoration: BoxDecoration(
                //         color: red,
                //         borderRadius: BorderRadius.circular(20),
                //       ),
                //     ),
                //   )
                // ])
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () async {
                    await _auth.signOut();
                  },
                ),
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(color: grey, offset: Offset(1, 1), blurRadius: 4)
                ]),
                child: ListTile(
                  leading: Icon(Icons.search, color: red),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Find food and restaurant",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(Icons.filter_list),
                ),
              ),
            ),
            SizedBox(height: 5),
            Categories(),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                  text: "Featured", size: 24, weight: FontWeight.bold),
            ),
            foodScreen(),
          ],
        ),
      ),
    );
  }
}
