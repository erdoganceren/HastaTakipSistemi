import 'package:flutter/material.dart';
import 'package:myf2app/views/home_view/patient_view/widgets/patient_card_widget.dart';
import 'widgets/carousel_medicinelist_widget.dart';
import 'widgets/patient_activity_widget.dart';
import 'widgets/patient_view_text_widget.dart';

class PatientView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        patientCard(context: context),
        patientActivity,
        Divider(
          height: 10,
          indent: 25,
          endIndent: 25,
        ),
        patientViewText,
        CarouselMedicineList(),
      ],
    );
  }
}
