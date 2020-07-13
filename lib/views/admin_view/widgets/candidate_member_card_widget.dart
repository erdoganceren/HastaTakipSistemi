import 'package:flutter/material.dart';
import 'package:myf2app/views/admin_view/widgets/snackbar_widget.dart';

import 'card_color_widget.dart';
import 'dismissable_background_widget.dart';
import 'title_icon_widget.dart';

class CandidateMemberCard extends StatefulWidget {
  final model;

  const CandidateMemberCard({Key key, this.model}) : super(key: key);

  @override
  _CandidateMemberCardState createState() => _CandidateMemberCardState();
}

class _CandidateMemberCardState extends State<CandidateMemberCard> {
  bool isUndo = false;

  void undo() {
    setState(() {
      isUndo = true;
    });
    isUndo = false;
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      confirmDismiss: (direction) async {
        if (isUndo) {
          return false;
        }
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
            // kullanıcı onaylandı
            Scaffold.of(context)
                .showSnackBar(snackBar(snackBarText: "Onaylandı", undo: undo));
            break;
          case DismissDirection.endToStart:
            // kullanıcı reddedildi
            Scaffold.of(context)
                .showSnackBar(snackBar(snackBarText: "Reddedildi", undo: undo));
            break;
          default:
        }
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 4),
        elevation: 6,
        color: cardColor(widget.model["unvan"]),
        child: ListTile(
          leading: Container(child: titleIcon(widget.model["unvan"])),
          title: Text(
            "${widget.model["ad"]} ${widget.model["soyad"]}",
          ),
          subtitle: Row(
            children: [
              Text(
                widget.model["tc"],
              ),
            ],
          ),
          trailing: Icon(Icons.arrow_forward_ios,
              color: Colors.white.withOpacity(0.6)),
        ),
      ),
    );
  }
}
