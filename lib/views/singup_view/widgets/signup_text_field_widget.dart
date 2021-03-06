import 'package:flutter/material.dart';
import 'package:myf2app/core/signupProcesses/signup_validation.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';

import '../../ui_helper.dart';

class SignupTcTextField extends StatelessWidget {
  final TextInputType textInputType;
  final String hintText;
  SignupValidation signupValidation = new SignupValidation();
  SignupTcTextField({
    Key key,
    @required this.textInputType,
    @required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenAwareWidth(20, context)),
      child: Center(
        child: TextFormField(
          maxLength: 11,
          autocorrect: true,
          obscureText: false,
          keyboardType: textInputType,
          textInputAction: TextInputAction.done,
          cursorColor: UIHelper.textFieldCursorColor,
          style: themeData.textTheme.display1.copyWith(fontSize: screenAwareWidth(12, context)),
          decoration: InputDecoration(
             contentPadding: new EdgeInsets.symmetric(vertical: screenAwareHeight(14.0,context), horizontal: screenAwareWidth(10.0,context)),
            hintText: hintText,
          ),
          validator: signupValidation.tcValidation,
          onChanged: (value) => signupValidation.tcno = value,
        ),
      ),
    );
  }
}
