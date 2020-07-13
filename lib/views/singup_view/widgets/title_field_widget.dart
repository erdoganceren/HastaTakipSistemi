import 'package:flutter/material.dart';
import 'package:myf2app/core/signupProcesses/signup_validation.dart';
import 'package:myf2app/utils/utils.dart';

class TitleFieldWidget extends StatefulWidget {
  @override
  _TitleFieldWidgetState createState() => _TitleFieldWidgetState();
}

class _TitleFieldWidgetState extends State<TitleFieldWidget> {
  SignupValidation signupValidation = new SignupValidation();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text(
          "Ünvanınızı Seçin",
          style: TextStyle(
              fontSize: screenAwareHeight(15, context), color: Colors.white),
        ),
        ToggleButtons(
          borderRadius: BorderRadius.circular(10),
          borderColor: Colors.white,
          selectedBorderColor: Colors.green,
          fillColor: Colors.green,
          highlightColor: Colors.black,
          focusColor: Colors.red,
          color: Colors.red,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Doktor",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hasta",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hasta\nYakını",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
          isSelected: signupValidation.titleList,
          onPressed: (int index) {
            setState(() {
              signupValidation.titleList.setAll(0, [false, false, false]);
              signupValidation.titleList[index] = true;
            });
          },
        ),
      ]),
    );
  }
}
