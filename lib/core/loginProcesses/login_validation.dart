import 'package:flutter/material.dart';
import 'package:myf2app/views/home_view/home_view.dart';
import 'package:myf2app/widgets/fade_route_widget.dart';

class LoginValidation {
  String _tcno;
  String _password;
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  // singleton class olarak design edildi.
  static final LoginValidation _loginValidation = LoginValidation._internal();
  factory LoginValidation() {
    return _loginValidation;
  }
  LoginValidation._internal();

  get tcno => _tcno;
  get password => _password;
  get formKey => _formKey;
  set tcno(String tcno) => _tcno = tcno;
  set password(String password) => _password = password;

  bool loginValidate(BuildContext context) {
    // service ile tcler şifreler getirelecek
    if (formKey.currentState.validate()) {
      if (_tcno == 'username' && _password == 'password') {
        Navigator.pushReplacement(context, FadeRoute(page: HomeView()));
        return true;
      }
      return false;
    }
    return null;
  }

  String passwordValidation(String value) {
    if (value.isEmpty) {
      return 'Lütfen şifrenizi girin';
    }
    return null;
  }

  String tcValidation(String value) {
    if (value.isEmpty) {
      return 'Lütfen TC kimlik numaranızı girin';
    }
    return null;
  }
}
