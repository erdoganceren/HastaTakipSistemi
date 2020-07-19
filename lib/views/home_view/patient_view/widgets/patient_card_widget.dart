import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/models/doctor.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:provider/provider.dart';

Widget patientCard({
  @required BuildContext context,
  @required Patient model,
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
                  backgroundImage: NetworkImage(model.imgUrl),
                  radius: 40,
                ),
                SizedBox(
                  width: 10,
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
            _myDoctor(context: context, model: model),
          ],
        ),
      ),
    );

Widget _myDoctor({context, model}) {
  var model = Provider.of<LoginValidation>(context, listen: false).userModel;
  if (model is Patient) {
    return Column(
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
                onPressed: () {
                  print(Doctor.searchDoctor(model.doctor).telephoneNo);
                }),
            IconButton(
                icon: Icon(Icons.mail, color: Colors.white),
                onPressed: () {
                  print(Doctor.searchDoctor(model.doctor).telephoneNo);
                }),
          ],
        )
      ],
    );
  } else if (model is Doctor) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hastam",
          style: themeData.textTheme.display3.copyWith(
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        Row(
          children: [
            IconButton(
                icon: Icon(Icons.call, color: Colors.red),
                onPressed: () {
                  print(model.telephoneNo);
                }),
            IconButton(
                icon: Icon(Icons.mail, color: Colors.white),
                onPressed: () {
                  print(model.telephoneNo);
                }),
          ],
        )
      ],
    );
  } else {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Yakınım",
          style: themeData.textTheme.display3.copyWith(
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        Row(
          children: [
            IconButton(
                icon: Icon(Icons.call, color: Colors.red),
                onPressed: () {
                  print(Patient.searchPatient(model.patientTc).telephoneNo);
                }),
            IconButton(
                icon: Icon(Icons.mail, color: Colors.white),
                onPressed: () {
                  print(model.telephoneNo);
                }),
          ],
        )
      ],
    );
  }
}
