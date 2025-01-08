import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

class NetworkService {
  final Dio dio = Dio();
  void logRequest(String method, String url, String? queryParameters) {
    log(
      "\n>>>>>>>>>>>>>>>>[REQUEST]>>>>>>>>>>>>>>>>\n"
      "METHOD  ==> $method : $url \n"
      "Header  ==> ${dio.options.headers}\n"
      "Query    ==> ${queryParameters ?? 'No queryParameters'}\n"
      ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>",
    );
  }

  void logResponse(String method, String url, response) {
    log(
      "\n<<<<<<<<<<<<<<<[RESPONSE]<<<<<<<<<<<<<<<<\n"
      "METHOD     ==> $method : $url\n"
      "STATUS     ==> ${response.statusCode}\n"
      "BODY       ==> ${jsonEncode(response.data)}\n"
      "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<",
    );
  }

  Future get(String url) async {
    try {
      logRequest('GET', url, null);
      final response = await dio.get(url);
      logResponse('GET', url, response);
      return response;
    } catch (e) {
      print(e);
    }
  }

  Future post(
    String url, {
    FormData? body,
    bool isHeaderRequired = true,
  }) async {
    try {
      if (body != null) {
        final formDataFields = body.fields.map((field) => "${field.key}: ${field.value}").join('\n');
        logRequest('POST', url, formDataFields);
      }
      final response = await dio.post(url, data: body);
      logResponse('POST', url, response);
      return response;
    } catch (e) {
      print(e);
    }
  }
}

//Example
