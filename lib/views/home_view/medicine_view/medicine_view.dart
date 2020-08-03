import 'package:flutter/material.dart';
import 'package:myf2app/core/clipper/custom_shape_clipper.dart';
import 'package:myf2app/models/medicine.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/views/base_view.dart';
import 'package:myf2app/views/home_view/doctor_view/widgets/search_bar_widget.dart';
import 'package:myf2app/views/home_view/medicine_view/widgets/header_background_image_widget.dart';
import 'package:myf2app/views/home_view/medicine_view/widgets/header_background_widget.dart';
import 'package:myf2app/views/ui_helper.dart';
import 'package:myf2app/widgets/check_box_widget.dart';

import '../../../widgets/header_back_button_widget.dart';

class MedicineView extends StatelessWidget {
  final Medicine medicine;
  final List<String> medicineTimes;
  const MedicineView({Key key, this.medicine, this.medicineTimes})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          headerBackground(context),
          headerBackgroundImage(context),
          headerBackButton(context: context, color: UIHelper.colorPrimary),
          Positioned(
              top: screenAwareHeight(290, context),
              left: 0,
              child: Container(
                height: screenAwareHeight(385, context),
                width: screenAwareWidth(375, context),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(medicine.name,
                          style: themeData.textTheme.display1
                              .copyWith(fontWeight: FontWeight.w600,fontSize: screenAwareWidth(16, context))),
                      subtitle: Text(medicine.detail,
                          style: themeData.textTheme.display1
                              .copyWith(fontWeight: FontWeight.w300,fontSize: screenAwareWidth(14, context))),
                      leading: Icon(
                        Icons.local_hospital,
                        color: Colors.red,
                        size:  screenAwareWidth(18, context)
                      ),
                    ),
                    Divider(
                      height: screenAwareHeight(1, context),
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading:
                          Icon(Icons.add_alert, color: UIHelper.colorPrimary),
                      title: Text(
                          "Bu ilaç günde ${medicineTimes.length} kere kullanılmalıdır.",
                          style: themeData.textTheme.display1.copyWith(
                              fontWeight: FontWeight.w300, fontSize: screenAwareWidth(16, context))),
                    ),
                    Divider(
                      height: screenAwareHeight(1, context),
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: medicineTimes.length,
                        itemBuilder: (context, index) => CheckBox(
                          time: medicineTimes[index],
                          medicine: medicine,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
