import 'package:myf2app/models/doctor.dart';
import 'package:myf2app/utils/temp_patient.dart';

class TempDoctor {
  static Doctor d1 = new Doctor(
      name: "Hasan",
      lastname: "Bulut",
      tc: "22222222220",
      password: "password",
      telephoneNo: "5558889977",
      imgUrl:
          "https://fluidideas.s3-eu-west-1.amazonaws.com/barchester/s3fs-public/2017-files/Pete%20Calveley_0.jpg",
      patientsTc: ["00000000001", "00000000003"]);
  static Doctor d2 = new Doctor(
      name: "Canan",
      lastname: "Karatay",
      tc: "22222222221",
      password: "password",
      telephoneNo: "5558889978",
      imgUrl:
          "https://fluidideas.s3-eu-west-1.amazonaws.com/barchester/s3fs-public/2017-files/Pete%20Calveley_0.jpg",
      patientsTc: ["00000000001", "00000000004", "00000000005"]);
}
