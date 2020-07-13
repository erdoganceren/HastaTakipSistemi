import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/start_view/widgets/login_button_widget.dart';
import 'package:myf2app/views/start_view/widgets/signup_button_widget.dart';
import 'package:myf2app/views/ui_helper.dart';

class StartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                UIHelper.backgroundColorPrimary,
                UIHelper.backgroundColorSecondary
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Spacer(flex: 10),
              Expanded(
                  flex: 10,
                  child: Text(UIHelper.startHeaderText,
                      style: themeData.textTheme.display2)),
              Expanded(
                flex: 2,
                child: signupButton(context),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 2,
                child: loginButton(context),
              ),
              Spacer(flex: 4),
            ],
          )),
    );
  }
}
