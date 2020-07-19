import 'package:myf2app/models/medicine.dart';

class TempMedicine {
  static Medicine m1 =
      new Medicine(name: "Apranax", detail: "Ağrı Kesici", countOfDay: 2);
  static Medicine m2 = new Medicine(
      name: "Gluformin",
      detail: "Kan şekeri düşürücü ve bağısak şeker emilimi azaltıcı",
      countOfDay: 1);
  static Medicine m3 = new Medicine(
      name: "Tylolhot",
      detail:
          "Grip, soğuk algınlığı ve diğer üst solunum yolu enfeksiyonlarına bağlı vücut kırgınlığı, baş ağrısı, burun akıntısı ve tıkanıklığı, hapşırma, ağrı ve ateş gibi belirtilerin tedavisinde kullanılır.",
      countOfDay: 3);
  static Medicine m4 = new Medicine(
      name: "Gentarox",
      detail:
          "Göğüs, yara ve kan enfeksiyonları gibi çok çeşitli enfeksiyonların tedavisinde kullanılır.",
      countOfDay: 3);
  static Medicine m5 = new Medicine(
      name: "Fucidin Krem",
      detail:
          "Ciltte bakteri oluşumu nedeniyle gelişen iltihaplanma, cilt bozukluğu, yara ve lekelerin tedavisinde kullanılan antibiyotik kremdir.",
      countOfDay: 4);
}
