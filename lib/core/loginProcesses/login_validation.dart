import 'package:flutter/material.dart';
import 'package:myf2app/models/doctor.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/utils/temp_datas.dart';
import 'package:myf2app/views/home_view/home_view.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/core/navigationAnimation/fade_route_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginValidation with ChangeNotifier {
  String _tcno;
  String _password;
  var _userModel;
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
  get userModel => _userModel;
  get formKey => _formKey;
  get hiddenPassword => _hiddenPassword;
  get text => _text;
  get visibilityIcon => _visibilityIcon;
  set tcno(String tcno) => _tcno = tcno;
  set password(String password) => _password = password;
  set userModel(value) => _userModel = value;
  void setHiddenPassword() {
    _hiddenPassword = !_hiddenPassword;
    if (_visibilityIcon == UIHelper.visibility)
      _visibilityIcon = UIHelper.visibilityOff;
    else
      _visibilityIcon = UIHelper.visibility;
    notifyListeners();
  }

  Future<bool> loginValidate(BuildContext context) async {
    // service ile tcler şifreler getirelecek
    if (formKey.currentState.validate()) {
      print("0");
      var users = TempData.users;
      print("1");
      for (dynamic user in users) {
        print("3");
        if (_tcno == user.tc && _password == user.password) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString("username", user.tc);
          _userModel = user;
          Navigator.pushReplacement(
            context,
            FadeRoute(
              page: HomeView(),
            ),
          );
          _text = "";

          return true;
        }
      }
      _text = "Geçersiz giriş";
      notifyListeners();
      return false;
    }
    notifyListeners(); // gereksiz olabilir check et
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