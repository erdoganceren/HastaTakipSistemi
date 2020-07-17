import 'package:flutter/material.dart';

ThemeData get themeData => ThemeData.light().copyWith(
      scaffoldBackgroundColor: Color(0xfff5f6fa),
      textTheme: TextTheme(
        display1: TextStyle(color: Colors.black),
        display2: TextStyle(
            color: Colors.black, fontSize: 28, fontWeight: FontWeight.w600),
        display3: TextStyle(
            color: Colors.black.withOpacity(0.4),
            fontWeight: FontWeight.w400,
            letterSpacing: 0.4,
            fontSize: 18),
        display4: TextStyle(color: Colors.black.withOpacity(0.5)),
        headline: TextStyle(
            color: Colors.black.withOpacity(0.6),
            shadows: [Shadow(color: Colors.teal, blurRadius: 1)],
            fontSize: 36,
            fontWeight: FontWeight.w300),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        labelStyle: TextStyle(color: Colors.black.withOpacity(0.8)),
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.6),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.teal,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.4)),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.red.withOpacity(0.4)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.red.withOpacity(0.4)),
        ),
      ),
    );
