import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/base_view.dart';
import 'package:myf2app/views/login_view/login_view.dart';
import 'package:myf2app/views/singup_view/signup_view.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/widgets/fade_route_widget.dart';
import 'package:myf2app/widgets/footer_widget.dart';
import 'package:myf2app/widgets/header_widget.dart';
import 'package:myf2app/widgets/submit_button_widget.dart';

class StartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      companyTitle: true,
      footerTitle: true,
      positionedTop: 220,
      child: Column(
        children: [
          title,
          signupButton(context),
          loginButton(context),
          Spacer(flex: 3),
        ],
      ),
    );
  }

  Widget get title => Expanded(
        flex: 20,
        child: Text(
          UIHelper.startHeaderText,
          style: themeData.textTheme.headline,
        ),
      );
  Widget signupButton(context) => Expanded(
        flex: 4,
        child: SubmitButton(
          onTap: () {
            Navigator.pushReplacement(context, FadeRoute(page: SignupView()));
          },
          text: UIHelper.startSignUpButtonText,
        ),
      );
  Widget loginButton(context) => Expanded(
        flex: 4,
        child: SubmitButton(
          onTap: () {
            Navigator.pushReplacement(context, FadeRoute(page: LoginView()));
          },
          text: UIHelper.startLoginButtonText,
        ),
      );
}
