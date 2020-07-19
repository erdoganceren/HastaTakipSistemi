import 'package:myf2app/models/patient.dart';

import 'temp_medicine.dart';

class TempPatient {
  static Patient p1 = new Patient(
    name: "Ferdi",
    lastname: "Baygın",
    tc: "00000000001",
    password: "password",
    medicines: [TempMedicine.m1, TempMedicine.m3, TempMedicine.m5],
    telephoneNo: "5552221144",
    imgUrl:
        "https://fluidideas.s3-eu-west-1.amazonaws.com/barchester/s3fs-public/2017-files/Pete%20Calveley_0.jpg",
    bpm: 91,
    water: 1500,
    step: 2141,
    doctorTc: "22222222220",
  );
  static Patient p2 = new Patient(
    name: "Mahmut",
    lastname: "Ürkek",
    tc: "00000000002",
    password: "password",
    medicines: [TempMedicine.m2, TempMedicine.m4],
    telephoneNo: "5552221143",
    imgUrl:
        "https://pbs.twimg.com/profile_images/2197524322/826933_portrait_of_elderly_man_in_cowboy_hat_1_400x400.jpg",
    bpm: 150,
    water: 1500,
    step: 2141,
    doctorTc: "22222222221",
  );
  static Patient p3 = new Patient(
    name: "Feride",
    lastname: "Keskin",
    tc: "00000000003",
    password: "password",
    medicines: [
      TempMedicine.m1,
      TempMedicine.m2,
      TempMedicine.m3,
      TempMedicine.m4
    ],
    telephoneNo: "5552221142",
    imgUrl:
        "https://cdn.thedailymash.co.uk/wp-content/uploads/20200407111048/old-woman-smiling-667x375.jpg",
    bpm: 150,
    water: 1500,
    step: 2141,
    doctorTc: "22222222220",
  );
  static Patient p4 = new Patient(
    name: "Melek",
    lastname: "Gündoğdu",
    tc: "00000000004",
    password: "password",
    medicines: [TempMedicine.m4],
    telephoneNo: "5552221141",
    imgUrl:
        "https://elderlywellnesscompanion.com/wp-content/uploads/2020/05/elderly-people-profile-runu.jpg",
    bpm: 120,
    water: 1100,
    step: 3580,
    doctorTc: "22222222221",
  );
  static Patient p5 = new Patient(
    name: "İlyas",
    lastname: "Yılmaz",
    tc: "00000000005",
    password: "password",
    medicines: [TempMedicine.m3, TempMedicine.m4],
    telephoneNo: "5552221140",
    imgUrl:
        "https://fluidideas.s3-eu-west-1.amazonaws.com/barchester/s3fs-public/2017-files/Pete%20Calveley_0.jpg",
    bpm: 80,
    water: 1100,
    step: 15018,
    doctorTc: "22222222221",
  );
}
