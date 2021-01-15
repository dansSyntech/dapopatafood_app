import 'package:dapopatafood_app/data/category_list.dart';
import 'package:dapopatafood_app/model/category_model.dart';
import 'package:dapopatafood_app/widget/customText_widget.dart';
import 'package:flutter/material.dart';

import 'commons_widget.dart';



class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: CategoryData().categoriesList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 70,
                    child: Padding(
                        padding: EdgeInsets.all(4),
                        child: Image.asset(
                          "images/${CategoryData().categoriesList[index].image}",
                          width: 50,
                        )),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: red, offset: Offset(4, 6), blurRadius: 15)
                      // ],
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomText(
                      text: CategoryData().categoriesList[index].name, size: 14, color: black),
                ],
              ),
            );
          }),
    );
  }
}
