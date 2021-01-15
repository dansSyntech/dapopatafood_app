import 'package:flutter/material.dart';
import 'commons_widget.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final int maxLines;
  final FontWeight weight;

  const CustomText({Key key, this.text, this.size, this.color, this.weight, this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 2,
      style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? black,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}
