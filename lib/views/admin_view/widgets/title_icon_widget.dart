import 'package:flutter/material.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/admin_view/widgets/title_icon_container_widget.dart';

Widget titleIcon(String title) {
  if (title == "Doktor") {
    return TitleIconContainer(
      title: "Doctor",
      iconData: Icons.local_hospital,
    );
  } else if (title == "Hasta")
    return TitleIconContainer(
      title: "Hasta",
      iconData: Icons.person,
    );
  else
    return TitleIconContainer(
      title: "Hasta\nYakını",
      iconData: Icons.people,
    );
}
