
import 'package:http/http.dart' as http;

import 'package:google_maps_flutter/google_maps_flutter.dart';

class MWorkTileProvider implements TileProvider {

  @override
  Future<Tile> getTile(int x, int y, int? zoom) async {

    String path = 'https://maptiles1.finncdn.no/tileService/1.0.1/norortho/$zoom/$x/$y.png';
    print("Reading: $path");
    http.Response response = await http.get(
      Uri.parse(path)
    );

    return Tile(x,y,response.bodyBytes);
  }

}