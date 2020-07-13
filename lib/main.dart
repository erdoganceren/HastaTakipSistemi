import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:myf2app/views/admin_view/admin_view.dart';
=======

import 'theme/theme.dart';
import 'views/home_view/home_view.dart';
import 'views/start_view/start_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.blue,
      statusBarColor: Colors.pink,
      statusBarBrightness: Brightness.light));
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
    return AdminView();
  }

  return HomeView();
}
