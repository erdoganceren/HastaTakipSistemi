import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
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
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              header,
              title,
              signupButton(context),
              Spacer(flex: 1),
              loginButton(context),
              footerStart,
            ],
          )),
    );
  }

  Widget get header => Expanded(
        flex: 50,
        child: Header(),
      );
  Widget get title => Expanded(
        flex: 50,
        child:
            Text(UIHelper.startHeaderText, style: themeData.textTheme.headline),
      );
  Widget signupButton(context) => Expanded(
        flex: 12,
        child: SubmitButton(
          onTap: () {
            Navigator.pushReplacement(context, FadeRoute(page: SignupView()));
          },
          text: UIHelper.startSignUpButtonText,
        ),
      );
  Widget loginButton(context) => Expanded(
        flex: 12,
        child: SubmitButton(
          onTap: () {
            Navigator.pushReplacement(context, FadeRoute(page: LoginView()));
          },
          text: UIHelper.startLoginButtonText,
        ),
      );
  Widget get footerStart => Expanded(
        flex: 5,
        child: footer,
      );
}
