import 'package:flutter/material.dart';
import 'package:myf2app/core/adminProcesses/admin_processes.dart';
import 'package:provider/provider.dart';

@override
Widget snackBar({String snackBarText, BuildContext context}) => SnackBar(
      content: Text(snackBarText),
      action: SnackBarAction(
        label: 'Geri Al',
        onPressed: () =>
            Provider.of<AdminProcesses>(context, listen: false).undo(),
      ),
    );
