import 'package:flutter/material.dart';

ThemeData get themeData => ThemeData.light().copyWith(
      backgroundColor: Colors.blue,
      buttonColor: Colors.blue,
      scaffoldBackgroundColor: Colors.blue,
      textTheme: TextTheme(
        display1: TextStyle(color: Colors.white),
        headline: TextStyle(color: Colors.blue, fontSize: 28),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        filled: true,
        labelStyle: TextStyle(color: Colors.black.withOpacity(0.8)),
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(0.8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.white),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
