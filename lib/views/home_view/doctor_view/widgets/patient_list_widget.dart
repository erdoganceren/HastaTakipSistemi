import 'package:flutter/material.dart';
import 'package:myf2app/utils/doctors_patients.dart';

import 'doctors_patient_card_widget.dart';

Widget patientListWidget() => ListView.builder(
    itemCount: doctorspatients.length,
    itemBuilder: (context, index) => DoctorsPatientCard(
        imageUrl: doctorspatients[index]["imgUrl"],
        name: doctorspatients[index]["ad"] +
            " " +
            doctorspatients[index]["soyad"]));
