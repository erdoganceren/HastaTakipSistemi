import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';

import 'card_color_widget.dart';
import 'title_icon_widget.dart';

class CandidateMemberCard extends StatelessWidget {
  final model;

  const CandidateMemberCard({Key key, @required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      elevation: 6,
      color: Colors.white,
      child: ListTile(
        leading: Container(child: titleIcon(model["unvan"])),
        title: Text(
          "${model["ad"]} ${model["soyad"]}",
          style: themeData.textTheme.display1,
        ),
        subtitle: Row(
          children: [
            Text(
              model["tc"],
              style: themeData.textTheme.display1,
            ),
          ],
        ),
        trailing:
            Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.6)),
      ),
    );
  }
}
