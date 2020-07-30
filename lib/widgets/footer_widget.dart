import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';

Widget footer(context) => Text(
      UIHelper.developedByText,
      style: themeData.textTheme.display4
          .copyWith(fontSize: screenAwareHeight(14, context)),
      textAlign: TextAlign.center,
    );
