import 'package:flutter/material.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/base_view.dart';
import 'package:myf2app/views/home_view/doctor_view/doctor_view.dart';
import 'patient_relative_view.dart';
import 'patient_view/patient_view.dart';

class HomeView extends StatelessWidget {
  final title;

  const HomeView({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseView(
        exitButton: true,
        positionedTop: screenAwareHeight(90, context),
        child: _getStartupView());
  }

  Widget _getStartupView() {
    // giriş yapan hasta ? doktor ? kullanıcı yakını
    if (title == "doktor")
      return DoctorView(); //Hasta yakını view
    else if (title == "bireysel takip") return PatientView(); // hasta view

    return PatientRelativeView(); // doktor view
  }
}
