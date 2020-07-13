import 'package:flutter/material.dart';
import 'package:myf2app/core/signupProcesses/signup_validation.dart';
import 'package:myf2app/widgets/header_widget.dart';
import 'package:myf2app/views/login_view/widgets/password_fied_widget.dart';
import 'package:myf2app/views/login_view/widgets/text_field_widget.dart';
import '../ui_helper.dart';
import 'widgets/already_have_account_widget.dart';
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
              Header(),
              TitleFieldWidget(),
              TextFieldWidget(
                requiredText: UIHelper.tcRequiredText,
                textInputType: TextInputType.number,
                hintText: UIHelper.tcHintText,
              ),
              PasswordFieldWidget(
                requiredText: UIHelper.passwordRequiredText,
                textInputType: TextInputType.text,
                hintText: UIHelper.passwordHintText,
              ),
              SignupSubmitButton(),
              alreadyHaveAccount(context),
            ],
          ),
        ),
      ),
    );
  }
}
