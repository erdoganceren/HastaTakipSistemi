import 'package:flutter/material.dart';
import 'package:myf2app/core/clipper/custom_shape_clipper.dart';
import 'package:myf2app/utils/utils.dart';

Widget headerBackground(BuildContext context) => Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipPath(
        clipper: CustomShapeClipper(),
        child: Container(
          height: screenAwareHeight(280, context),
          color: Colors.blue.withOpacity(0.6),
        ),
      ),
    );
