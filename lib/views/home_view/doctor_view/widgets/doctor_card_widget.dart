import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/models/doctor.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:provider/provider.dart';

Widget doctorCard({context, Doctor model}) {
  print(model.imgUrl);
  return Container(
    height: screenAwareHeight(100, context),
    child: Card(
        color: Colors.purple.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(model.imgUrl),
                radius: 40,
              ),
              SizedBox(
                width: screenAwareWidth(10, context),
              ),
              Text(
                "${model.name}\n${model.lastname}",
                textAlign: TextAlign.center,
                style: themeData.textTheme.display3.copyWith(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ],
          ),
        )),
  );
}
