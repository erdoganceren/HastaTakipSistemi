import 'package:flutter/material.dart';
import 'package:myf2app/core/doctorProcesses/search_bar_process.dart';
import 'package:myf2app/models/doctor.dart';
import 'package:myf2app/models/patient.dart';
import 'package:provider/provider.dart';
import 'doctors_patient_card_widget.dart';

class PatientList extends StatelessWidget {
  final Doctor doctor;
  PatientList({Key key, @required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<SearchBarProcess>(context, listen: false).initPatientTcList =
        doctor.patients;
    Provider.of<SearchBarProcess>(context, listen: false).searching();
    var patientsTc = Provider.of<SearchBarProcess>(context, listen: true)
        .searchResultPatientTcList;
    return ListView.builder(
        itemCount: patientsTc.length,
        itemBuilder: (context, index) => DoctorsPatientCard(
            model: Patient.searchPatient(patientsTc[index])));
  }
}
