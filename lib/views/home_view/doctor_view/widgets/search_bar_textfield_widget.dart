import 'package:flutter/material.dart';
import 'package:myf2app/core/doctorProcesses/search_bar_process.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:provider/provider.dart';
import '../../../ui_helper.dart';

Widget SearchBarTextfield(BuildContext context) => TextField(
      controller: Provider.of<SearchBarProcess>(context).controller,
      style: TextStyle(color: Colors.black87),
      cursorColor: UIHelper.searchBarCusorColor,
      keyboardType: TextInputType.text,
      onChanged: (value) {
        Provider.of<SearchBarProcess>(context, listen: false).searchBarText =
            value;
      },
      decoration: new InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          prefixIcon: Icon(Icons.search,
              size: screenAwareHeight(26, context),
              color: UIHelper.colorPrimary.withOpacity(0.8)),
          contentPadding: EdgeInsets.all(screenAwareWidth(14, context)),
          hintText: UIHelper.searchBarHintText,
          hintStyle: TextStyle(color: Colors.black54)),
    );
