import 'package:flutter/material.dart';

import '../../../core/signupProcesses/signup_validation.dart';
import '../../../theme/theme.dart';
import '../../../utils/utils.dart';
import '../../ui_helper.dart';

class SignupTelNoField extends StatelessWidget {

  final TextInputType textInputType;
  final String hintText;
  SignupValidation signupValidation = new SignupValidation();
  SignupTelNoField({
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
          validator: signupValidation.telnoValidation,
          onChanged: (value) => signupValidation.telno = value,
        ),
      ),
    );
  }
}