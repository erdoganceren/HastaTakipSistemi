import 'package:flutter/material.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/models/patient_relative.dart';
import 'package:myf2app/views/home_view/patient_view/widgets/carousel_medicinelist_widget.dart';
import 'package:myf2app/views/home_view/patient_view/widgets/patient_activity_widget.dart';
import 'package:myf2app/views/home_view/patient_view/widgets/patient_card_widget.dart';
import 'package:myf2app/views/home_view/patient_view/widgets/patient_view_text_widget.dart';

class PatientRelativeView extends StatelessWidget {
  final PatientRelative model;

  const PatientRelativeView({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Patient patient = Patient.searchPatient(model.patientTc);
    return Column(
      children: [
        patientCard(context: context, model: patient),
        patientActivity(model: patient),
        Divider(
          height: 10,
          indent: 25,
          endIndent: 25,
        ),
        takeMedicineText(context),
        CarouselMedicineList(model: patient),
      ],
    );
  }
}
