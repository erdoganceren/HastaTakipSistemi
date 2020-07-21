import 'package:flutter/material.dart';
import 'package:myf2app/models/medicine.dart';
import 'package:myf2app/views/home_view/medicine_view/medicine_view.dart';
import 'package:myf2app/views/ui_helper.dart';
import '../../../../utils/utils.dart';

class MedicineCard extends StatelessWidget {
  final Medicine medicine;
  const MedicineCard({Key key, @required this.medicine}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MedicineView(
                      medicine: medicine,
                    )));
      },
      child: Card(
        child: Container(
          alignment: Alignment.center,
          height: screenAwareHeight(190, context),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                UIHelper.colorPrimary,
                UIHelper.colorPrimary.withOpacity(0.4)
              ],
              begin: AlignmentDirectional.bottomStart,
              end: AlignmentDirectional.topEnd,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenAwareHeight(10, context),
              ),
              Text(
                medicine.name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 19),
              ),
              Divider(
                color: Colors.white,
                height: 3,
                indent: 8,
                endIndent: 8,
              ),
              Container(
                height: screenAwareHeight(60, context),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: medicine.countOfDay,
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenAwareWidth(15, context)),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.timer, color: Colors.white),
                        Text(
                          "${(24 / medicine.countOfDay * (index + 1)).toStringAsFixed(2)}",
                          style: TextStyle(
                              fontSize: screenAwareHeight(16, context)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                "Günde ${medicine.countOfDay} kere kullanılmalıdır.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenAwareHeight(16, context),
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Detay",
                    style: TextStyle(
                      fontSize: screenAwareHeight(16, context),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                    size: screenAwareHeight(20, context),
                  )
                ],
              ),
              SizedBox(
                height: screenAwareHeight(6, context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
