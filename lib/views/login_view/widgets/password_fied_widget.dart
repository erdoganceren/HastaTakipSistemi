import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
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
      padding: EdgeInsets.symmetric(horizontal: screenAwareWidth(20, context)),
      child: Center(
        child: TextFormField(
          cursorColor: UIHelper.textFieldCursorColor,
          textInputAction: TextInputAction.go,
          keyboardType: textInputType,
          autocorrect: false,
          obscureText: Provider.of<LoginValidation>(context, listen: true)
              .hiddenPassword,
          style: TextStyle(color:Colors.black,fontSize: screenAwareWidth(14, context)),
          decoration: InputDecoration(
            contentPadding: new EdgeInsets.symmetric(vertical: screenAwareHeight(14.0,context), horizontal: screenAwareWidth(10.0,context)),
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
