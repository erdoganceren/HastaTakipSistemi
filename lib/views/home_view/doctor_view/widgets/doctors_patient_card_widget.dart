import 'package:flutter/material.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/home_view/doctor_view/patient_detail/patient_detail.dart';
import 'package:myf2app/views/ui_helper.dart';

class DoctorsPatientCard extends StatelessWidget {
  final Patient model;

  const DoctorsPatientCard({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PatientDetail(
                  model: model,
                ),
              ));
        },
        contentPadding: EdgeInsets.all(4),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(model.imgUrl),
          radius: 30,
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "${model.name} ${model.lastname}",
            textAlign: TextAlign.center,
            style: themeData.textTheme.display4.copyWith(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ),
        trailing: IconButton(
            icon: Icon(Icons.arrow_forward_ios,
                color: UIHelper.colorPrimary.withOpacity(0.6)),
            onPressed: () {}),
      ),
    );
  }
}
