import 'package:flutter/material.dart';

class Admin {
  String _tc;
  String _password;

  Admin({
    @required String tc,
    @required String password,
  }) {
    _tc = tc;
    _password = password;
  }
  String get tc => _tc;
  String get password => _password;
}
