import 'package:flutter/material.dart';

class SearchBarProcess with ChangeNotifier {
  String _searchBarText = "";
  bool _isWriting = false;
  TextEditingController _controller = TextEditingController();
  get searchBarText => _searchBarText;
  get isWriting => _isWriting;
  get controller => _controller;
  set searchBarText(String searchBarText) {
    _searchBarText = searchBarText;
    if (_searchBarText != "")
      isWriting = true;
    else
      isWriting = false;
    notifyListeners();
  }

  set isWriting(bool isWriting) => _isWriting = isWriting;

  void clearSearchBar() {
    _controller.clear();
    searchBarText = "";
  }
}
