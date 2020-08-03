import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/login_view/login_view.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/core/navigationAnimation/fade_route_widget.dart';

Widget alreadyHaveAccount(context) => InkWell(
      onTap: () =>
          Navigator.pushReplacement(context, FadeRoute(page: LoginView())),
      child: Text(UIHelper.signupAlreadyHaveAccount,
          style: TextStyle(
            fontSize: screenAwareWidth(14, context),
            color:Colors.black,
            decoration: TextDecoration.underline,
          )),
    );
