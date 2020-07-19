import 'package:flutter/material.dart';
import 'package:myf2app/core/adminProcesses/admin_processes.dart';
import 'package:myf2app/views/home_view/admin_view/widgets/snackbar_widget.dart';
import 'package:provider/provider.dart';
import 'candidate_member_card_widget.dart';
import 'dismissable_background_widget.dart';

class DismissableCard extends StatelessWidget {
  final model;

  const DismissableCard({Key key, @required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<AdminProcesses>(
      builder: (context, value, child) => Dismissible(
        confirmDismiss: (direction) async {
          //db'den silinecek veya onaylanacak => direction parametresine göre.
          return true;
        },
        key: Key(UniqueKey().toString()),
        resizeDuration: Duration(seconds: 1),
        direction: DismissDirection.horizontal,
        background: dismissibleBackgroundWidget(
            color: Colors.green,
            direction: AlignmentDirectional.centerStart,
            iconData: Icons.check,
            padding: EdgeInsets.only(left: 20)),
        secondaryBackground: dismissibleBackgroundWidget(
            color: Colors.red,
            direction: AlignmentDirectional.centerEnd,
            iconData: Icons.delete,
            padding: EdgeInsets.only(right: 20)),
        onDismissed: (direction) {
          switch (direction) {
            case DismissDirection.startToEnd:
              Provider.of<AdminProcesses>(context, listen: false)
                  .confirmMember();
              Scaffold.of(context).showSnackBar(
                  snackBar(snackBarText: "Onaylandı", context: context));
              break;
            case DismissDirection.endToStart:
              Provider.of<AdminProcesses>(context, listen: false)
                  .dismissMember();
              Scaffold.of(context).showSnackBar(
                  snackBar(snackBarText: "Reddedildi", context: context));
              break;
            default:
          }
        },
        child: CandidateMemberCard(model: model),
      ),
    );
  }
}
