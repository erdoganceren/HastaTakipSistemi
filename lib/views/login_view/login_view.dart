import 'package:flutter/material.dart';
import 'package:myf2app/core/localNotification/local_notification.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/widgets/footer_widget.dart';
import 'package:provider/provider.dart';
import '../../widgets/header_widget.dart';
import '../base_view.dart';
import 'widgets/create_account_widget.dart';
import 'widgets/password_fied_widget.dart';
import '../../widgets/submit_button_widget.dart';
import 'widgets/text_field_widget.dart';

class LoginView extends StatelessWidget {
  LoginValidation loginValidation = new LoginValidation();
  @override
  Widget build(BuildContext context) {
    return BaseView(
      companyTitle: true,
      footerTitle: true,
      positionedTop: screenAwareHeight(220, context),
      child: Form(
        key: loginValidation.formKey,
        child: Column(
          children: [
            body(context),
          ],
        ),
      ),
    );
  }

  Widget body(context) => Container(
        width: double.infinity,
        height: screenAwareHeight(455, context),
        child: Column(
          children: [
            Spacer(flex: 2),
            tcTextField,
            passwordTextField,
            loginSubmitButton(context),
            createAccountButton(context),
            Spacer(flex: 1),
          ],
        ),
      );
  Widget get tcTextField => Expanded(
        flex: 2,
        child: TcTextField(
          textInputType: TextInputType.number,
          hintText: UIHelper.tcHintText,
        ),
      );
  Widget get passwordTextField => Expanded(
        flex: 2,
        child: PasswordField(
          textInputType: TextInputType.text,
          hintText: UIHelper.passwordHintText,
        ),
      );
  Widget loginSubmitButton(context) => Expanded(
        flex: 2,
        child: Center(
          child: SubmitButton(
              text: UIHelper.loginSubmitButtonText,
              onTap: () {
                Provider.of<LoginValidation>(context, listen: false)
                    .loginValidate(context);
              }),
        ),
      );
  Widget createAccountButton(context) => Expanded(
        flex: 1,
        child: createAccount(context),
      );
}
