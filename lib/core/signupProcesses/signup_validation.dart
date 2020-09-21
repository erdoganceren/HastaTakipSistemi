import 'package:flutter/material.dart';
import 'package:myf2app/core/services/service.dart';
import 'package:myf2app/views/ui_helper.dart';

class SignupValidation with ChangeNotifier {
  String _telno;
  String _name;
  String _tcno;
  String _password;
  String _confirmPassword;
  //titlefieldwidgettaki ünvanlistesinin nasıl çekeceğim??????
  List<bool> _titleList = [true, false, false];

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

  get telno => _telno;
  get name => _name;
  get tcno => _tcno;
  get password => _password;
  get confirmPassword => _confirmPassword;
  get formKey => _formKey;
  get titleList => _titleList;
  get hiddenPassword => _hiddenPassword;
  get visibilityIcon => _visibilityIcon;
  get text => _text;
  set telno(String telno) => _telno = telno;
  set name(String name) => _name = name;
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
    print(_titleList);
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
      Service service = Service.getInstance();
      String usersType = typeOfUser(titleList);
      service.register(tcno, usersType, password, name, telno);
      _text = UIHelper.confirmSignupText;
      notifyListeners();

      return true;
    }
    _text = "";
    notifyListeners();
    return false;
  }

  String typeOfUser(List value) {
    if (value[0] == true) {
      return "D";
    } else if (value[1] == true) {
      return "H";
    } else {
      return "Y";
    }
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

  String nameValidation(String value) {
    if (value.isEmpty) {
      return UIHelper.nameRequiredText;
    }
    return null;
  }

  String telnoValidation(String value) {
    if (value.isEmpty) {
      return UIHelper.telRequiredText;
    }
    return null;
  }
}
