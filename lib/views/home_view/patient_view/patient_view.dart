import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/widgets/header_widget.dart';
import '../../../utils/utils.dart';
import 'widgets/medicine_card_widget.dart';
import 'widgets/patient_view_circle.dart';

class PatientView extends StatelessWidget {
  List<Widget> cards = [MedicineCard(), MedicineCard(), MedicineCard()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: double.infinity,
                  height: screenAwareHeight(220, context),
                  child: Header()),
            ),
            Positioned(
              top: screenAwareHeight(90, context),
              left: 0,
              child: Container(
                width: screenAwareHeight(375, context),
                child: Column(
                  children: [
                    Card(
                      color: Colors.purple.withOpacity(0.2),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://images.squarespace-cdn.com/content/v1/5b74a6fc3e2d09ca4e020b70/1534453832715-LOOYARY876Z8HMIUQWYQ/ke17ZwdGBToddI8pDm48kDYxwbrkhyAXrmFnYmKgR1ZZw-zPPgdn4jUwVcJE1ZvWEtT5uBSRWt4vQZAgTJucoTqqXjS3CfNDSuuf31e0tVG-N7Iu4-LM8f9y3eH629CVYhDWgoBJmZWxaOdtH9tg8xGjERdLCPz462375y5GfGU/big-Dr.+Lysak+Profile.jpg"),
                                  radius: 40,
                                ),
                                SizedBox(
                                  width: 10,
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Doktorum",
                                  style: themeData.textTheme.display3.copyWith(
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        icon:
                                            Icon(Icons.call, color: Colors.red),
                                        onPressed: () {}),
                                    IconButton(
                                        icon: Icon(Icons.mail,
                                            color: Colors.white),
                                        onPressed: () {}),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PatientViewCircle(
                          size: 80,
                          imageSize: 40,
                          textSize: 15,
                          text: "1000\nml",
                          image: "assets/icons/water.png",
                        ),
                        PatientViewCircle(
                          size: 120,
                          imageSize: 75,
                          textSize: 18,
                          text: "10.000\nadım",
                          image: "assets/icons/footprint.png",
                          color: Color(0xff973097),
                        ),
                        PatientViewCircle(
                          size: 80,
                          imageSize: 40,
                          textSize: 15,
                          text: "190\nbpm",
                          image: "assets/icons/heart.png",
                          color: Color(0xffff0000),
                        )
                      ],
                    ),
                    Divider(
                      height: 10,
                      indent: 25,
                      endIndent: 25,
                    ),
                    Align(
                      alignment: Alignment(-0.9, 0),
                      child: Text(
                        "Kullanılacak İlaçlar",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      width: screenAwareWidth(375, context),
                      height: screenAwareHeight(250, context),
                      child: CarouselSlider.builder(
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          initialPage: 0,
                          autoPlay: true,
                        ),
                        itemCount: cards.length,
                        itemBuilder: (context, int index) => cards[index],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
