import 'package:flutter/material.dart';

const double baseHeight = 667;
const double baseWidth = 375;

double screenAwareHeight(double size, BuildContext context) {
  double statusBarHeight = MediaQuery.of(context).padding.top;
  return size * MediaQuery.of(context).size.height / baseHeight;
}

double screenAwareWidth(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.width / baseWidth;
}
