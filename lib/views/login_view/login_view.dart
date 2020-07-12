import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'widgets/header_widget.dart';
import 'widgets/password_fied_widget.dart';
import 'widgets/submit_button_widget.dart';
import 'widgets/text_field_widget.dart';

class LoginView extends StatelessWidget {
  LoginValidation loginValidation = new LoginValidation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: loginValidation.formKey,
        child: Column(
          children: [
            Header(),
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
            SubmitButton(),
          ],
        ),
      ),
    );
  }
}
