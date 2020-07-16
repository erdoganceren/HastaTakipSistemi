import 'package:flutter/material.dart';
import 'package:myf2app/core/signupProcesses/signup_validation.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';

class NeuRadioButton extends StatelessWidget {
  final List<String> text = [
    UIHelper.doctorText,
    UIHelper.patientText,
    UIHelper.patientRelativeText
  ];
  final double size;

  NeuRadioButton({Key key, this.size = 60}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Provider.of<SignupValidation>(context).titleList[0]
            ? convex(context: context, index: 0)
            : concavNeu(context: context, index: 0),
        Provider.of<SignupValidation>(context).titleList[1]
            ? convex(context: context, index: 1)
            : concavNeu(context: context, index: 1),
        Provider.of<SignupValidation>(context).titleList[2]
            ? convex(context: context, index: 2)
            : concavNeu(context: context, index: 2),
      ],
    );
  }

  Widget concavNeu({context, index}) {
    return InkWell(
      borderRadius: BorderRadius.circular(size / 2.1),
      onTap: () => Provider.of<SignupValidation>(context, listen: false)
          .titleList = index,
      child: Container(
        width: size,
        height: size,
        child: Center(
          child: Text(
            text[index],
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: size / 5),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(size / 2)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.grey[300], Color(0xFFf6faf6), Colors.white],
            stops: [0.1, 0.5, 0.9],
          ),
        ),
      ),
    );
  }

  Widget convex({context, index}) {
    return Container(
      width: size,
      height: size,
      child: Center(
          child: Text(text[index],
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: size / 5))),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.grey[100],
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(1.0, 1.0),
                blurRadius: 3.0,
                spreadRadius: 2.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-1.0, -1.0),
                blurRadius: 3.0,
                spreadRadius: 2.0)
          ]),
    );
  }
}
