import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';

class SubmitButton extends StatefulWidget {
  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  LoginValidation loginValidation = LoginValidation();
  bool isLoginSuccess = true;
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
            color: Colors.green,
            onPressed: () {
              setState(() {
                isLoginSuccess = loginValidation.loginValidate(context);
              });
            },
          ),
        ),
        invalidLoginText,
      ],
    );
  }

  Widget get invalidLoginText {
    // eşitlik kullanmadan koşulu yazma. değişkenin null olma ihtimali var.
    if (isLoginSuccess == false) {
      return Text("Geçersiz TC ve şifre girişi",
          style: TextStyle(fontSize: 14, color: Colors.red[700]));
    }
    return Text("");
  }
}
