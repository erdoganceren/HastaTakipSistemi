import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/models/doctor.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';

Widget doctorCard({context, Doctor model}) {
  return Card(
      color: Colors.purple.withOpacity(0.2),
      child: Padding(
        padding: EdgeInsets.all(screenAwareHeight(8.0, context)),
        child: Row(
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
              width: screenAwareWidth(10, context),
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
      ));
}
