import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_work_sandbox_4_2/auth/auth_manager_interface.dart';
import 'package:m_work_sandbox_4_2/screens/map/screen_map.dart';
import 'package:m_work_sandbox_4_2/services/m_work_api_service.dart';
import 'package:m_work_sandbox_4_2/services/m_work_api_service_test_1.dart';

class MainDrawer extends StatefulWidget{

  final GlobalKey mapKey;

  const MainDrawer({Key? key, required this.mapKey}) : super(key: key);

  @override
  //State<StatefulWidget> createState() => MainDrawerState();
  MainDrawerState createState() => MainDrawerState();

}

class MainDrawerState extends State<MainDrawer>{

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Padding(
              padding: const EdgeInsets.only(bottom:28),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("mWork Sandbox 4.2",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.start,
                  )
                ],
              )
            )
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Maps test',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          ListTile(
            title: const Text('Map'),
            subtitle: const Text('(not working at the moment)'),
            onTap: () => showMap(),
            leading: const Icon(Icons.map)
          ),
          ListTile(
            title: const Text('Add tile overlay'),
            onTap: () => addTileOverlay(),
            leading: const Icon(Icons.layers),
          ),
          ListTile(
            title: const Text('Clear tile cache'),
            onTap: () => clearTileCache(),
            leading: const Icon(Icons.layers_outlined)
          ),
          ListTile(
            title: const Text('Remove tile overlay'),
            onTap: () => removeTiles(),
            leading: const Icon(Icons.layers_clear)
          ),
          ListTile(
              title: const Text('Tilt map'),
              onTap: () => tiltMap(),
              leading: const Icon(Icons.threed_rotation),
          ),
          ListTile(
            title: const Text('Read texts'),
            onTap: () => readTexts(),
            leading: const Icon(Icons.article),
          ),
          ListTile(
            title: const Text('Read texts 2'),
            onTap: () => readTexts2(),
            leading: const Icon(Icons.article),
          ),
          ListTile(
            title: const Text('Log out'),
            onTap: () => logout(),
            leading: const Icon(Icons.logout),
          ),
        ],
      )
    );

  }

  void showMap()
  {

  }

  void addTileOverlay(){
    print("Add tile overlay clicked");
    (widget.mapKey.currentState as MWorkMapState).addTileOverlay();
  }

  void clearTileCache(){
    print("Clear tile cache clicked");
    //MWorkMap().clearTileCache();
    (widget.mapKey.currentState as MWorkMapState).clearTileCache();
  }

  void removeTiles(){
    print("Remove tiles clicked");
    //MWorkMap().removeTileOverlay();
    (widget.mapKey.currentState as MWorkMapState).removeTileOverlay();
  }

  void tiltMap()
  {
    (widget.mapKey.currentState as MWorkMapState).tiltMap();
  }

  void readTexts2() async {

    try{
      testReadData();
    }catch(exception){
      print("readTexts2(): error: $exception");
    }

  }

  void readTexts() async {
      try{
        final mWorkOrderTextTypes = await readMWorkOrderTextTypes();

        print("readTexts(): mWorkOrderTextTypes = $mWorkOrderTextTypes");
      }catch(exception){
        print("readTexts(): error = $exception");
      }
  }

  void retrofitTest() async{

  }

  void logout()
  {
    print("Attempting to log out");
    AuthManager.instance?.logout();
  }


}