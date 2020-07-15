import 'package:flutter/material.dart';
import 'package:myf2app/views/home_view/doctor_view.dart';
import 'package:myf2app/views/home_view/patient_relative_view.dart';
import 'package:myf2app/views/home_view/patient_view.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/widgets/fade_route_widget.dart';
import 'package:provider/provider.dart';

class SignupValidation with ChangeNotifier {
  String _tcno;
  String _password;
  String _confirmPassword;
  //titlefieldwidgettaki ünvanlistesinin nasıl çekeceğim??????
  List<bool> _titleList = [false, true, false];
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  bool _hiddenPassword = true;
  Icon _visibilityIcon = UIHelper.visibilityOff;
  String _text = "";
  static final SignupValidation _signupValidation =
      SignupValidation._internal();

  factory SignupValidation() {
    return _signupValidation;
  }
  SignupValidation._internal();

  get tcno => _tcno;
  get password => _password;
  get confirmPassword => _confirmPassword;
  get formKey => _formKey;
  get titleList => _titleList;
  get hiddenPassword => _hiddenPassword;
  get visibilityIcon => _visibilityIcon;
  get text => _text;
  set tcno(String tcno) => _tcno = tcno;
  set password(String password) {
    _password = password;
  }

  set confirmPassword(String confirmPassword) {
    _confirmPassword = confirmPassword;
  }

  set titleList(int index) {
    _titleList = [false, false, false];
    _titleList[index] = true;
    notifyListeners();
  }

  // hiddenPassword'un set methodu böyle yazıldı.
  void setHiddenPassword() {
    _hiddenPassword = !_hiddenPassword;
    if (_visibilityIcon == UIHelper.visibility)
      _visibilityIcon = UIHelper.visibilityOff;
    else
      _visibilityIcon = UIHelper.visibility;
    notifyListeners();
  }

  bool signupValidate(BuildContext context) {
    // verileri 'Aday Üye' tablosuna ekle
    // kayıt olan kullanıcı artık aday bir üyedir. Onaylanmasını bekleyecek.
    if (_formKey.currentState.validate()) {
      _text = UIHelper.confirmSignupText;
      notifyListeners();
      return true;
    }
    _text = "";
    notifyListeners();
    return false;
  }

  String confirmPasswordValidation(String value) {
    if (_password != _confirmPassword) {
      return UIHelper.confirmPasswordRequiredText;
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
