import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/candidate_members.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/base_view.dart';
import 'package:myf2app/widgets/footer_widget.dart';
import 'package:myf2app/widgets/header_widget.dart';
import 'widgets/dismissable_card_widget.dart';

class AdminView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      positionedTop: screenAwareHeight(120, context),
      companyTitle: true,
      child: Stack(
        children: [
          Positioned(
            left: screenAwareWidth(40, context),
            top: 0,
            child: Text(
              "Admin Panel",
              style: themeData.textTheme.display2,
            ),
          ),
          Positioned(
            top: screenAwareHeight(50, context),
            left: 0,
            right: 0,
            child: Container(
              height: screenAwareHeight(535, context),
              width: double.infinity,
              child: ListView.builder(
                  itemCount: candidateMembers.length,
                  itemBuilder: (context, index) =>
                      DismissableCard(model: candidateMembers[index])),
            ),
          ),
        ],
      ),
    );
  }
}
