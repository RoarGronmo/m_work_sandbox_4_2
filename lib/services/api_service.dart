import 'dart:convert';
import 'package:m_work_sandbox_4_2/auth/auth_manager_interface.dart';
import 'api_service_interface.dart';
import 'package:http/http.dart' as http;
import '../common/m_work_config.dart' as m_work_config;

class APIServiceMWork extends ApiService {
  @override
  Future listOrders() {
    // TODO: implement listOrders
    throw UnimplementedError();
  }

  @override
  Future listR10s() {
    // TODO: implement listR10s
    throw UnimplementedError();
  }

  @override
  Future listR1s() {
    // TODO: implement listR1s
    throw UnimplementedError();
  }

  @override
  Future<String> loginSession(oauthToken) async {
    String apiUri = m_work_config.mWorkEndpoint;
    String method = "logInSession";
    String moduleName = "Authentication";
    final response = await http.post(
      Uri.parse(apiUri),
      body: json.encode({
          'method': method,
          'moduleName': moduleName,
          'payload': {
            'oauth2AccessToken': oauthToken
          }
        }
      ),
    );

    print("APIServiceMWork: ${response.body}");

    if(jsonDecode(response.body)['statusId'] !=1){ //Extracts statusId
      throw Exception(jsonDecode(response.body)['statusText']);  //Shows error message
    }
    return jsonDecode(response.body)['payload']['session']['id']; //Extracts and returns set of data
  }

}