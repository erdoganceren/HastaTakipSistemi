import 'package:flutter/material.dart';
import 'package:myf2app/core/localNotification/local_notification.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/home_view/patient_view/widgets/patient_card_widget.dart';
import 'widgets/carousel_medicinelist_widget.dart';
import 'widgets/patient_activity_widget.dart';
import 'widgets/patient_view_text_widget.dart';

class PatientView extends StatelessWidget {
  final Patient model;

  PatientView({Key key, this.model}) : super(key: key);
  LocalNotification notif = LocalNotification.getInstance();
  @override
  Widget build(BuildContext context) {
    /*Future fx(String payload) async {
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                title: Text("Payload", style: themeData.textTheme.display2),
                content: Text("$payload", style: themeData.textTheme.display2),
              ));
    }

    notif.setOnSelectNotification(fx);
    notif.showNotificationPlans().then((value) {
      for (var v in value) {
        print(v.id);
      }
    });
    */
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
