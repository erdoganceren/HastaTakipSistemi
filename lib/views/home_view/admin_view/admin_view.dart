import 'package:flutter/material.dart';
import 'package:myf2app/models/admin.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/candidate_members.dart';
import 'package:myf2app/utils/utils.dart';
import 'widgets/dismissable_card_widget.dart';

class AdminView extends StatelessWidget {
  final Admin model;

  const AdminView({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: screenAwareWidth(40, context),
          top: 0,
          child: Text(
            "Admin Panel",
            style: themeData.textTheme.display3.copyWith(fontSize: 26),
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
    );
  }
}
