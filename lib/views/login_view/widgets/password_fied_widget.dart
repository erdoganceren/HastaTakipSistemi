import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/models/theme/theme.dart';
import 'package:myf2app/views/ui_helper.dart';

class PasswordFieldWidget extends StatefulWidget {
  final TextInputType textInputType;
  final String requiredText;
  final String hintText;
  const PasswordFieldWidget({
    Key key,
    @required this.textInputType,
    @required this.requiredText,
    @required this.hintText,
  }) : super(key: key);

  @override
  _PasswordFieldWidgetState createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool isTextHidden = true;
  LoginValidation loginValidation = new LoginValidation();

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
        validator: loginValidation.passwordValidation,
        onChanged: (value) => loginValidation.password = value,
      ),
    );
  }
}
