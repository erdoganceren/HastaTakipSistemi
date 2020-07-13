import 'package:flutter/material.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/login_view/login_view.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/widgets/fade_route_widget.dart';

Widget loginButton(context) => Container(
      width: screenAwareWidth(300, context),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            UIHelper.backgroundColorSecondary,
            UIHelper.backgroundColorSecondary.withAlpha(180),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          boxShadow: [
            BoxShadow(
                color: Colors.white, blurRadius: 4, offset: Offset(-2, -2)),
            BoxShadow(
                color: Colors.green[800], blurRadius: 4, offset: Offset(2, 2))
          ]),
      child: FlatButton(
        textColor: Colors.white,
        onPressed: () {
          Navigator.push(context, FadeRoute(page: LoginView()));
        },
        child: Text("Giriş Yap"),
      ),
    );
