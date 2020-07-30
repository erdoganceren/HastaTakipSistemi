import 'package:flutter/material.dart';
import 'package:myf2app/models/patient.dart';

class SearchBarProcess with ChangeNotifier {
  String _searchBarText = "";
  bool _isWriting = false;
  TextEditingController _controller = TextEditingController();
  List<String> _initPatientTcList = [];
  List<String> _searchResultPatientTcList = [];
  get searchBarText => _searchBarText;
  get isWriting => _isWriting;
  get controller => _controller;
  get initPatientTcList => _initPatientTcList;
  get searchResultPatientTcList => _searchResultPatientTcList;
  set searchResultPatientTcList(List<String> value) =>
      _searchResultPatientTcList = value;
  set initPatientTcList(List<String> value) {
    _initPatientTcList = value;
  }

  set searchBarText(String searchBarText) {
    _searchBarText = searchBarText;
    if (_searchBarText != "") {
      isWriting = true;
    } else {
      isWriting = false;
    }
    searching();

    notifyListeners();
  }

  set isWriting(bool isWriting) => _isWriting = isWriting;

  void clearSearchBar() {
    _controller.clear();
    searchBarText = "";
  }

  void searching() {
    _searchResultPatientTcList = [];
    if (isWriting) {
      List<Patient> patients = [];
      for (String tc in _initPatientTcList) {
        Patient p = Patient.searchPatient(tc);
        patients.add(p);
      }
      for (Patient patient in patients) {
        String fullName = patient.name + " " + patient.lastname;
        if (fullName.toLowerCase().contains(searchBarText.toLowerCase())) {
          _searchResultPatientTcList.add(patient.tc);
        }
      }
    } else {
      _searchResultPatientTcList = _initPatientTcList;
    }
  }
}
