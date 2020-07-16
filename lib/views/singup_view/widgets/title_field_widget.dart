import 'package:flutter/material.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/widgets/neu_radio_button_widget.dart';

class TitleField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 375,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text(
          UIHelper.selectTitleText,
          style: TextStyle(
              fontSize: screenAwareHeight(15, context),
              color: Colors.black.withOpacity(0.8)),
        ),
        NeuRadioButton(size: screenAwareHeight(60, context))
      ]),
    );
  }
}
