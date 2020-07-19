import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/doctors_patients.dart';
import 'package:provider/provider.dart';

Widget patientCard({
  @required BuildContext context,
  String name = "Kemal\nDemir",
  String imgUrl =
      "https://pbs.twimg.com/profile_images/2197524322/826933_portrait_of_elderly_man_in_cowboy_hat_1_400x400.jpg",
}) =>
    Card(
      color: Colors.purple.withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(imgUrl),
                  radius: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: themeData.textTheme.display3.copyWith(
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
            _myDoctor(context),
          ],
        ),
      ),
    );

Widget _myDoctor(context) =>
    Provider.of<LoginValidation>(context, listen: false).userType !=
            "bireysel takip"
        ? SizedBox(height: 1)
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Doktorum",
                style: themeData.textTheme.display3.copyWith(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.call, color: Colors.red),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.mail, color: Colors.white),
                      onPressed: () {}),
                ],
              )
            ],
          );
