import 'package:flutter/material.dart';

class UIHelper {
  // STRING
  static const String startHeaderText = "Sağlıklı Yaşam";
  static const String tcRequiredText = "Lütfen TC kimlik numaranızı girin";
  static const String tcLenghtRequiredText =
      "TC kimlik numarası 11 haneli olmalıdır";
  static const String tcHintText = "TC Kimlik No";
  static const String passwordRequiredText = "Lütfen şifrenizi girin";
  static const String passwordHintText = "Şifre";
  static const String confirmPasswordRequiredText =
      "Lütfen şifrenizi tekrar girin";
  static const String confirmPasswordHintText = "Şifrenizi Tekrar Girin";
  static const String loginHeaderText = "Hoşgeldiniz";
  static const String signupSubmitButtonText = "Kayıt Ol";
  static const String signupAlreadyHaveAccount = "Zaten bir hesabın var mı?";
  static const String confirmSignupText = "Üyelik İşleminiz Başlatıldı!";
  static const String selectTitleText = "Ünvanınızı Seçin";
  static const String developedByText = "İZKA TARAFINDAN DESTEKLENMEKTEDİR";
  static const String companyText = "Aktivİz";
  static const String doctorText = "Doktor";
  static const String patientText = "Bireysel\nTakip";
  static const String patientRelativeText = "Yakın\nTakibi";
  //COLOR
  static const Color backgroundColorPrimary = Colors.blue;
  static const Color backgroundColorSecondary = Colors.green;
  // textField
  static const Color textFieldCursorColor = Colors.white;
  // loginHeader
  static const Color loginHeaderBackgroundColor = Colors.white;

  //ICON
  //passwordField
  static const Icon visibilityOff =
      Icon(Icons.visibility_off, size: 20, color: Colors.white);
  static const Icon visibility =
      Icon(Icons.visibility, size: 20, color: Colors.white);
}
