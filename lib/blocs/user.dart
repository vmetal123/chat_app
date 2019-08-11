import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class User with ChangeNotifier {

  bool _isLoggedIn = false;
  FirebaseUser _user;

  bool get isLoggedIn => _isLoggedIn;
  FirebaseUser get user => _user;

  void setUser(FirebaseUser user) {
    this._user = user;
    _isLoggedIn = true;
    notifyListeners();
  }

  void loggedOut() {
    this._user = null;
    _isLoggedIn = false;
    notifyListeners();
  }


}