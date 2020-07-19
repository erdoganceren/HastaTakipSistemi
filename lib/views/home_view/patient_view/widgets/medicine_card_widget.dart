import 'package:flutter/material.dart';
import 'package:myf2app/utils/medicines.dart';
import 'package:myf2app/views/home_view/medicine_view/medicine_view.dart';
import 'package:myf2app/views/ui_helper.dart';
import '../../../../utils/utils.dart';

class MedicineCard extends StatelessWidget {
  final Map<String, dynamic> medicine;
  const MedicineCard({Key key, this.medicine}) : super(key: key);
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
                medicine["isim"],
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
                  itemCount: medicine["kullanım"],
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.timer, color: Colors.white),
                        Text(
                          "${24 / medicine["kullanım"] * (index + 1)}",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                "Günde ${medicine["kullanım"]} kez, 1 tablet içilecek.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
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
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
