import 'package:flutter/material.dart';
import 'package:myf2app/theme/theme.dart';
import 'package:myf2app/views/ui_helper.dart';

import 'widgets/admin_header_widget.dart';
import 'widgets/candidate_member_card_widget.dart';
<<<<<<< Updated upstream

=======
import 'widgets/card_color_widget.dart';
>>>>>>> Stashed changes
import 'widgets/title_icon_widget.dart';

class AdminView extends StatefulWidget {
  @override
  _AdminViewState createState() => _AdminViewState();
}

class _AdminViewState extends State<AdminView> {
  List<Map<String, dynamic>> candidateMembers = [
    {"ad": "Ceren", "soyad": "Erdoğan", "unvan": "Doktor", "tc": "12345678901"},
    {"ad": "Aytuğ", "soyad": "Sevgi", "unvan": "Hasta", "tc": "12345678902"},
    {
      "ad": "Beyza",
      "soyad": "Sığınmış",
      "unvan": "Hasta Yakını",
      "tc": "12345678903"
    },
    {
      "ad": "Muhittin",
      "soyad": "Kaygısız",
      "unvan": "Hasta",
      "tc": "12345678904"
    },
    {"ad": "Ferdi", "soyad": "Baygın", "unvan": "Doktor", "tc": "12345678905"},
    {
      "ad": "Mahmut",
      "soyad": "Ürkek",
      "unvan": "Hasta Yakını",
      "tc": "12345678906"
    },
    {"ad": "Feride", "soyad": "Burada", "unvan": "Doktor", "tc": "12345678907"},
    {"ad": "Ceren", "soyad": "Erdoğan", "unvan": "Hasta", "tc": "12345678908"},
    {
      "ad": "Beyza",
      "soyad": "Sığınmış",
      "unvan": "Hasta Yakını",
      "tc": "12345678909"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: adminHeader,
            ),
            Expanded(
              flex: 6,
              child: ListView.builder(
                  itemCount: candidateMembers.length,
                  itemBuilder: (context, index) =>
                      CandidateMemberCard(model: candidateMembers[index])),
            ),
          ],
        ),
      ),
    );
  }
}
