import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:m_work_sandbox_4_2/screens/test_data/test_locations.dart' as locations;
import 'package:location/location.dart';

import 'package:m_work_sandbox_4_2/screens/map/m_work_tile_provider.dart';


class MWorkMap extends StatefulWidget{
  const MWorkMap({Key? key}) : super(key: key);

  @override
  _MWorkMapState createState() => _MWorkMapState();

  addTileOverlay() => createState()._addTileOverlay();
  removeTileOverlay() => createState()._removeTileOverlay();
  clearTileCache()=> createState()._clearTileCache();
}

class _MWorkMapState extends State<MWorkMap>{
  final Map<String, Marker> _markers = {};

  late LocationData _currentPosition;
  late PermissionStatus _permissionGranted;
  late GoogleMapController _mapController;
  TileOverlay? _tileOverlay;
  LatLng _initialCameraPosition = LatLng(0,0);
  Location location = Location();




  getLoc() async{
    bool _serviceEnabled;
    PermissionStatus _permissionStatusEnabled;

    print("Checking if service is enabled");
    _serviceEnabled = await location.serviceEnabled();

    if(!_serviceEnabled) {

      print("Location service not enabled... requesting location service...");
      _serviceEnabled = await location.requestService();

      if(!_serviceEnabled){

        print("Request location returned false, returning...");
        return; //Should show errormessage
      }
    }

    print("Checking location permission");
    _permissionGranted = await location.hasPermission();
    if(_permissionGranted == PermissionStatus.denied){
      print("Location permission denied, requesting permission");
      _permissionGranted = await location.requestPermission();
      if(_permissionGranted != PermissionStatus.granted){
        print("Location permission NOT granted !!");
        return;
      }
    }
    print("Permission seems granted");

    print("Getting location");
    _currentPosition = await location.getLocation();
    print("_currentPosition: [${_currentPosition.latitude},${_currentPosition.longitude}],");

    if((_currentPosition.latitude == null)||(_currentPosition.longitude == null)) {
      print("One of location parameters where null");
      return;
    }

    _initialCameraPosition = LatLng(_currentPosition.latitude!, _currentPosition.longitude!);

    location.onLocationChanged.listen((LocationData currentLocation) {
      print("currentLocation : [${currentLocation.latitude},${currentLocation.longitude}]");
      setState(() {
        _currentPosition = currentLocation;
        if((_currentPosition.latitude==null)||(_currentPosition.longitude==null))
        {
          return;
        }
        _initialCameraPosition = LatLng(_currentPosition.latitude!, _currentPosition.longitude!);

        _mapController.animateCamera(CameraUpdate.newLatLngZoom(LatLng(_initialCameraPosition.latitude, _initialCameraPosition.longitude),15.0));

      });
    });




  }

  @override
  void initState()
  {
    super.initState();
    getLoc();

  }


  Future<void> _onMapCreated(GoogleMapController controller) async {

    final googleOffices = await locations.getGoogleOffices();

    _mapController = controller;

    setState(() {
      _markers.clear();
      for(final office in googleOffices.offices){
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address
          )
        );
        _markers[office.name] = marker;
      }

    });

  }



  @override
  Widget build(BuildContext context) {

    Set<TileOverlay> overlays = <TileOverlay>{
      if(_tileOverlay!=null) _tileOverlay!,
    };

    print("Widget build: position : $_initialCameraPosition");
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: LatLng(_initialCameraPosition.latitude,_initialCameraPosition.longitude),
        zoom:15,
      ),
      markers: _markers.values.toSet(),
      myLocationEnabled: true,
      tileOverlays: overlays,

    );

  }

  void _addTileOverlay()
  {
    final TileOverlay tileOverlay = TileOverlay(
      tileOverlayId: TileOverlayId("Finn Satellite Overlay"),
      tileProvider: MWorkTileProvider(),
    );
    //_tileOverlay = tileOverlay;
    setState(() {
      _tileOverlay = tileOverlay;
    });
  }

  void _clearTileCache(){
    if(_tileOverlay != null && _mapController != null){
      _mapController!.clearTileCache(_tileOverlay!.tileOverlayId);
    }
  }

  void _removeTileOverlay()
  {
    setState((){
      _tileOverlay = null;
    });
  }

}

