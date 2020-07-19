import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myf2app/models/patient.dart';
import 'package:myf2app/utils/utils.dart';

import 'medicine_card_widget.dart';

class CarouselMedicineList extends StatelessWidget {
  final Patient model;
  const CarouselMedicineList({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenAwareWidth(375, context),
      height: screenAwareHeight(250, context),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          enlargeCenterPage: true,
          initialPage: 0,
          autoPlay: true,
        ),
        itemCount: model.medicines.length,
        itemBuilder: (context, int index) =>
            MedicineCard(medicine: model.medicines[index]),
      ),
    );
  }
}
