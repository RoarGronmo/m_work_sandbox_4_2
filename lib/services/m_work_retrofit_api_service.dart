
import 'package:dio/dio.dart';

import 'package:http/http.dart';

part 'm_work_retrofit_api_service.g.dart';



class Apis {
  static const String users = '/users';
}

@RestApi(baseUrl: "https://gorest.co.in/public-api/")
abstract class ApiClient{
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  $GET(Apis.users)
  Future<ResponseData> getUsers(){

  };
}