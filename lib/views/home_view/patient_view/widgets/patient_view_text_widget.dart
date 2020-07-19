import 'package:flutter/material.dart';

Widget get takeMedicineText => Container(
      alignment: Alignment(-0.9, 0),
      child: Text(
        "Kullanılacak İlaçlar",
        style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 18,
            fontWeight: FontWeight.w400),
      ),
    );
