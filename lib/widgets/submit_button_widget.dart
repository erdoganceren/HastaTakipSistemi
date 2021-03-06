import 'package:flutter/material.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const SubmitButton({Key key, @required this.text, @required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: screenAwareHeight(40, context),
          width: screenAwareWidth(300, context),
          child: RaisedButton(
            
            onPressed: onTap,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            padding: EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [UIHelper.colorPrimary, UIHelper.colorSecondary],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: screenAwareWidth(300.0,context), minHeight: screenAwareHeight(50.0,context)),
                alignment: Alignment.center,
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,fontSize: screenAwareWidth(12, context)),
                ),
              ),
            ),
          ),
        ),
        Text(Provider.of<LoginValidation>(context, listen: true).text,
            style: TextStyle(
                color: Colors.red, fontSize: screenAwareHeight(14, context)))
      ],
    );
  }
}
