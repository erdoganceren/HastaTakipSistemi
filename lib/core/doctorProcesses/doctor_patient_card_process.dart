import 'package:flutter/material.dart';

class DoctorPatientCardProcess with ChangeNotifier {
  String _currentPatientTc;

  get currentPatientTc => _currentPatientTc;

  set currentPatientTc(String value) {
    _currentPatientTc = value;
    notifyListeners();
  }
}
