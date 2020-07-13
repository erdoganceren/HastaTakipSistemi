import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import '../../ui_helper.dart';

Widget get adminHeader => Container(
      color: Color(0xffc0392b),
      child: Stack(
        children: [
          Positioned(
            top: 30,
            left: 18,
            child: Text(
              UIHelper.companyText,
              style: themeData.textTheme.display3
                  .copyWith(color: Colors.white.withOpacity(0.6)),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.5),
            child: Text("Admin Panel",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
        ],
      ),
    );
