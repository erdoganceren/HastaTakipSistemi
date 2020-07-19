import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/ui_helper.dart';

Widget get patientsText => Text("Hastalarım",
    textAlign: TextAlign.start,
    style: themeData.textTheme.headline2
        .copyWith(color: UIHelper.colorPrimary.withOpacity(0.8)));
