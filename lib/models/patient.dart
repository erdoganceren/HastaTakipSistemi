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
  Map<String, List<String>> _medicineTimes;
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
      Map<String, List<String>> medicineTimes,
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
    _medicineTimes = medicineTimes;
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
  Map<String, List<String>> get medicineTimes => _medicineTimes;
  int get water => _water;
  int get bpm => _bpm;
  int get step => _step;

  set water(int value) => _water = value;
  set bpm(int value) => _bpm = value;
  set step(int value) => _step = value;

  set medicineTimes(Map<String, List<String>> value) => _medicineTimes = value;
  void setMedicineTime(Medicine medicine, String oldTime, String newTime) {
    List<String> times = _medicineTimes[medicine.name];
    print("**$times");
    int oldTimeIndex = times.indexOf(oldTime);
    times.replaceRange(oldTimeIndex, oldTimeIndex + 1, [newTime]);
    _medicineTimes.update(medicine.name, (value) => times);
    print(_medicineTimes[medicine]);
  }

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
