import 'package:flutter/material.dart';
import 'package:m_work_sandbox_4_2/screens/app/screen_app.dart';
import 'package:m_work_sandbox_4_2/auth/auth_manager_interface.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  String? _sessionId;
  _sessionId = AuthManager.instance?.getSession();
  print("main(): sessionId  = $_sessionId");

  if(_sessionId != null){
    runApp(const MWork());
  } else {
    AuthManager.instance?.login().then((value) =>{
      runApp(const MWork())
    }).onError((error, stackTrace) => {
      print("MWork main(): login error: ${error.toString()}"),
      throw Exception("Login error")
    });
  }


}
