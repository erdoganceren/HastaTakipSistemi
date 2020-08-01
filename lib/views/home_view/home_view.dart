import 'package:flutter/material.dart';
import 'package:myf2app/core/localNotification/local_notification.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/models/admin.dart';
import 'package:myf2app/models/doctor.dart';
import 'package:myf2app/models/medicine.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/home_view/admin_view/admin_view.dart';
import 'package:myf2app/views/base_view.dart';
import 'package:myf2app/views/home_view/doctor_view/doctor_view.dart';
import 'package:provider/provider.dart';
import 'patient_relative_view/patient_relative_view.dart';
import 'patient_view/patient_view.dart';

class HomeView extends StatelessWidget {
  LocalNotification notif = LocalNotification.getInstance();

  @override
  Widget build(BuildContext context) {
    return BaseView(
        exitButton: true,
        positionedTop: screenAwareHeight(90, context),
        child: _getStartupView(context));
  }

  Widget _getStartupView(context) {
    // giriş yapan hasta ? doktor ? kullanıcı yakını

    var model = Provider.of<LoginValidation>(context, listen: false).userModel;
    if (model is Doctor)
      return DoctorView(model: model); //Hasta yakını view
    else if (model is Patient) {
      _createNotifications(model);
      return PatientView(model: model); // hasta view
    } else if (model is Admin) return AdminView(model: model);
    return PatientRelativeView(model: model); // doktor view
  }

  _createNotifications(Patient model) {
    notif.deleteAllNotificationPlan();
    List<Medicine> medicines = model.medicines;
    Map<String, String> x = new Map<String, String>();
    // tüm ilaçları map'e atıyoruz. İlaç saatine göre sınıflandırıyoruz.
    for (Medicine m in medicines) {
      for (String s in m.medicineTimes) {
        x.update(
          s,
          (existingValue) => existingValue + "," + m.name,
          ifAbsent: () => m.name,
        );
      }
    }
    int hour;
    int min;
    int id = 0;

    x.forEach((time, name) {
      hour = int.parse(time.split(".")[0]) == 24
          ? 0
          : int.parse(time.split(".")[0]);
      min = int.parse(time.split(".")[1]);

      notif.setDailyNotification(
          hour, min, id, "İlaç Saati", "$name kullanmayı unutmayın!");
      id += 1;
    });
  }
}
