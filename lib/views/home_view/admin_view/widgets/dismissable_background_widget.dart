import 'package:flutter/material.dart';

Widget dismissibleBackgroundWidget({
  Color color,
  AlignmentGeometry direction,
  IconData iconData,
  EdgeInsetsGeometry padding,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
          padding: padding,
          color: color,
          alignment: direction,
          child: Icon(iconData, color: Colors.white)),
    );
