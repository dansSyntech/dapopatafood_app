import 'package:dapopatafood_app/data/food_list.dart';
import 'package:dapopatafood_app/model/food_model.dart';
import 'package:flutter/material.dart';

import 'commons_widget.dart';
import 'customText_widget.dart';

bool isFav = false;

class foodScreen extends StatefulWidget {
  @override
  _foodScreenState createState() => _foodScreenState();
}

class _foodScreenState extends State<foodScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: FoodData().foodList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 170,
                width: 200,
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                      color: grey, offset: Offset(1, 1), blurRadius: 4)
                ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("images/${FoodData().foodList[index].image}",height: 150,width: double.maxFinite),
                    Padding(
                      padding:
                      const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                              text: FoodData().foodList[index].name.toUpperCase()),
                          IconButton(
                              icon: Icon(
                                isFav? Icons.favorite : Icons.favorite_border,
                                color: isFav? red : null,
                              ),
                              onPressed: () {
                                setState(() {
                                  isFav = !isFav;
                                  print(isFav);
                                });
                              })
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomText(text: '4.7', color: grey, weight: FontWeight.w700),
                              Icon(Icons.star,color: Colors.red,),
                            ],
                          ),
                          CustomText(text: "RM${FoodData().foodList[index].price.toString()}", color: black, weight: FontWeight.w700),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

