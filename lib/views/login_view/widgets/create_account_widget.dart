import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/singup_view/signup_view.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/core/navigationAnimation/fade_route_widget.dart';

Widget createAccount(BuildContext context) => InkWell(
      onTap: () {
        Navigator.pushReplacement(context, FadeRoute(page: SignupView()));
      },
      child: Text(UIHelper.createAccountText,
          style: themeData.textTheme.display1
              .copyWith(decoration: TextDecoration.underline)),
    );
