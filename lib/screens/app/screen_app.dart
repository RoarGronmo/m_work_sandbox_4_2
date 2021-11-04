import 'package:flutter/material.dart';

import 'package:m_work_sandbox_4_2/screens/home/screen_home.dart';

class MWork extends StatelessWidget{
  const MWork({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "mWork",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(title: "mWork Sandbox 4.2")
    );

  }
}