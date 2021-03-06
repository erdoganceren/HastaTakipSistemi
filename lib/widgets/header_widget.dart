import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';

class Header extends StatefulWidget {
  final bool companyTitle;

  const Header({Key key, this.companyTitle}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  Timer _timer;
  int _start = 10;
  bool _colorLogic = false;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 4);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            _start = 10;
          } else {
            _start = _start - 1;
            _colorLogic = !_colorLogic;
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: screenAwareWidth(-50, context),
          right: screenAwareWidth(-25, context),
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            width: screenAwareWidth(200, context),
            height: screenAwareWidth(200, context),
            alignment: Alignment(0.5, 0.5),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(screenAwareWidth(100, context)),
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
        ),
        Positioned(
          top: screenAwareWidth(-70, context),
          left: screenAwareWidth(-35, context),
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            width: screenAwareWidth(280, context),
            height: screenAwareWidth(280, context),
            alignment: Alignment(-0.2, 0),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(
                screenAwareWidth(140, context),
              ),
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ),
            ),
            child: widget.companyTitle
                ? Text(
                    UIHelper.companyText,
                    style: themeData.textTheme.display2.copyWith(
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.w300,
                        fontSize: screenAwareHeight(28, context)),
                  )
                : SizedBox(height: 1),
          ),
        ),
      ],
    );
  }

  List<Color> get colors {
    if (_colorLogic) {
      return [
        UIHelper.colorPrimary,
        UIHelper.colorSecondary,
      ];
    } else {
      return [
        UIHelper.colorSecondary,
        UIHelper.colorPrimary,
      ];
    }
  }
}
