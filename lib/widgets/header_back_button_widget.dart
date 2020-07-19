import 'package:flutter/material.dart';
import 'package:myf2app/views/ui_helper.dart';

Widget headerBackButton({BuildContext context, Color color}) => Positioned(
    top: 0,
    left: 0,
    child: GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
        ),
        padding: EdgeInsets.all(20),
        child: Icon(
          Icons.arrow_back,
          color: Colors.white.withOpacity(0.6),
        ),
      ),
    ));
