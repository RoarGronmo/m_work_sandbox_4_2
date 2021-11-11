import 'dart:convert';

Future<MWorkOrderTextTypes> fetchMWorkOrderTextTypes() async {
  String accessToken = await


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

    return MWorkOrderTextTypes(success: success, message: message)
  }

}


