import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/ui_helper.dart';

class TextFieldWidget extends StatelessWidget {
  final TextInputType textInputType;

  final String requiredText;
  final String hintText;
  LoginValidation loginValidation = new LoginValidation();
  TextFieldWidget({
    Key key,
    @required this.textInputType,
    @required this.requiredText,
    @required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
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
          validator: loginValidation.tcValidation,
          onChanged: (value) => loginValidation.tcno = value,
        ),
      ),
    );
  }
}
