import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:myf2app/core/localNotification/notification_helper.dart';
import 'package:myf2app/core/loginProcesses/login_validation.dart';
import 'package:myf2app/models/medicine.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:provider/provider.dart';

class CheckBox extends StatefulWidget {
  String time;
  final Medicine medicine;

  CheckBox({Key key, @required this.time, @required this.medicine})
      : super(key: key);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isSelected = false;
  NotificationHelper _notificationHelper = NotificationHelper();
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
      return Icon(Icons.check, color: Colors.white, size: 24);
    }
    return Container(
      height: 24,
      width: 24,
      child: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.settings),
          onPressed: () {
            numberPicker();
          }),
    );
  }

  numberPicker() {
    int hour = int.parse(widget.time.split(".")[0]);
    int minute = int.parse(widget.time.split(".")[1]);

    Picker(
        adapter: NumberPickerAdapter(data: [
          NumberPickerColumn(
            begin: 0,
            end: 23,
            initValue: hour,
          ),
          NumberPickerColumn(
            begin: 0,
            end: 59,
            initValue: minute,
          ),
        ]),
        hideHeader: false,
        cancelText: "Vazgeç",
        confirmText: "Onayla",
        builderHeader: (context) => Container(
              child: Text("İlaç Saatini Güncelle",
                  style: themeData.textTheme.display1),
            ),
        onConfirm: (Picker picker, List value) {
          Patient model =
              Provider.of<LoginValidation>(context, listen: false).userModel;
          String valueStr0 = value[0] < 10 ? "0${value[0]}" : "${value[0]}";
          String valueStr1 = value[1] < 10 ? "0${value[1]}" : "${value[1]}";
          model.setMedicineTime(
              widget.medicine, widget.time, "${valueStr0}.${valueStr1}");
          _notificationHelper.createMedicineNotifications(model);
          _notificationHelper.createWaterNotifications();
          setState(() {
            widget.time = "${valueStr0}.${valueStr1}";
          });
        }).showDialog(context);
  }
}
