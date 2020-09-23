import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myf2app/core/adminProcesses/admin_processes.dart';
import 'package:myf2app/core/doctorProcesses/doctor_patient_card_process.dart';
import 'package:myf2app/core/doctorProcesses/search_bar_process.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/localNotification/local_notification.dart';
import 'core/loginProcesses/login_validation.dart';
import 'core/loginProcesses/login_validation.dart';
import 'core/navigationAnimation/fade_route_widget.dart';
import 'core/signupProcesses/signup_validation.dart';
import 'theme/theme.dart';
import 'utils/temp_datas.dart';
import 'views/home_view/home_view.dart';
import 'views/home_view/home_view.dart';
import 'views/start_view/start_view.dart';
import 'views/start_view/start_view.dart';

void main() {
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
        title: 'Aktifİz',
        debugShowCheckedModeBanner: false,
        theme: themeData,
        home: FutureBuilder(
            future: _getStartupScreen(context),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Scaffold(
                  body: Container(
                      child: Center(child: CircularProgressIndicator())),
                );
              }
              if (snapshot.connectionState == ConnectionState.done) {
                return snapshot.data;
              }
            }));
  }
}

Future<Widget> _getStartupScreen(context) async {
  print("1");
  // local'de daha önceden giriş yapıp yapıldığı kontrol edilecek.
  SharedPreferences pref = await SharedPreferences.getInstance();
  String tc = pref.getString("username");
  print("2");
  if (tc != null) {
    print("3");
    var users = TempData.users;
    for (dynamic user in users) {
      print("4");
      if (tc == user.tc) {
        Provider.of<LoginValidation>(context, listen: false).userModel = user;

        return HomeView();
      }
    }
  }
  print("5");
  return StartView();
}