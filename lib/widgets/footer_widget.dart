import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/ui_helper.dart';

Widget get footer => Stack(
      children: [
        Positioned(
            bottom: 10,
            right: 10,
            child: Text(UIHelper.developedByText,
                style: themeData.textTheme.display4))
      ],
    );
