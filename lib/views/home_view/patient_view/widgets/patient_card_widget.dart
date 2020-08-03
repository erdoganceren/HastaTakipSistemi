import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myf2app/core/doctorProcesses/doctor_patient_card_process.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/models/doctor.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
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
        padding: EdgeInsets.all(screenAwareHeight(8.0, context)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CachedNetworkImage(
                    imageUrl: model.imgUrl,
                    imageBuilder: (context, imageProvider) => CircleAvatar(
                          backgroundImage: imageProvider,
                          radius: screenAwareHeight(40, context),
                        ),
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    height: screenAwareHeight(100, context),
                    width: screenAwareHeight(100, context),
                    fit: BoxFit.contain),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "${model.name}\n${model.lastname}",
                  textAlign: TextAlign.center,
                  style: themeData.textTheme.display3.copyWith(
                    fontSize:screenAwareWidth(16, context),
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
        telNo: Doctor.searchDoctor(model.doctor).telephoneNo,context:context);
  } else if (loginType is Doctor) {
    return _cardInformation(
        title: "Hastam", telNo: model.telephoneNo, context: context);
  } else {
    return _cardInformation(
        title: "Yakınım", telNo: model.telephoneNo, context: context);
  }
}

Widget _cardInformation({String title, String telNo, context}) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: themeData.textTheme.display3.copyWith(
            color: Colors.white.withOpacity(0.8),
            fontSize: screenAwareHeight(18, context)
          ),
        ),
        Row(
          children: [
            IconButton(
                icon: Icon(
                  Icons.call,
                  color: Colors.red,
                  size: screenAwareWidth(22, context),
                ),
                onPressed: () {
                  _launchCaller("tel:$telNo");
                }),
            SizedBox(width:screenAwareWidth(10,context)),
            IconButton(
                icon: Icon(
                  Icons.mail,
                  color: Colors.yellow,
                  size: screenAwareWidth(22, context),
                ),
                onPressed: () {
                  _launchCaller("sms:$telNo");
                }),
          ],
        )
      ],
    );
