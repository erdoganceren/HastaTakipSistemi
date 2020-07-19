import 'package:flutter/material.dart';
import 'package:myf2app/models/doctor.dart';
import 'package:myf2app/models/patient.dart';
import 'doctors_patient_card_widget.dart';

Widget patientListWidget({Doctor model}) => ListView.builder(
    itemCount: model.patients.length,
    itemBuilder: (context, index) => DoctorsPatientCard(
        model: Patient.searchPatient(model.patients[index])));
