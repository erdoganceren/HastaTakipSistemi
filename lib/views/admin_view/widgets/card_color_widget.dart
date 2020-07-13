import 'package:flutter/material.dart';

Color cardColor(String title) {
  switch (title) {
    case "Doktor":
      return Color(0xff1abc9c);
    case "Hasta":
      return Color(0xff2980b9);
    case "Hasta Yakını":
      return Color(0xff3498db);
  }
}
