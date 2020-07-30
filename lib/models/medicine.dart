import 'package:flutter/material.dart';

class Medicine {
  String _name;
  String _detail;
  Medicine({
    @required String name,
    @required String detail,
  }) {
    _name = name;
    _detail = detail;
  }
  String get name => _name;
  String get detail => _detail;
}
