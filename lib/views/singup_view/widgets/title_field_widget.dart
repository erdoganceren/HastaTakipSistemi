import 'package:flutter/material.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/widgets/neu_radio_button_widget.dart';

class TitleField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal:screenAwareWidth(24,context)),
      height: screenAwareHeight(100,context),
      width: screenAwareWidth(375,context),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          UIHelper.selectTitleText,
          style: TextStyle(
              fontSize: screenAwareWidth(14, context),
              color: Colors.black.withOpacity(0.8)),
        ),
        NeuRadioButton(size: screenAwareHeight(60, context))
      ]),
    );
  }
}
