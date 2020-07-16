import 'package:flutter/material.dart';
import 'doctor_view.dart';
import 'patient_relative_view.dart';
import 'patient_view/patient_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _getStartupView();
  }
}

Widget _getStartupView() {
  // giriş yapan hasta ? doktor ? kullanıcı yakını
  if (false)
    PatientRelativeView(); //Hasta yakını view
  else if (false) DoctorView(); // hasta view

  return PatientView(); // doktor view
}
