import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: UIHelper.loginHeaderBackgroundColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(screenAwareWidth(30, context)),
          ),
          image: DecorationImage(
              image: AssetImage(
                "assets/images/header.jpg",
              ),
              fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 18,
              child: Text(
                UIHelper.companyText,
                style: themeData.textTheme.display3,
              ),
            ),
          ],
        ));
  }
}
