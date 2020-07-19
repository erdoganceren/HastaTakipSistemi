import 'package:flutter/material.dart';

class Medicine {
  String _name;
  String _detail;
  int _countOfDay;
  Medicine(
      {@required String name,
      @required String detail,
      @required int countOfDay}) {
    _name = name;
    _detail = detail;
    _countOfDay = countOfDay;
  }
  String get name => _name;
  String get detail => _detail;
  int get countOfDay => _countOfDay;
}
