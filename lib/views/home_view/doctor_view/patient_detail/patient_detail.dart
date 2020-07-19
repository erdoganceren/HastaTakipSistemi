import 'package:flutter/material.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/base_view.dart';
import 'package:myf2app/views/home_view/patient_view/widgets/carousel_medicinelist_widget.dart';
import 'package:myf2app/views/home_view/patient_view/widgets/patient_activity_widget.dart';
import 'package:myf2app/views/home_view/patient_view/widgets/patient_card_widget.dart';
import 'package:myf2app/views/home_view/patient_view/widgets/patient_view_text_widget.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/widgets/header_back_button_widget.dart';

class PatientDetail extends StatelessWidget {
  final Patient model;

  const PatientDetail({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      positionedTop: 0,
      child: Stack(
        children: [
          headerBackButton(
              context: context, color: UIHelper.colorPrimary.withOpacity(0.6)),
          Positioned(
              top: 90,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  patientCard(context: context, model: model),
                  patientActivity(model: model),
                  Divider(
                    height: 10,
                    indent: 25,
                    endIndent: 25,
                  ),
                  takeMedicineText,
                  CarouselMedicineList(
                    model: model,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
