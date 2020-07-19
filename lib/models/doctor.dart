import 'package:flutter/material.dart';

import 'patient.dart';

class Doctor {
  String _name;
  String _lastname;
  String _tc;
  String _password;
  String _telephoneNo;
  String _imgUrl;
  List<String> _patientsTc;
  static List<Doctor> doctorList = [];
  Doctor({
    @required String name,
    @required String lastname,
    @required String tc,
    @required String password,
    @required String telephoneNo,
    String imgUrl,
    List<String> patientsTc,
  }) {
    _name = name;
    _lastname = lastname;
    _tc = tc;
    _password = password;
    _imgUrl = imgUrl;
    _telephoneNo = telephoneNo;
    _patientsTc = patientsTc;
    doctorList.add(this);
  }
  String get name => _name;
  String get lastname => _lastname;
  String get tc => _tc;
  String get password => _password;
  String get telephoneNo => _telephoneNo;
  String get imgUrl => _imgUrl;
  List<String> get patients => _patientsTc;

  static Doctor searchDoctor(String tc) {
    for (Doctor d in doctorList) {
      if (d.tc == tc) {
        return d;
      }
    }
    print("searchDoctor null döndü");
    return null;
  }
}
