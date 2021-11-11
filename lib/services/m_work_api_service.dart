import 'dart:convert';
import 'dart:io';

import 'package:m_work_sandbox_4_2/auth/auth_manager_interface.dart';
import 'package:http/http.dart' as http;

Future<MWorkOrderTextTypes?> fetchMWorkOrderTextTypes() async {
  String? accessToken = await AuthManager.instance?.getAccessToken();

  if(accessToken == null){
    print("fetchMWorOrderTextTypes(): accessToken is null");
    return null;
  }

  final response = await http.get(
    Uri.parse('https://api.norva24.no:5011/Order/textTypes'),
    headers: {
      HttpHeaders.authorizationHeader: 'Bearer $accessToken'
    }
  );

  print("fetchMWorOrderTextTypes(): response body = ${response.body}");

  final responseJson = jsonDecode(response.body);

  return MWorkOrderTextTypes.fromJson(responseJson);
}




class MWorkOrderTextTypes{
  final bool? success;
  final String? message;

  MWorkOrderTextTypes({
    required this.success,
    required this.message
  });

  factory MWorkOrderTextTypes.fromJson(Map<String, dynamic>data){

    final success = data["success"] as bool?;
    final message = data["message"] as String?;

    return MWorkOrderTextTypes(success: success, message: message);
  }

}


