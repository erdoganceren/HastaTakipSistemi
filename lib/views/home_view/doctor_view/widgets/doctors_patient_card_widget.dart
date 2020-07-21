import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myf2app/core/doctorProcesses/doctor_patient_card_process.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/home_view/doctor_view/patient_detail/patient_detail.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';

class DoctorsPatientCard extends StatelessWidget {
  final Patient model;

  const DoctorsPatientCard({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Provider.of<DoctorPatientCardProcess>(context, listen: false)
              .currentPatientTc = model.tc;
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PatientDetail(
                  model: model,
                ),
              ));
        },
        contentPadding: EdgeInsets.all(4),
        leading: CachedNetworkImage(
            imageUrl: model.imgUrl,
            imageBuilder: (context, imageProvider) => CircleAvatar(
                  backgroundImage: imageProvider,
                  radius: 30,
                ),
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
            fit: BoxFit.contain),
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
