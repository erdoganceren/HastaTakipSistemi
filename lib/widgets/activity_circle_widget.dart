import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:provider/provider.dart';
import '../utils/utils.dart';

class ActivityCircle extends StatefulWidget {
  final double size;
  final double imageSize;
  final double textSize;
  final String image;
  final Color color;
  final bool animate;
  final bool dynamicAnimate;
  final String type; //bpm, adım, ml
  int value;
  ActivityCircle(
      {Key key,
      @required this.size,
      @required this.imageSize,
      @required this.textSize,
      @required this.image,
      this.color,
      this.animate = false,
      this.dynamicAnimate,
      @required this.type,
      @required this.value})
      : super(key: key);

  @override
  _ActivityCircleState createState() => _ActivityCircleState();
}

class _ActivityCircleState extends State<ActivityCircle> {
  Timer _timer;
  bool _colorLogic = false;
  int animationSpeedms;
  //database den değer çekilecek
  @override
  void initState() {
    super.initState();
    if (widget.animate) startTimer();
  }

  void startTimer() {
    if (widget.animate && widget.value != 0) {
      animationSpeedms = (1000 / (widget.value / 60)).round();

      Duration oneSec = Duration(milliseconds: animationSpeedms);
      _timer = new Timer.periodic(oneSec, (Timer timer) {
        if (mounted) {
          setState(
            () {
              _colorLogic = !_colorLogic;
            },
          );
        }
      });
    } else {
      setState(() {
        _colorLogic = false;
      });
    }
  }

  void restartTimer() {
    if (_timer != null) {
      _timer.cancel();
    }

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(widget.size / 2),
          onTap: () => Provider.of<LoginValidation>(context, listen: false)
                  .userModel is Patient
              ? showPickerNumber(context)
              : null,
          child: Container(
            height: screenAwareHeight(widget.size, context),
            width: screenAwareHeight(widget.size, context),
            child: Stack(children: [
              Align(
                alignment: Alignment(0, 0),
                child: Column(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.center,
                      width: screenAwareHeight(widget.size, context),
                      height: screenAwareHeight(widget.size, context),
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment(0, 0),
                child: AnimatedContainer(
                  curve: _colorLogic ? Curves.bounceOut : Curves.easeInExpo,
                  duration: Duration(milliseconds: 300),
                  height: _colorLogic
                      ? screenAwareHeight(widget.imageSize + 20, context)
                      : screenAwareHeight(widget.imageSize, context),
                  width: _colorLogic
                      ? screenAwareHeight(widget.imageSize + 20, context)
                      : screenAwareHeight(widget.imageSize, context),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            widget.image,
                          ),
                          colorFilter:
                              ColorFilter.mode(widget.color, BlendMode.srcIn))),
                ),
              )
            ]),
          ),
        ),
        SizedBox(
          height: screenAwareHeight(10, context),
        ),
        Text(
          "${widget.value}",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: screenAwareHeight(widget.textSize, context),
          ),
        ),
        Text(
          "${widget.type}",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.black,
            fontSize: screenAwareHeight(widget.textSize, context),
          ),
        ),
      ],
    );
  }

  showPickerNumber(BuildContext context) {
    if (widget.type == "bpm") {
      new Picker(
          adapter: NumberPickerAdapter(data: [
            NumberPickerColumn(
                begin: 0,
                end: 240,
                initValue: widget.value,
                suffix: Text(" bpm", style: TextStyle(color: Colors.black))),
          ]),
          hideHeader: false,
          cancelText: "Vazgeç",
          confirmText: "Onayla",
          builderHeader: (context) => Container(
                child:
                    Text("Kalp Atış Hızı", style: themeData.textTheme.display1),
              ),
          onConfirm: (Picker picker, List value) {
            setState(() {
              this.widget.value = (value[0] as int);
              // database aktarılcak value
            });
            restartTimer();
          }).showDialog(context);
    } else if (widget.type == "ml") {
      setState(() {
        this.widget.value += 250;
      });
    } else {
      new Picker(
          adapter: NumberPickerAdapter(data: [
            NumberPickerColumn(
              begin: 0,
              end: 100,
              initValue: (widget.value / 1000).floor(),
            ),
            NumberPickerColumn(
              begin: 0,
              end: 999,
              initValue: widget.value % 1000,
            ),
          ]),
          hideHeader: false,
          cancelText: "Vazgeç",
          confirmText: "Onayla",
          builderHeader: (context) => Container(
                child: Text("Atılan Adım Sayısı",
                    style: themeData.textTheme.display1),
              ),
          onConfirm: (Picker picker, List value) {
            setState(() {
              this.widget.value = (value[0] as int) * 1000 + (value[1] as int);
            });
          }).showDialog(context);
    }
  }
}
