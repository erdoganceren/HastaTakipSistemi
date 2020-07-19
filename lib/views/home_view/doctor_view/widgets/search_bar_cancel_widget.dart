import 'package:flutter/material.dart';
import 'package:myf2app/core/doctorProcesses/search_bar_process.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';

Widget SearcBarCancel(BuildContext context) => AnimatedPositioned(
      curve: Curves.easeOutExpo,
      right: Provider.of<SearchBarProcess>(context, listen: true).isWriting
          ? 0
          : -screenAwareWidth(100, context),
      bottom: 0,
      top: 0,
      duration: Duration(seconds: 1),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(screenAwareHeight(20, context)),
        child: InkWell(
          onTap: () => Provider.of<SearchBarProcess>(context, listen: false)
              .clearSearchBar(),
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: screenAwareWidth(4, context)),
            alignment: Alignment.center,
            child: Row(
              children: [
                Icon(Icons.close,
                    size: screenAwareHeight(22, context),
                    color: UIHelper.searchBarCancelForegroundColor),
                Text(
                  UIHelper.searchBarCancelText,
                  style: themeData.textTheme.display1
                      .copyWith(color: UIHelper.searchBarCancelForegroundColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
