import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';

class TcTextField extends StatelessWidget {
  final TextInputType textInputType;
  final String hintText;
  TcTextField({
    Key key,
    @required this.textInputType,
    @required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: TextFormField(
          maxLength: 11,
          autocorrect: true,
          obscureText: false,
          keyboardType: textInputType,
          textInputAction: TextInputAction.done,
          cursorColor: UIHelper.textFieldCursorColor,
          style: themeData.textTheme.display1,
          decoration: InputDecoration(
            hintText: hintText,
          ),
          validator:
              Provider.of<LoginValidation>(context, listen: false).tcValidation,
          onChanged: (value) =>
              Provider.of<LoginValidation>(context, listen: false).tcno = value,
        ),
      ),
    );
  }
}
