import 'package:flutter/material.dart';
import 'package:myf2app/core/signupProcesses/signup_validation.dart';
import 'package:myf2app/theme/theme.dart';

import '../../ui_helper.dart';

class SignupTextFieldWidget extends StatelessWidget {
  final TextInputType textInputType;
  final String requiredText;
  final String hintText;
  SignupValidation signupValidation = new SignupValidation();
  SignupTextFieldWidget({
    Key key,
    @required this.textInputType,
    @required this.requiredText,
    @required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        autocorrect: true,
        obscureText: false,
        keyboardType: textInputType,
        textInputAction: TextInputAction.done,
        cursorColor: UIHelper.textFieldCursorColor,
        style: themeData.textTheme.display1,
        decoration: InputDecoration(
          hintText: hintText,
        ),
        validator: signupValidation.tcValidation,
        onChanged: (value) => signupValidation.tcno = value,
      ),
    );
  }
}
