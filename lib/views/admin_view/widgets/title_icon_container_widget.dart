import 'package:flutter/material.dart';
import 'package:myf2app/utils/utils.dart';

class TitleIconContainer extends StatelessWidget {
  final String title;
  final IconData iconData;

  const TitleIconContainer({Key key, this.title, this.iconData})
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
              color: Colors.white.withOpacity(0.8),
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: screenAwareWidth(11, context),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
