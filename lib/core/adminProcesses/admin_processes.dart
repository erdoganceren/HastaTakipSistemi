import 'package:flutter/material.dart';

class AdminProcesses with ChangeNotifier {
  void undo() {
    // parametre olarak üye modelini alacak.
    // üye tekrar aday olacak. yapılan işlem geri alınacak.
    notifyListeners(); // true olarak sayfa güncellenir.
  }

  void confirmMember() {
    // parametre olarak üye modelini alacak.
    // üye onaylanacak.
  }
  void dismissMember() {
    // parametre olarak üye modelini alacak.
    // üyeye onay verilmeyecek.
  }
}
