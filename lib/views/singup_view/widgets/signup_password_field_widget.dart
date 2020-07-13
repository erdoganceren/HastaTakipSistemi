import 'package:flutter/material.dart';
import 'package:myf2app/core/signupProcesses/signup_validation.dart';
import 'package:myf2app/theme/theme.dart';

import '../../ui_helper.dart';

class SignupPasswordFieldWidget extends StatefulWidget {
  final TextInputType textInputType;
  final String requiredText;
  final String hintText;
  const SignupPasswordFieldWidget({
    Key key,
    @required this.textInputType,
    @required this.requiredText,
    @required this.hintText,
  }) : super(key: key);

  @override
  _SignupPasswordFieldWidgetState createState() =>
      _SignupPasswordFieldWidgetState();
}

class _SignupPasswordFieldWidgetState extends State<SignupPasswordFieldWidget> {
  bool isTextHidden = true;
  SignupValidation signupValidation = new SignupValidation();

  void _toggleVisibility() {
    setState(() {
      isTextHidden = !isTextHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        cursorColor: UIHelper.textFieldCursorColor,
        keyboardType: widget.textInputType,
        autocorrect: false,
        obscureText: isTextHidden,
        style: themeData.textTheme.display1,
        decoration: InputDecoration(
            hintText: widget.hintText,
            suffixIcon: IconButton(
              icon: isTextHidden ? UIHelper.visibilityOff : UIHelper.visibility,
              onPressed: _toggleVisibility,
            )),
        validator: signupValidation.passwordValidation,
        onChanged: (value) => signupValidation.password = value,
      ),
    );
  }
}
