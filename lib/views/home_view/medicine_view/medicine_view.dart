import 'package:flutter/material.dart';
import 'package:myf2app/core/clipper/custom_shape_clipper.dart';
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
  final Map<String, dynamic> medicine;
  const MedicineView({Key key, this.medicine}) : super(key: key);
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
                      title: Text(medicine["isim"],
                          style: themeData.textTheme.display1
                              .copyWith(fontWeight: FontWeight.w600)),
                      subtitle: Text(medicine["detay"],
                          style: themeData.textTheme.display1
                              .copyWith(fontWeight: FontWeight.w300)),
                      leading: Icon(
                        Icons.local_hospital,
                        color: Colors.red,
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
                          "Bu ilaç günde ${medicine["kullanım"]} kere kullanılmalıdır.",
                          style: themeData.textTheme.display1.copyWith(
                              fontWeight: FontWeight.w300, fontSize: 16)),
                    ),
                    Divider(
                      height: screenAwareHeight(1, context),
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: medicine["kullanım"],
                        itemBuilder: (context, index) => CheckBox(
                          time: (24 / medicine["kullanım"] * (index + 1))
                              .toStringAsFixed(2),
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
