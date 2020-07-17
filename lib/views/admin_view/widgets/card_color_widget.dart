import 'package:flutter/material.dart';

Color cardColor(String title) {
  switch (title) {
    case "Doktor":
      return Color(0xffdcdde1).withOpacity(0.6);
    case "Hasta":
      return Color(0xffced6e0).withOpacity(0.6);
    case "Hasta Yakını":
      return Color(0xff7f8fa6).withOpacity(0.6);
  }
}
