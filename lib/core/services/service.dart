import 'package:http/http.dart' as http;

class Service {
  final String tc;
  final String password;
  final bool typeOfUser;

  Service({this.tc, this.password, this.typeOfUser});

  static Service _instance;

  static Service getInstance({password, tc, typeOfUser}) {
    if (_instance == null) {
      _instance = Service(tc: tc, password: password, typeOfUser: typeOfUser);
      return _instance;
    }
    return _instance;
  }

  Future register(tc, typeOfUser, password) async {
    var url = 'http://155.223.25.26/yaslitakip/user_register.php';
    var response = await http.post(url,
        body: {"TCNO": tc, "Sifre": password, "KullaniciTipi": typeOfUser});
    print(response.body);
  }

  Future<String> login(tc, password) async {
    print("tc $tc");
    print("password $password");
    var url = 'http://155.223.25.26/yaslitakip/login_user.php';
    var response = await http.post(url, body: {"TCNO": tc, "Sifre": password});
    print(response.body);
    String message = "";
    if (response.body == "Login Matched") {
      message = "Giriş Başarılı";
    } else {
      message = "Geçersiz Giriş";
    }
    return message;
  }
}
