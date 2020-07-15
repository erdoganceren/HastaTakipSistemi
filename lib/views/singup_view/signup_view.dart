import 'package:flutter/material.dart';
import 'package:myf2app/core/signupProcesses/signup_validation.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/singup_view/widgets/signup_password_field_widget.dart';
import 'package:myf2app/views/singup_view/widgets/signup_text_field_widget.dart';
import 'package:myf2app/widgets/header_widget.dart';
import 'package:myf2app/views/login_view/widgets/password_fied_widget.dart';
import 'package:myf2app/views/login_view/widgets/text_field_widget.dart';
import '../ui_helper.dart';
import 'widgets/already_have_account_widget.dart';
import 'widgets/signup_confirm_password_widget.dart';
import 'widgets/signup_submitbutton_widget.dart';
import 'widgets/title_field_widget.dart';

class SignupView extends StatelessWidget {
  SignupValidation signupValidation = new SignupValidation();
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
          key: signupValidation.formKey,
          child: Column(
            children: [
              Expanded(flex: 1, child: Header()),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: TitleField(),
                    ),
                    Expanded(
                      flex: 3,
                      child: SignupTcTextField(
                        textInputType: TextInputType.number,
                        hintText: UIHelper.tcHintText,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: SignupPasswordField(
                        textInputType: TextInputType.text,
                        hintText: UIHelper.passwordHintText,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: SignupConfirmPasswordField(
                        textInputType: TextInputType.text,
                        hintText: UIHelper.confirmPasswordHintText,
                      ),
                    ),
                    Expanded(flex: 3, child: SignupSubmitButton()),
                    Expanded(flex: 1, child: alreadyHaveAccount(context)),
                    Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          Positioned(
                              bottom: 10,
                              right: 10,
                              child: Text(UIHelper.developedByText,
                                  style: themeData.textTheme.display4))
                        ],
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
