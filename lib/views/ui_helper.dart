import 'package:flutter/material.dart';

class UIHelper {
  // STRING
  // genel
  static const String developedByText = "İZKA TARAFINDAN DESTEKLENMEKTEDİR";
  static const String companyText = "Aktivİz";
  // startView
  static const String startHeaderText = "Sağlıklı Yaşam";
  static const String startSignUpButtonText = "Kayıt Ol";
  static const String startLoginButtonText = "Giriş Yap";
  // login & signup View
  static const String tcRequiredText = "Lütfen TC kimlik numaranızı girin";
  static const String tcLenghtRequiredText =
      "TC kimlik numarası 11 haneli olmalıdır";
  static const String tcHintText = "TC Kimlik No";
  static const String passwordRequiredText = "Lütfen şifrenizi girin";
  static const String passwordHintText = "Şifre";
  static const String confirmPasswordRequiredText =
      "Lütfen şifrenizi tekrar girin";
  static const String confirmPasswordHintText = "Şifrenizi Tekrar Girin";
  static const String signupSubmitButtonText = "Kayıt Ol";
  static const String loginSubmitButtonText = "Giriş";
  static const String createAccountText = "Hesap oluştur";
  static const String signupAlreadyHaveAccount = "Zaten bir hesabın var mı?";
  static const String confirmSignupText = "Üyelik İşleminiz Başlatıldı!";
  static const String selectTitleText = "Ünvanınızı\nSeçin";

  static const String doctorText = "Doktor";
  static const String patientText = "Bireysel\nTakip";
  static const String patientRelativeText = "Yakın\nTakibi";
  static const String searchBarHintText = "Hastanızı bulun";
  static const String searchBarCancelText = "Vazgeç";

  //COLOR
  static const Color colorPrimary = Color(0xff00a8ff);
  static const Color colorSecondary = Color(0xff4cd137);
  // textField
  static const Color textFieldCursorColor = Colors.black;
  // loginHeader
  static const Color loginHeaderBackgroundColor = Colors.white;
  // searchbar
  static const Color searchBarCancelForegroundColor = Colors.red;
  static const Color searchBarCusorColor = Colors.black;
  static const Color searchBarBackgroundColor = Color(0xffdcf6f8);

  //ICON
  //passwordField
  static const Icon visibilityOff =
      Icon(Icons.visibility_off, size: 20, color: Colors.grey);
  static const Icon visibility =
      Icon(Icons.visibility, size: 20, color: Colors.grey);
}
