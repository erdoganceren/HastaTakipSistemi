import 'package:flutter/material.dart';
import 'package:myf2app/core/localNotification/local_notification.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';

class CheckBox extends StatefulWidget {
  final String time;
  final String medicineName;
  CheckBox({Key key, @required this.time, @required this.medicineName})
      : super(key: key);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isSelected = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var userInformation = Provider.of<LoginValidation>(context, listen: false);
    return InkWell(
      onTap: () {
        userInformation.userModel is Patient
            ? setState(() {
                isSelected = !isSelected;
              })
            : null;
      },
      child: Card(
        color:
            isSelected ? Colors.green : UIHelper.colorPrimary.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.av_timer,
                      color: isSelected ? Colors.white : Colors.black,
                      size: 28),
                  SizedBox(
                    width: screenAwareWidth(20, context),
                  ),
                  Text(
                    widget.time,
                    style: themeData.textTheme.display1.copyWith(
                        color: isSelected ? Colors.white : Colors.black),
                  ),
                ],
              ),
              selectedIcon,
            ],
          ),
        ),
      ),
    );
  }

  Widget get selectedIcon {
    if (isSelected) {
      return Icon(Icons.check, color: Colors.white);
    }
    return SizedBox(
      width: 0,
    );
  }
}
