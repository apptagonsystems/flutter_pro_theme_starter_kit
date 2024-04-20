import 'dart:convert';

import 'package:http/http.dart' as http;

class AppHttpHelper {
  static const String _baseUrl ="";


  static Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await http.get(Uri.parse(endPoint));
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> post({required String endPoint,required dynamic data}) async{
    final response = await http.post(Uri.parse(endPoint),
    headers: {'Content-Type' : 'application/json'},
    body: json.encode(data));
        return _handleResponse(response);
  }

   static Future<Map<String, dynamic>> put({required String endPoint,required dynamic data}) async{
    final response = await http.put(Uri.parse(endPoint),
    headers: {'Content-Type' : 'application/json'},
    body: json.encode(data));
        return _handleResponse(response);
  }

   static Future<Map<String, dynamic>> delete({required String endPoint}) async{
    final response = await http.delete(Uri.parse(endPoint));
        return _handleResponse(response);
  }

  // HANDLE HTTP RESPONSE
  static Map<String, dynamic> _handleResponse(http.Response response){
    if(response.statusCode == 200 || response.statusCode == 201){
      return json.decode(response.body);
    }else{
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}