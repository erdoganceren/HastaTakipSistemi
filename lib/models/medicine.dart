import 'package:flutter/material.dart';

class Medicine {
  String _name;
  String _detail;
  int _countOfDay;
  List<String> _medicineTimes = [];
  Medicine(
      {@required String name,
      @required String detail,
      @required int countOfDay}) {
    _name = name;
    _detail = detail;
    _countOfDay = countOfDay;
    for (int i = 0; i < _countOfDay; i++) {
      _medicineTimes.add((24 / _countOfDay * (i + 1)).toStringAsFixed(2));
    }
  }
  String get name => _name;
  String get detail => _detail;
  int get countOfDay => _countOfDay;
  List<String> get medicineTimes => _medicineTimes;
}
