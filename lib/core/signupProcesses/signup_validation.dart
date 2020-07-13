import 'package:flutter/material.dart';
import 'package:myf2app/views/home_view/doctor_view.dart';
import 'package:myf2app/views/home_view/patient_relative_view.dart';
import 'package:myf2app/views/home_view/patient_view.dart';
import 'package:myf2app/widgets/fade_route_widget.dart';

class SignupValidation {
  String _tcno;
  String _password;
  //titlefieldwidgettaki ünvanlistesinin nasıl çekeceğim??????
  List<bool> _titleList = [false, true, false];
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  static final SignupValidation _signupValidation =
      SignupValidation._internal();

  factory SignupValidation() {
    return _signupValidation;
  }
  SignupValidation._internal();

  get tcno => _tcno;
  get password => _password;
  get formKey => _formKey;
  get titleList => _titleList;
  set tcno(String tcno) => _tcno = tcno;
  set password(String password) => _password = password;
  set titleList(List<bool> titleList) => _titleList = titleList;

  bool signupValidate(BuildContext context) {
    // verileri 'Aday Üye' tablosuna ekle
    // kayıt olan kullanıcı artık aday bir üyedir. Onaylanmasını bekleyecek.
    if (_formKey.currentState.validate()) {
      return true;
    }
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
