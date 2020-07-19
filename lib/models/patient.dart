import 'package:flutter/material.dart';

import 'doctor.dart';
import 'medicine.dart';

class Patient {
  String _name;
  String _lastname;
  String _tc;
  String _password;
  String _telephoneNo;
  String _imgUrl;
  String _doctorTc;
  List<Medicine> _medicines;
  int _water;
  int _bpm;
  int _step;
  static List<Patient> patientList = [];
  Patient(
      {@required String name,
      @required String lastname,
      @required String tc,
      @required String password,
      @required String telephoneNo,
      String imgUrl,
      @required String doctorTc,
      List<Medicine> medicines,
      int water,
      int bpm,
      int step}) {
    _name = name;
    _lastname = lastname;
    _tc = tc;
    _password = password;
    _telephoneNo = telephoneNo;
    _imgUrl = imgUrl;
    _doctorTc = doctorTc;
    _medicines = medicines;
    _water = water;
    _bpm = bpm;
    _step = step;
    patientList.add(this);
  }
  String get name => _name;
  String get lastname => _lastname;
  String get tc => _tc;
  String get password => _password;
  String get telephoneNo => _telephoneNo;
  String get imgUrl => _imgUrl;
  String get doctor => _doctorTc;
  List<Medicine> get medicines => _medicines;
  int get water => _water;
  int get bpm => _bpm;
  int get step => _step;

  set water(int value) => _water = value;
  set bpm(int value) => _bpm = value;
  set step(int value) => _step = value;

  static Patient searchPatient(String tc) {
    for (Patient p in patientList) {
      if (p.tc == tc) {
        return p;
      }
    }
    print("searchPatient null döndü");
    return null;
  }
}
