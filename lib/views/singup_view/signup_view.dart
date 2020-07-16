import 'package:flutter/material.dart';
import 'package:myf2app/core/signupProcesses/signup_validation.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/singup_view/widgets/signup_password_field_widget.dart';
import 'package:myf2app/views/singup_view/widgets/signup_text_field_widget.dart';
import 'package:myf2app/widgets/header_widget.dart';
import 'package:myf2app/widgets/footer_widget.dart';
import 'package:myf2app/widgets/submit_button_widget.dart';
import 'package:provider/provider.dart';
import '../ui_helper.dart';
import 'widgets/already_have_account_widget.dart';
import 'widgets/signup_confirm_password_widget.dart';
import 'widgets/title_field_widget.dart';

class SignupView extends StatelessWidget {
  SignupValidation signupValidation = new SignupValidation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Form(
          key: signupValidation.formKey,
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                header(context),
                body(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget header(context) => Container(
        width: double.infinity,
        height: screenAwareHeight(220, context),
        child: Header(),
      );
  Widget body(context) => Container(
        width: double.infinity,
        height: screenAwareHeight(447, context),
        child: Column(
          children: [
            titleMember(context),
            tcTextField,
            passwordTextField,
            confirmPasswordTextField,
            signupSubmitButton(context),
            alreadyHaveAccountButton(context),
            footerSignUp,
          ],
        ),
      );
  Widget titleMember(context) => Expanded(
        flex: 3,
        child: TitleField(),
      );
  Widget get tcTextField => Expanded(
        flex: 3,
        child: SignupTcTextField(
          textInputType: TextInputType.number,
          hintText: UIHelper.tcHintText,
        ),
      );
  Widget get passwordTextField => Expanded(
        flex: 3,
        child: SignupPasswordField(
          textInputType: TextInputType.text,
          hintText: UIHelper.passwordHintText,
        ),
      );
  Widget get confirmPasswordTextField => Expanded(
        flex: 3,
        child: SignupConfirmPasswordField(
          textInputType: TextInputType.text,
          hintText: UIHelper.confirmPasswordHintText,
        ),
      );
  Widget signupSubmitButton(context) => Expanded(
        flex: 3,
        child: SubmitButton(
          text: UIHelper.signupSubmitButtonText,
          onTap: () => Provider.of<SignupValidation>(context, listen: false)
              .signupValidate(context),
        ),
      );
  Widget alreadyHaveAccountButton(context) => Expanded(
        flex: 1,
        child: alreadyHaveAccount(context),
      );
  Widget get footerSignUp => Expanded(flex: 2, child: footer);
}
