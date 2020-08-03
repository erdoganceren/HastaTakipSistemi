import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/base_view.dart';
import 'package:myf2app/views/login_view/login_view.dart';
import 'package:myf2app/views/singup_view/signup_view.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/core/navigationAnimation/fade_route_widget.dart';
import 'package:myf2app/widgets/submit_button_widget.dart';

class StartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      scrollPhysics: NeverScrollableScrollPhysics(),
      companyTitle: true,
      footerTitle: true,
      positionedTop: screenAwareHeight(260, context),
      child: Column(
        children: [
          title(context),
          signupButton(context),
          loginButton(context),
          Spacer(flex: 2),
        ],
      ),
    );
  }

  Widget title(context) => Expanded(
        flex: 16,
        child: Text(
          UIHelper.startHeaderText,
          style: themeData.textTheme.headline.copyWith(fontSize:screenAwareWidth(36,context)),
        ),
      );
  Widget signupButton(context) => Expanded(
        flex: 5,
        child: SubmitButton(
          onTap: () {
            Navigator.pushReplacement(context, FadeRoute(page: SignupView()));
          },
          text: UIHelper.startSignUpButtonText,
        ),
      );
  Widget loginButton(context) => Expanded(
        flex: 5,
        child: SubmitButton(
          onTap: () {
            Navigator.pushReplacement(context, FadeRoute(page: LoginView()));
          },
          text: UIHelper.startLoginButtonText,
        ),
      );
}
