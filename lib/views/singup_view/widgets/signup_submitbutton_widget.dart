import 'package:flutter/material.dart';
import 'package:myf2app/core/signupProcesses/signup_validation.dart';

import '../../ui_helper.dart';

class SignupSubmitButton extends StatefulWidget {
  @override
  _SignupSubmitButtonState createState() => _SignupSubmitButtonState();
}

class _SignupSubmitButtonState extends State<SignupSubmitButton> {
  SignupValidation signupValidation = SignupValidation();
  bool isSignUpSuccess = true;
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
              setState(() {
                isSignUpSuccess = signupValidation.signupValidate(context);
              });
            },
          ),
        ),
        invalidSignupText,
      ],
    );
  }

  Widget get invalidSignupText {
    // eşitlik kullanmadan koşulu yazma. değişkenin null olma ihtimali var.
    if (isSignUpSuccess == false) {
      return Text("Geçersiz TC ve şifre girişi",
          style: TextStyle(fontSize: 14, color: Colors.red[700]));
    }
    return Text("");
  }
}
