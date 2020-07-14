import 'package:flutter/material.dart';
import 'doctor_view.dart';
import 'patient_relative_view.dart';
import 'patient_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: _getStartupView());
  }
}

Widget _getStartupView() {
  // giriş yapan hasta ? doktor ? kullanıcı yakını
  if (false)
    PatientRelativeView(); //Hasta yakını view
  else if (false) PatientView(); // hasta view

  return DoctorView(); // doktor view
}
