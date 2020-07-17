import 'package:flutter/material.dart';
import 'package:myf2app/views/admin_view/admin_view.dart';
import 'package:myf2app/views/home_view/home_view.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/widgets/fade_route_widget.dart';

class LoginValidation with ChangeNotifier {
  String _tcno;
  String _password;
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  bool _hiddenPassword = true;
  Icon _visibilityIcon = UIHelper.visibilityOff;
  String _text = "";

  // singleton class olarak design edildi.
  static final LoginValidation _loginValidation = LoginValidation._internal();
  factory LoginValidation() {
    return _loginValidation;
  }
  LoginValidation._internal();

  get tcno => _tcno;
  get password => _password;
  get formKey => _formKey;
  get hiddenPassword => _hiddenPassword;
  get text => _text;
  get visibilityIcon => _visibilityIcon;
  set tcno(String tcno) => _tcno = tcno;
  set password(String password) => _password = password;

  void setHiddenPassword() {
    _hiddenPassword = !_hiddenPassword;
    if (_visibilityIcon == UIHelper.visibility)
      _visibilityIcon = UIHelper.visibilityOff;
    else
      _visibilityIcon = UIHelper.visibility;
    notifyListeners();
  }

  bool loginValidate(BuildContext context) {
    // service ile tcler şifreler getirelecek
    if (formKey.currentState.validate()) {
      if (_tcno == '00000000000' && _password == 'password') {
        Navigator.pushReplacement(context, FadeRoute(page: HomeView()));
        return true;
      }
      if (_tcno == '11111111111' && _password == 'password') {
        Navigator.pushReplacement(context, FadeRoute(page: AdminView()));
        return true;
      }
      _text = "Geçersiz TC ve şifre girişi";
      notifyListeners();
      return false;
    }
    return null;
  }

  String passwordValidation(String value) {
    if (value.isEmpty) {
      return UIHelper.passwordRequiredText;
    }
    return null;
  }

  String tcValidation(String value) {
    if (value.isEmpty) {
      return UIHelper.tcRequiredText;
    }
    if (value.length < 11) {
      return UIHelper.tcLenghtRequiredText;
    }
    return null;
  }
}
