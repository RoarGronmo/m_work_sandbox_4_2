import 'package:chopper/chopper.dart';
import 'package:dio/dio.dart';
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

  print("acessToken = $accessToken");

  ChopperClient? chopperClient = ChopperClient(
    baseUrl: 'https://api.norva24.no:5011',
    converter: $JsonSerializableConverter(),
    interceptors:  [
      HeadersInterceptor(
        {"Authorization":"Bearer $accessToken"})
    ]
  );

  final orderTextTypesGetResponse = await MWorkApi.create(chopperClient).orderTextTypesGet();

  print("response = ${orderTextTypesGetResponse.bodyString}");

  final orderFirmsFrmNoUnitsGetResponse = await MWorkApi.create(chopperClient).orderFirmsFrmNoUnitsGet(frmNo: 29);

  print("response = ${orderFirmsFrmNoUnitsGetResponse.bodyString}");

  final orderFirmsFrmNoOfficesGet = await MWorkApi.create(chopperClient).orderFirmsFrmNoOfficesGet(frmNo: 29);

  print("response = ${orderFirmsFrmNoOfficesGet.bodyString}");

  final  orderFirmsFrmNoTextsGet = await MWorkApi.create(chopperClient).orderFirmsFrmNoTextsGet(frmNo: 29);

  print("response = ${orderFirmsFrmNoTextsGet.bodyString}");
  print("statusCode = ${orderFirmsFrmNoTextsGet.statusCode}");


  return "result";
}