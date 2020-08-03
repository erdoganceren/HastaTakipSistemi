import 'package:flutter/material.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';

Widget takeMedicineText(context) => Container(
      alignment: Alignment(-0.9, 0),
      child: Text(
        UIHelper.medicineListText,
        style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: screenAwareWidth(18,context),
            fontWeight: FontWeight.w400),
      ),
    );
