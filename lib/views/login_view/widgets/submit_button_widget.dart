import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';

class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: FlatButton(
            highlightColor: Colors.greenAccent,
            textColor: Colors.white,
            splashColor: Colors.blue,
            child: Text(
              "Giriş",
            ),
            color: UIHelper.backgroundColorPrimary,
            onPressed: () {
              Provider.of<LoginValidation>(context, listen: false)
                  .loginValidate(context);
            },
          ),
        ),
        Text(Provider.of<LoginValidation>(context, listen: true).text,
            style: TextStyle(color: Colors.red, fontSize: 14))
      ],
    );
  }
}
