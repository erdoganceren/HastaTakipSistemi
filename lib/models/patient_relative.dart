import 'package:flutter/material.dart';

class PatientRelative {
  String _name;
  String _lastname;
  String _tc;
  String _password;
  String _telephoneNo;
  String _patientTc;
  PatientRelative({
    @required String name,
    @required String lastname,
    @required String tc,
    @required String password,
    @required String telephoneNo,
    @required String patientTc,
  }) {
    _name = name;
    _lastname = lastname;
    _tc = tc;
    _password = password;
    _telephoneNo = telephoneNo;
    _patientTc = patientTc;
  }
  String get name => _name;
  String get lastname => _lastname;
  String get tc => _tc;
  String get password => _password;
  String get telephoneNo => _telephoneNo;
  String get patientTc => _patientTc;
}
