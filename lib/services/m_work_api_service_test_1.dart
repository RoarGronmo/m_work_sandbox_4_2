import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:m_work_sandbox_4_2/auth/auth_manager_interface.dart';
import 'package:m_work_sandbox_4_2/services/generated/mWorkApi.swagger.dart';

import 'generated/client_index.dart';

void testReadData() async
{
  try{
    final mWorkOrderTextTypes = await getOrderTextTypes();

    print("mWorOrderTextTypes = $mWorkOrderTextTypes");

  }catch(exception)
  {
    print("exception: $exception");
  }
}

Future<String> getOrderTextTypes() async
{

  String? accessToken = await AuthManager.instance?.getAccessToken();



  if(accessToken == null) return "";



  ChopperClient? chopperClient = ChopperClient(
    baseUrl: 'https://api.norva24.no:5011',
    converter: $JsonSerializableConverter(),
    interceptors:  [
      HeadersInterceptor(
        {"Authentication":"Bearer $accessToken"})

    ]
  );

  final value = MWorkApi.create(chopperClient).orderTextTypesGet();

  print("value = $value");

  return "result";
}