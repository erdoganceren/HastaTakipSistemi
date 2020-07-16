import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/login_view/login_view.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/widgets/fade_route_widget.dart';

Widget alreadyHaveAccount(context) => InkWell(
      onTap: () =>
          Navigator.pushReplacement(context, FadeRoute(page: LoginView())),
      child: Text(UIHelper.signupAlreadyHaveAccount,
          style: themeData.textTheme.display1.copyWith(
            decoration: TextDecoration.underline,
          )),
    );
