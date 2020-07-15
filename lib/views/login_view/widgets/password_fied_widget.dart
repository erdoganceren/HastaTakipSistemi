import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';

class PasswordField extends StatelessWidget {
  final TextInputType textInputType;
  final String hintText;
  const PasswordField({
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
          cursorColor: UIHelper.textFieldCursorColor,
          keyboardType: textInputType,
          autocorrect: false,
          obscureText: Provider.of<LoginValidation>(context, listen: true)
              .hiddenPassword,
          style: themeData.textTheme.display1,
          decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: IconButton(
                icon: Provider.of<LoginValidation>(context, listen: true)
                    .visibilityIcon,
                onPressed: () =>
                    Provider.of<LoginValidation>(context, listen: false)
                        .setHiddenPassword(),
              )),
          validator: (value) =>
              Provider.of<LoginValidation>(context, listen: false)
                  .passwordValidation(value),
          onChanged: (value) =>
              Provider.of<LoginValidation>(context, listen: false).password =
                  value,
        ),
      ),
    );
  }
}
