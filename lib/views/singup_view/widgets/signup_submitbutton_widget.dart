import 'package:flutter/material.dart';
import 'package:myf2app/core/signupProcesses/signup_validation.dart';
import 'package:provider/provider.dart';

import '../../ui_helper.dart';

class SignupSubmitButton extends StatelessWidget {
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
              "Kayıt Ol",
            ),
            color: UIHelper.backgroundColorPrimary,
            onPressed: () {
              Provider.of<SignupValidation>(context, listen: false)
                  .signupValidate(context);
            },
          ),
        ),
        Text(Provider.of<SignupValidation>(context, listen: true).text,
            style: TextStyle(color: Colors.greenAccent))
      ],
    );
  }
}
