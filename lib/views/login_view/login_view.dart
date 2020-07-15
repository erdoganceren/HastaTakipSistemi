import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/singup_view/signup_view.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/widgets/fade_route_widget.dart';
import '../../widgets/header_widget.dart';
import 'widgets/password_fied_widget.dart';
import 'widgets/submit_button_widget.dart';
import 'widgets/text_field_widget.dart';

class LoginView extends StatelessWidget {
  LoginValidation loginValidation = new LoginValidation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Form(
          key: loginValidation.formKey,
          child: Column(
            children: [
              Expanded(flex: 1, child: Header()),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: TcTextField(
                        textInputType: TextInputType.number,
                        hintText: UIHelper.tcHintText,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: PasswordField(
                        textInputType: TextInputType.text,
                        hintText: UIHelper.passwordHintText,
                      ),
                    ),
                    Expanded(flex: 2, child: SubmitButton()),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context, FadeRoute(page: SignupView()));
                        },
                        child: Text(
                          "Hesap oluştur",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    Spacer(flex: 2),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 169,
                        child: Stack(
                          children: [
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: Text(
                                  UIHelper.developedByText,
                                  style: themeData.textTheme.display4,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
