import 'package:flutter/material.dart';
import 'package:myf2app/core/clipper/custom_shape_clipper.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';

Widget headerBackgroundImage(BuildContext context) => Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipPath(
        clipper: CustomShapeClipper(),
        child: Container(
          height: screenAwareHeight(280, context),
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter:
                  ColorFilter.mode(UIHelper.colorPrimary, BlendMode.srcIn),
              image: AssetImage("assets/images/pngbarn.png"),
            ),
          ),
        ),
      ),
    );
