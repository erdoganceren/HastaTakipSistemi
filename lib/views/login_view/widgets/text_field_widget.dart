import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
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
      padding: EdgeInsets.symmetric(horizontal: screenAwareWidth(20, context)),
      child: Center(
        child: TextFormField(
          autocorrect: true,
          obscureText: false,
          maxLength: 11,
          keyboardType: textInputType,
          textInputAction: TextInputAction.next,
          cursorColor: UIHelper.textFieldCursorColor,
          style: TextStyle(color:Colors.black,fontSize: screenAwareWidth(14, context)),
          decoration: InputDecoration(
            contentPadding: new EdgeInsets.symmetric(vertical: screenAwareHeight(14.0,context), horizontal: screenAwareWidth(10.0,context)),
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
