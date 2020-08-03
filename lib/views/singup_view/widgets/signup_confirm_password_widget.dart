import 'package:flutter/material.dart';
import 'package:myf2app/core/signupProcesses/signup_validation.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:provider/provider.dart';

import '../../ui_helper.dart';

class SignupConfirmPasswordField extends StatelessWidget {
  final TextInputType textInputType;
  final String hintText;

  const SignupConfirmPasswordField(
      {Key key, @required this.textInputType, @required this.hintText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenAwareWidth(20, context)),
      child: Center(
        child: TextFormField(
          cursorColor: UIHelper.textFieldCursorColor,
          keyboardType: textInputType,
          autocorrect: false,
          obscureText: Provider.of<SignupValidation>(context, listen: true)
              .hiddenPassword,
          style: themeData.textTheme.display1.copyWith(fontSize: screenAwareWidth(12, context)),
          decoration: InputDecoration(
             contentPadding: new EdgeInsets.symmetric(vertical: screenAwareHeight(14.0,context), horizontal: screenAwareWidth(10.0,context)),
              hintText: hintText,
              suffixIcon: IconButton(
                icon: Provider.of<SignupValidation>(context, listen: true)
                    .visibilityIcon,
                onPressed: Provider.of<SignupValidation>(context, listen: false)
                    .setHiddenPassword,
              )),
          validator: (value) =>
              Provider.of<SignupValidation>(context, listen: false)
                  .confirmPasswordValidation(value),
          onChanged: (value) =>
              Provider.of<SignupValidation>(context, listen: false)
                  .confirmPassword = value,
        ),
      ),
    );
  }
}
