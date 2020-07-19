import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';

Widget doctorCard(context) => Container(
      height: screenAwareHeight(100, context),
      child: Card(
          color: Colors.purple.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.squarespace-cdn.com/content/v1/5b74a6fc3e2d09ca4e020b70/1534453832715-LOOYARY876Z8HMIUQWYQ/ke17ZwdGBToddI8pDm48kDYxwbrkhyAXrmFnYmKgR1ZZw-zPPgdn4jUwVcJE1ZvWEtT5uBSRWt4vQZAgTJucoTqqXjS3CfNDSuuf31e0tVG-N7Iu4-LM8f9y3eH629CVYhDWgoBJmZWxaOdtH9tg8xGjERdLCPz462375y5GfGU/big-Dr.+Lysak+Profile.jpg"),
                  radius: 40,
                ),
                SizedBox(
                  width: screenAwareWidth(10, context),
                ),
                Text(
                  "Jesus\nCrysis",
                  textAlign: TextAlign.center,
                  style: themeData.textTheme.display3.copyWith(
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          )),
    );
