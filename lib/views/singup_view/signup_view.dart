import 'package:flutter/material.dart';
import 'package:myf2app/core/signupProcesses/signup_validation.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/singup_view/widgets/signup_password_field_widget.dart';
import 'package:myf2app/views/singup_view/widgets/signup_text_field_widget.dart';
import 'package:myf2app/widgets/submit_button_widget.dart';
import 'package:provider/provider.dart';
import '../base_view.dart';
import '../ui_helper.dart';
import 'widgets/already_have_account_widget.dart';
import 'widgets/signup_confirm_password_widget.dart';
import 'widgets/title_field_widget.dart';

class SignupView extends StatelessWidget {
  SignupValidation signupValidation = new SignupValidation();
  @override
  Widget build(BuildContext context) {
    return BaseView(
      companyTitle: true,
      footerTitle: true,
      positionedTop: screenAwareHeight(246, context),
      child: Container(
        alignment: Alignment.center,
        child: Form(
          key: signupValidation.formKey,
          child: body(context),
        ),
      ),
    );
  }

  Widget body(context) => Container(
        width: double.infinity,
        height: screenAwareHeight(430, context),
        child: Column(
          children: [
            titleMember,
            Spacer(flex:1),
            tcTextField,
            passwordTextField,
            confirmPasswordTextField,
            signupSubmitButton(context),
            alreadyHaveAccountButton(context),
            Spacer(flex: 2),
          ],
        ),
      );
  Widget get titleMember => Expanded(
        flex: 4,
        child: TitleField(),
      );
  Widget get tcTextField => Expanded(
        flex: 4,
        child: SignupTcTextField(
          textInputType: TextInputType.number,
          hintText: UIHelper.tcHintText,
        ),
      );
  Widget get passwordTextField => Expanded(
        flex: 4,
        child: SignupPasswordField(
          textInputType: TextInputType.text,
          hintText: UIHelper.passwordHintText,
        ),
      );
  Widget get confirmPasswordTextField => Expanded(
        flex: 4,
        child: SignupConfirmPasswordField(
          textInputType: TextInputType.text,
          hintText: UIHelper.confirmPasswordHintText,
        ),
      );
  Widget signupSubmitButton(context) => Expanded(
        flex: 5,
        child: Center(
          child: SubmitButton(
            text: UIHelper.signupSubmitButtonText,
            onTap: () => Provider.of<SignupValidation>(context, listen: false)
                .signupValidate(context),
          ),
        ),
      );
  Widget alreadyHaveAccountButton(context) => Expanded(
        flex: 1,
        child: alreadyHaveAccount(context),
      );
}
