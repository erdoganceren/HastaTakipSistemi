import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(40),
        bottomLeft: Radius.circular(40),
      ),
      child: Container(
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              Positioned(
                top: -50,
                right: -25,
                child: Container(
                  width: screenAwareHeight(200, context),
                  height: screenAwareHeight(200, context),
                  alignment: Alignment(0.5, 0.5),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(screenAwareHeight(100, context)),
                    gradient: LinearGradient(
                      colors: [
                        UIHelper.colorPrimary,
                        UIHelper.colorSecondary,
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -70,
                left: -35,
                child: Container(
                  width: screenAwareHeight(280, context),
                  height: screenAwareHeight(280, context),
                  alignment: Alignment(-0.2, 0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(
                      screenAwareHeight(140, context),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        UIHelper.colorPrimary,
                        UIHelper.colorSecondary,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Text(
                    UIHelper.companyText,
                    style: themeData.textTheme.display2.copyWith(
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.w300,
                        fontSize: 28),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
