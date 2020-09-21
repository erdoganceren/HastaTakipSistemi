import 'package:http/http.dart' as http;

class Service {
  final String tc;
  final String password;
  final bool typeOfUser;
  final String name;
  final String tel;

  Service({
    this.tc,
    this.password,
    this.typeOfUser,
    this.name,
    this.tel,
  });

  static Service _instance;

  static Service getInstance({password, tc, typeOfUser, name, tel}) {
    if (_instance == null) {
      _instance = Service(
          tc: tc,
          password: password,
          typeOfUser: typeOfUser,
          name: name,
          tel: tel);
      return _instance;
    }
    return _instance;
  }

  Future register(tc, typeOfUser, password, name, tel) async {
    var url = 'http://155.223.25.26/yaslitakip/register.php';
    var response = await http.post(url, body: {
      "TCNO": tc,
      "Sifre": password,
      "KullaniciTipi": typeOfUser,
      "AdSoyad": name,
      "TelNo": tel,
    });
    print(response.body);
  }

  Future<String> login(tc, password) async {
    print("tc $tc");
    print("password $password");
    var url = 'http://155.223.25.26/yaslitakip/loginread.php';
    var response = await http.post(url, body: {"TCNO": tc, "Sifre": password});
    print(response.body);
    //String userType = response.body[98];
    String message = "";
    if (response.body[98] == "D") {
      message = "D";
    } else if (response.body[98] == "H") {
      message = "H";
    } else {
      message = "Y";
    }
    return message;
  }
}
