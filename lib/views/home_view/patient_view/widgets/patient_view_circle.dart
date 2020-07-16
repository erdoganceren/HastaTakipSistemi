import 'package:flutter/material.dart';
import '../../../../utils/utils.dart';

class PatientViewCircle extends StatelessWidget {
  final double size;
  final double imageSize;
  final double textSize;
  final String text;
  final String image;
  final Color color;

  const PatientViewCircle(
      {Key key,
      @required this.size,
      @required this.imageSize,
      @required this.textSize,
      @required this.text,
      @required this.image,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              alignment: AlignmentDirectional.bottomCenter,
              width: screenAwareHeight(size, context),
              height: screenAwareHeight(size, context),
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
              child: Center(
                child: Tab(
                  icon: Image.asset(image,
                      color: color,
                      height: screenAwareHeight(imageSize, context),
                      width: screenAwareHeight(imageSize, context)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenAwareHeight(10, context),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              fontSize: screenAwareHeight(textSize, context),
            ),
          ),
        ],
      ),
    );
  }
}
