import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:m_work_sandbox_4_2/screens/map/screen_map.dart';

import 'home_drawer.dart';

class HomePage extends StatefulWidget{

  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const MainDrawer(),
      body: OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return _portraitMode();
          } else {
            return _landscapeMode();
          }
        }),
      );

  }

  Widget _portraitMode(){
    return Column(
      children: <Widget>[
        _expandedMap(),
        _expandedList()
      ],
    );
  }

  Widget _landscapeMode(){
    return Row(
      children: <Widget>[
        _expandedList(),
        _expandedMap()
      ],
    );
  }

  Widget _expandedList(){
    return Expanded(
      child: ListView(
        children: [
          Text("1234"),
          Text("5678")
        ],
      )
    );
  }

  Widget _expandedMap()
  {
    return Expanded(
      child: MWorkMap()
    );
  }

}
