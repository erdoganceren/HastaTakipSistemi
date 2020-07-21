import 'package:flutter/material.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'search_bar_cancel_widget.dart';
import 'search_bar_textfield_widget.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(children: [
        Align(
          alignment: Alignment(0, 0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: UIHelper.searchBarBackgroundColor,
                  borderRadius:
                      BorderRadius.circular(screenAwareHeight(20, context)),
                ),
                child: SearchBarTextfield(context),
              ),
            ],
          ),
        ),
        SearcBarCancel(context),
      ],),
    );
  }
}
