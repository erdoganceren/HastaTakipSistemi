import 'package:flutter/material.dart';
import 'package:myf2app/views/ui_helper.dart';

Widget get takeMedicineText => Container(
      alignment: Alignment(-0.9, 0),
      child: Text(
        UIHelper.medicineListText,
        style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 18,
            fontWeight: FontWeight.w400),
      ),
    );
