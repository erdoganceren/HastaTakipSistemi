import 'package:flutter/material.dart';
import 'package:myf2app/utils/utils.dart';

class TitleIconContainer extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Color color;

  const TitleIconContainer({Key key, this.title, this.iconData, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      decoration: BoxDecoration(
          border: Border(
              right: BorderSide(
        width: 2,
        color: Colors.grey.withOpacity(0.6),
      ))),
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 30,
              color: color,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: color,
                  fontSize: screenAwareWidth(10, context),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
