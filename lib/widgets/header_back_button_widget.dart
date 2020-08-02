import 'package:flutter/material.dart';

import '../utils/utils.dart';

Widget headerBackButton({BuildContext context, Color color}) => Positioned(
    top: screenAwareHeight(50,context),
    left: screenAwareWidth(10,context),
    child: GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    ),);
