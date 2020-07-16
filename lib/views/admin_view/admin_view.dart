import 'package:flutter/material.dart';
import 'package:myf2app/utils/candidate_members.dart';
import 'widgets/admin_header_widget.dart';
import 'widgets/dismissable_card_widget.dart';

class AdminView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcdde1),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: adminHeader,
            ),
            Expanded(
              flex: 6,
              child: ListView.builder(
                  itemCount: candidateMembers.length,
                  itemBuilder: (context, index) =>
                      DismissableCard(model: candidateMembers[index])),
            ),
          ],
        ),
      ),
    );
  }
}
