import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/ui_helper.dart';

Widget get footer => Text(
      UIHelper.developedByText,
      style: themeData.textTheme.display4,
      textAlign: TextAlign.center,
    );
