import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myf2app/core/doctorProcesses/doctor_patient_card_process.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/models/doctor.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

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
                CachedNetworkImage(
                    imageUrl: model.imgUrl,
                    imageBuilder: (context, imageProvider) => CircleAvatar(
                          backgroundImage: imageProvider,
                          radius: 40,
                        ),
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain),
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
            _cardRightSide(context: context, model: model),
          ],
        ),
      ),
    );
_launchCaller(String url) async {
  if (await UrlLauncher.canLaunch(url)) {
    await UrlLauncher.launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget _cardRightSide({context, model}) {
  var loginType =
      Provider.of<LoginValidation>(context, listen: false).userModel;

  if (loginType is Patient) {
    return _cardInformation(
        title: "Doktorum",
        telNo: Doctor.searchDoctor(model.doctor).telephoneNo);
  } else if (loginType is Doctor) {
    String patientTc =
        Provider.of<DoctorPatientCardProcess>(context, listen: false)
            .currentPatientTc;
    return _cardInformation(title: "Hastam", telNo: model.telephoneNo);
  } else {
    return _cardInformation(title: "Yakınım", telNo: model.telephoneNo);
  }
}

Widget _cardInformation({String title, String telNo}) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: themeData.textTheme.display3.copyWith(
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        Row(
          children: [
            IconButton(
                icon: Icon(Icons.call, color: Colors.red),
                onPressed: () {
                  _launchCaller("tel:$telNo");
                }),
            IconButton(
                icon: Icon(Icons.mail, color: Colors.yellow),
                onPressed: () {
                  _launchCaller("sms:$telNo");
                }),
          ],
        )
      ],
    );
