import 'package:flutter/material.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/home_view/patient_view/widgets/patient_card_widget.dart';
import 'widgets/carousel_medicinelist_widget.dart';
import 'widgets/patient_activity_widget.dart';
import 'widgets/patient_view_text_widget.dart';

class PatientView extends StatelessWidget {
  final Patient model;

  const PatientView({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        patientCard(context: context, model: model),
        patientActivity(model: model),
        Divider(
          height: screenAwareHeight(10, context),
          indent: screenAwareWidth(12, context),
          endIndent: screenAwareWidth(12, context),
        ),
        takeMedicineText,
        CarouselMedicineList(model: model),
      ],
    );
  }
}
