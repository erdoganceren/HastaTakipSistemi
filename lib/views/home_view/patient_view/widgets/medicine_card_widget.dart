import 'package:flutter/material.dart';
import '../../../../utils/utils.dart';

class MedicineCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.center,
        height: screenAwareHeight(190, context),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff00a8ff), Color(0xff4cd137)],
              begin: AlignmentDirectional.bottomStart,
              end: AlignmentDirectional.topEnd,
            ),
            boxShadow: [
              BoxShadow(
                  color: Color(0xff00a8ff),
                  blurRadius: 4,
                  offset: Offset(-2, 5)),
              BoxShadow(
                  color: Color(0xff4cd137), blurRadius: 4, offset: Offset(2, 2))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "İlaç İsmi",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 19),
            ),
            Divider(
              color: Colors.white,
              height: 3,
              indent: 8,
              endIndent: 8,
            ),
            Container(
              height: screenAwareHeight(60, context),
              width: screenAwareWidth(180, context),
              alignment: Alignment.center,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: screenAwareWidth(55, context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.timer, color: Colors.white),
                        Text(
                          "07.00",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenAwareWidth(55, context),
                    child: Column(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.white,
                        ),
                        Text("14.00", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  Container(
                    width: screenAwareWidth(55, context),
                    child: Column(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.white,
                        ),
                        Text("20.00", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Günde 3 kez, 1 tablet içilecek.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Detay",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                  size: 20,
                )
              ],
            ),
            SizedBox(
              height: 6,
            )
          ],
        ),
      ),
    );
  }
}
