import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

///Api interceptor class
class ApiInterceptor extends Interceptor {
  @override
  Future<dynamic> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    options.headers.addAll(
      <String, dynamic>{
        'Authorization': 'Bearer $token',
        'Accept': 'application/json'
      },
    );
    return super.onRequest(options, handler);
  }
}

@override
Future onResponse(Response response, ResponseInterceptorHandler handler) async {
  log('Response: ${response.data}');
  return handler.next(response);
}
