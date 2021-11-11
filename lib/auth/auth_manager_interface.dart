import 'package:flutter/material.dart';

import 'auth_manager_stub.dart'
  if(dart.library.io) 'auth_manager_native.dart'    //Does a selection upon it
  if(dart.library.js) 'auth_manager_web.dart';      //is web or not

abstract class AuthManager extends ChangeNotifier {
  static AuthManager? _instance;

  static AuthManager? get instance {
    _instance ??= getManager();
    return _instance;
  }

  Future<String> login();
  String getActiveAccount();
  Future<void> logout();
  bool isLoggedIn();
  String? getSession();
  Future<String?> getAccessToken();

}