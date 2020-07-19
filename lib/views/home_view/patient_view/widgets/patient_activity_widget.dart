import 'package:flutter/material.dart';

import '../../../../widgets/activity_circle_widget.dart';

Widget get patientActivity => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ActivityCircle(
          size: 80,
          imageSize: 40,
          textSize: 15,
          image: "assets/icons/water.png",
          animate: false,
          type: "ml",
        ),
        ActivityCircle(
            size: 120,
            imageSize: 60,
            textSize: 18,
            image: "assets/icons/heart.png",
            color: Color(0xffff0000),
            animate: true,
            type: "bpm"),
        ActivityCircle(
          size: 80,
          imageSize: 40,
          textSize: 15,
          image: "assets/icons/footprint.png",
          color: Color(0xff973097),
          animate: false,
          type: "adım",
        ),
      ],
    );
