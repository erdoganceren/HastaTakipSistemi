import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenAwareHeight(240, context),
      decoration: BoxDecoration(
        color: UIHelper.loginHeaderBackgroundColor,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(screenAwareWidth(30, context)),
        ),
      ),
      child: Center(
        child:
            Text(UIHelper.loginHeaderText, style: themeData.textTheme.headline),
      ),
    );
  }
}
