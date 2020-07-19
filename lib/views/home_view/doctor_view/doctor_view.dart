import 'package:flutter/material.dart';
import 'package:myf2app/models/doctor.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/home_view/doctor_view/widgets/patients_text_widget.dart';
import 'package:provider/provider.dart';
import 'widgets/doctor_card_widget.dart';
import 'widgets/patient_list_widget.dart';
import 'widgets/search_bar_widget.dart';

class DoctorView extends StatelessWidget {
  final Doctor model;

  const DoctorView({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: doctorCard(context: context, model: model)),
          Positioned(
              top: screenAwareHeight(110, context),
              left: 0,
              right: 0,
              child: SearchBar()),
          Positioned(
            top: screenAwareHeight(170, context),
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      patientsText,
                      Expanded(
                          child: Container(
                              height: 1, color: Colors.blue.withOpacity(0.6)))
                    ],
                  ),
                ),
                Expanded(child: patientListWidget(model:model)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
