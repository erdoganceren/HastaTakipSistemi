import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myf2app/core/doctorProcesses/doctor_patient_card_process.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/home_view/doctor_view/patient_detail/patient_detail.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';

class DoctorsPatientCard extends StatelessWidget {
  final Patient model;

  const DoctorsPatientCard({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
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
          child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal:screenAwareWidth(10,context),vertical:screenAwareHeight(6,context)),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(children: [
              CachedNetworkImage(
                  imageUrl: model.imgUrl,
                  imageBuilder: (context, imageProvider) => CircleAvatar(
                        backgroundImage: imageProvider,
                        radius: screenAwareHeight(30, context),
                      ),
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  height: screenAwareHeight(60, context),
                  width: screenAwareHeight(60, context),
                  fit: BoxFit.contain),
              SizedBox(width:screenAwareWidth(16,context)),
              Text(
                "${model.name} ${model.lastname}",
                textAlign: TextAlign.center,
                style: themeData.textTheme.display4.copyWith(
                  fontSize: screenAwareWidth(13, context),
                  color: Colors.black.withOpacity(0.6),
                ),
            ),
          ],),
          
            IconButton(
              icon: Icon(Icons.arrow_forward_ios,
              size: screenAwareWidth(20, context),
                  color: UIHelper.colorPrimary.withOpacity(0.6)),
              onPressed: () {}),
        ],)),
        
        
      ),
    );
  }
}
