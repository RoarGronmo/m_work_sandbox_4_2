import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget{
  const MainDrawer({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => MainDrawerState();

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
            onTap: () => showMap(),
            leading: const Icon(Icons.map)
          )
        ],
      )
    );

  }

  void showMap()
  {

  }

}