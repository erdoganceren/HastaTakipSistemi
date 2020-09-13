import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myf2app/core/adminProcesses/admin_processes.dart';
import 'package:myf2app/core/doctorProcesses/doctor_patient_card_process.dart';
import 'package:myf2app/core/doctorProcesses/search_bar_process.dart';
import 'package:provider/provider.dart';
import 'core/loginProcesses/login_validation.dart';
import 'core/services/service.dart';
import 'core/signupProcesses/signup_validation.dart';
import 'theme/theme.dart';
import 'views/home_view/home_view.dart';
import 'views/start_view/start_view.dart';

void main() {
  Service service = Service();

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AdminProcesses()),
        ChangeNotifierProvider(create: (_) => SignupValidation()),
        ChangeNotifierProvider(create: (_) => LoginValidation()),
        ChangeNotifierProvider(create: (_) => SearchBarProcess()),
        ChangeNotifierProvider(create: (_) => DoctorPatientCardProcess()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aktivİz',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: _getStartupScreen(),
    );
  }
}

Widget _getStartupScreen() {
  // local'de daha önceden giriş yapıp yapıldığı kontrol edilecek.

  if (true) {
    return StartView();
  }
  return HomeView();
}
