import 'package:flutter/material.dart';
import 'package:myf2app/core/localNotification/notification_helper.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/models/admin.dart';
import 'package:myf2app/models/doctor.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/home_view/admin_view/admin_view.dart';
import 'package:myf2app/views/base_view.dart';
import 'package:myf2app/views/home_view/doctor_view/doctor_view.dart';
import 'package:provider/provider.dart';
import 'patient_relative_view/patient_relative_view.dart';
import 'patient_view/patient_view.dart';

class HomeView extends StatelessWidget {
  NotificationHelper _notificationHelper = NotificationHelper();

  @override
  Widget build(BuildContext context) {
    return BaseView(
        exitButton: true,
        positionedTop:  screenAwareWidth(90, context),
        child: _getStartupView(context));
  }

  Widget _getStartupView(context) {
    // giriş yapan hasta ? doktor ? kullanıcı yakını

    var model = Provider.of<LoginValidation>(context, listen: false).userModel;
    if (model is Doctor)
      return DoctorView(model: model); //Hasta yakını view
    else if (model is Patient) {
      _notificationHelper.createMedicineNotifications(model);
      _notificationHelper.createWaterNotifications();
      return PatientView(model: model); // hasta view
    } else if (model is Admin) return AdminView(model: model);
    return PatientRelativeView(model: model); // doktor view
  }
}
