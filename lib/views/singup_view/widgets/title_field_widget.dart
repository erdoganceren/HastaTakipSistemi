import 'package:flutter/material.dart';
import 'package:myf2app/core/signupProcesses/signup_validation.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';

class TitleField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text(
          UIHelper.selectTitleText,
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
                UIHelper.doctorText,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  UIHelper.patientText,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  UIHelper.patientRelativeText,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
          isSelected:
              Provider.of<SignupValidation>(context, listen: true).titleList,
          onPressed: (int index) {
            Provider.of<SignupValidation>(context, listen: false).titleList =
                index;
          },
        ),
      ]),
    );
  }
}
