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

    if (options.headers['hasToken'] != null) {
      if (options.headers['hasToken'] == true) {
        options.headers.addAll(
          <String, dynamic>{
            'Authorization': 'Bearer $token',
            'Accept': 'application/json'
          },
        );
        options.headers.remove('hasToken');
      } else {
        options.headers.addAll(
          <String, dynamic>{'Accept': 'application/json'},
        );
        options.headers.remove('hasToken');
      }
      print(options.headers);
      return super.onRequest(options, handler);
    } else {
      options.headers.addAll(
        <String, dynamic>{'Accept': 'application/json'},
      );
    }
  }
}

@override
Future onResponse(Response response, ResponseInterceptorHandler handler) async {
  log('Response: ${response.data}');
  return handler.next(response);
}
