import 'package:flutter/material.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'title_icon_container_widget.dart';

Widget titleIcon(String title) {
  if (title == "Doktor") {
    return TitleIconContainer(
      title: UIHelper.doctorText,
      iconData: Icons.local_hospital,
      color: Color(0xfffc5c65),
    );
  } else if (title == "Hasta")
    return TitleIconContainer(
      title: UIHelper.patientText,
      iconData: Icons.person,
      color: Color(0xff00a8ff),
    );
  else
    return TitleIconContainer(
        title: UIHelper.patientRelativeText,
        iconData: Icons.people,
        color: Color(0xff40739e));
}
