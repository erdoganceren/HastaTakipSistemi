import 'package:flutter/material.dart';

@override
Widget snackBar({String snackBarText, Function undo}) => SnackBar(
      content: Text(snackBarText),
      action: SnackBarAction(
        label: 'Geri Al',
        onPressed: undo,
      ),
    );
