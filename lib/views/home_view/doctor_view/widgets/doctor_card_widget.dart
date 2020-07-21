import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/models/doctor.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';

Widget doctorCard({context, Doctor model}) {
  return Container(
    height: screenAwareHeight(100, context),
    child: Card(
        color: Colors.purple.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CachedNetworkImage(
                  imageUrl: model.imgUrl,
                  imageBuilder: (context, imageProvider) => CircleAvatar(
                        backgroundImage: imageProvider,
                        radius: 40,
                      ),
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.contain),
              SizedBox(
                width: screenAwareWidth(10, context),
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
        )),
  );
}
