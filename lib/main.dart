import 'package:flutter/material.dart';
import 'theme/theme.dart';
import 'views/home_view/home_view.dart';
import 'views/login_view/login_view.dart';
import 'views/start_view/start_view.dart';

void main() {
  runApp(MyApp());
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

  if (true) {
    return StartView();
  }

  return HomeView();
}
