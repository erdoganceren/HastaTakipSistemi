import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myf2app/core/adminProcesses/admin_processes.dart';

import 'package:myf2app/views/admin_view/admin_view.dart';
import 'package:provider/provider.dart';

import 'core/loginProcesses/login_validation.dart';
import 'core/signupProcesses/signup_validation.dart';
import 'theme/theme.dart';
import 'views/home_view/home_view.dart';
import 'views/start_view/start_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarBrightness: Brightness.light));
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AdminProcesses()),
        ChangeNotifierProvider(create: (_) => SignupValidation()),
        ChangeNotifierProvider(create: (_) => LoginValidation()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XXX Takip Sistemi',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: _getStartupScreen(),
    );
  }
}

Widget _getStartupScreen() {
  // local'de daha önceden giriş yapıp yapıldığı kontrol edilecek.
  return StartView();
  if (true) {
    return AdminView();
  }

  return HomeView();
}
