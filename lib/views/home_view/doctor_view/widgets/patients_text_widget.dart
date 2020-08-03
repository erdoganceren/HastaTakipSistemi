import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';

Widget  patientsText(context) => Text("Hastalarım",
    textAlign: TextAlign.start,
    style: themeData.textTheme.headline2
        .copyWith(color: UIHelper.colorPrimary.withOpacity(0.8),fontSize: screenAwareWidth(14, context)));
