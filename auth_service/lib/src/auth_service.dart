import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class HttpFailure implements Exception {}

class HttpUnautorizedRequest implements Exception {
  HttpUnautorizedRequest({this.message});

  final String? message;

  @override
  String toString() {
    return message.toString();
  }
}

class HttpRequestFailure implements Exception {
  HttpRequestFailure({this.message});

  final String? message;

  @override
  String toString() {
    return message.toString();
  }
}

abstract class AuthService {
  Future<Map<String, dynamic>> login({String? email, String? password});
  Future<Map<String, dynamic>> register({
    String? fullName,
    String? phoneNumber,
    String? email,
    String? dialCode,
    String? password,
    String? refCode,
    String? passwordConfirmation,
  });
  Future<Map<String, dynamic>> forgotPassword({String? email});
  Future<Map<String, dynamic>> verifyCode({String? email, String? code});
  Future<Map<String, dynamic>> verifyOtp({String? email, String? code});
  Future<Map<String, dynamic>> addTransactionPin({String? email, String? pin});
  Future<Map<String, dynamic>> resetPassword(
      {String? email, String? password, String? passwordConfirmation});
  Future<Map<String, dynamic>> checkUserWithEmail({String? email});
  Future<Map<String, dynamic>> checkUserWithPhoneNumber(
      {String? phoneNumber, String? dialCode});
  Future<Map<String, dynamic>> resendOtp(
      {String? phoneNumber, String? dialCode});
}

class AuthServiceImpl extends AuthService {
  AuthServiceImpl({Dio? dio})
      : _dio = (dio ?? Dio())
          // ..interceptors.add(ApiInterceptor())
          ..options.baseUrl = "https://icontrading.sortbookssolution.com/api";

  final Dio _dio;

  @override
  Future<Map<String, dynamic>> login({String? email, String? password}) async {
    try {
      Response response = await _dio.post(
        '/login',
        options: Options(headers: {'Accept': 'application/json'}),
        data: jsonEncode({'email': email, 'password': password}),
      );
      return response.data['response'];
    } on DioError catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == HttpStatus.badRequest ||
            e.response!.statusCode == HttpStatus.unprocessableEntity) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else if (e.response!.statusCode == HttpStatus.unauthorized) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else {
          throw HttpFailure();
        }
      }
      throw HttpFailure();
    }
  }

  @override
  Future<Map<String, dynamic>> register({
    String? phoneNumber,
    String? email,
    String? fullName,
    String? transactionPin,
    String? dialCode,
    String? password,
    String? refCode,
    String? passwordConfirmation,
  }) async {
    try {
      Response response = await _dio.post(
        '/save-registration',
        options: Options(headers: {'Accept': 'application/json'}),
        data: jsonEncode(
          {
            'full_name': fullName,
            'email': email,
            'phone_number': phoneNumber,
            'dial_code': dialCode,
            'password': password,
            'password_confirmation': passwordConfirmation,
            'ref_code': refCode,
          },
        ),
      );
      print(response);
      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.response);
        if (e.response!.statusCode == HttpStatus.badRequest ||
            e.response!.statusCode == HttpStatus.unprocessableEntity) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else if (e.response!.statusCode == HttpStatus.unauthorized) {
          throw HttpUnautorizedRequest(
              message: e.response!.data['response']['message']);
        } else {
          throw HttpFailure();
        }
      }
      throw HttpFailure();
    }
  }

  @override
  Future<Map<String, dynamic>> checkUserWithEmail({String? email}) async {
    try {
      Response response = await _dio.post(
        '/check-user',
        options: Options(headers: {'Accept': 'application/json'}),
        data: jsonEncode({
          'email': email,
        }),
      );
      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == HttpStatus.badRequest ||
            e.response!.statusCode == HttpStatus.unprocessableEntity) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else if (e.response!.statusCode == HttpStatus.unauthorized) {
          throw HttpUnautorizedRequest(
              message: e.response!.data['response']['message']);
        } else {
          throw HttpFailure();
        }
      }
      throw HttpFailure();
    }
  }

  @override
  Future<Map<String, dynamic>> checkUserWithPhoneNumber(
      {String? phoneNumber, String? dialCode}) async {
    try {
      Response response = await _dio.post(
        '/check-user',
        options: Options(headers: {'Accept': 'application/json'}),
        data: jsonEncode({
          'phone_number': phoneNumber,
          'dial_code': dialCode,
        }),
      );
      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == HttpStatus.badRequest ||
            e.response!.statusCode == HttpStatus.unprocessableEntity) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else if (e.response!.statusCode == HttpStatus.unauthorized) {
          throw HttpUnautorizedRequest(
              message: e.response!.data['response']['message']);
        } else {
          throw HttpFailure();
        }
      }
      throw HttpFailure();
    }
  }

  @override
  Future<Map<String, dynamic>> forgotPassword({String? email}) async {
    try {
      Response response = await _dio.post(
        '/forgot-password',
        options: Options(headers: {'Accept': 'application/json'}),
        data: jsonEncode({'email': email}),
      );
      return response.data['response'];
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.response);
        if (e.response!.statusCode == HttpStatus.badRequest ||
            e.response!.statusCode == HttpStatus.unprocessableEntity) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else if (e.response!.statusCode == HttpStatus.unauthorized) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else {
          throw HttpFailure();
        }
      }
      throw HttpFailure();
    }
  }

  @override
  Future<Map<String, dynamic>> resetPassword(
      {String? email, String? password, String? passwordConfirmation}) async {
    try {
      Response response = await _dio.post(
        '/reset-password',
        options: Options(headers: {'Accept': 'application/json'}),
        data: jsonEncode({
          'email': email,
          'password': password,
          'password_confirmation': passwordConfirmation,
        }),
      );
      return response.data['response'];
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.response);
        if (e.response!.statusCode == HttpStatus.badRequest ||
            e.response!.statusCode == HttpStatus.unprocessableEntity) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else if (e.response!.statusCode == HttpStatus.unauthorized) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else {
          throw HttpFailure();
        }
      }
      throw HttpFailure();
    }
  }

  @override
  Future<Map<String, dynamic>> verifyCode({String? email, String? code}) async {
    try {
      Response response = await _dio.post(
        '/verify-recovery-code',
        options: Options(headers: {'Accept': 'application/json'}),
        data: jsonEncode({'email': email, 'code': code}),
      );
      return response.data['response'];
    } on DioError catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == HttpStatus.badRequest ||
            e.response!.statusCode == HttpStatus.unprocessableEntity) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else if (e.response!.statusCode == HttpStatus.unauthorized) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else {
          throw HttpFailure();
        }
      }
      throw HttpFailure();
    }
  }

  @override
  Future<Map<String, dynamic>> resendOtp(
      {String? phoneNumber, String? dialCode}) async {
    try {
      Response response = await _dio.post(
        '/resend-otp',
        options: Options(headers: {'Accept': 'application/json'}),
        data: jsonEncode({
          'phone_number': phoneNumber,
          'dial_code': dialCode,
        }),
      );
      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == HttpStatus.badRequest ||
            e.response!.statusCode == HttpStatus.unprocessableEntity) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else if (e.response!.statusCode == HttpStatus.unauthorized) {
          throw HttpUnautorizedRequest(
              message: e.response!.data['response']['message']);
        } else {
          throw HttpFailure();
        }
      }
      throw HttpFailure();
    }
  }

  @override
  Future<Map<String, dynamic>> addTransactionPin(
      {String? email, String? pin}) async {
    try {
      Response response = await _dio.post(
        '/save-transaction-pin',
        options: Options(headers: {'Accept': 'application/json'}),
        data: jsonEncode(
          {
            'email': email,
            'transaction_pin': pin,
          },
        ),
      );
      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == HttpStatus.badRequest ||
            e.response!.statusCode == HttpStatus.unprocessableEntity) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else if (e.response!.statusCode == HttpStatus.unauthorized) {
          throw HttpUnautorizedRequest(
              message: e.response!.data['response']['message']);
        } else {
          throw HttpFailure();
        }
      }
      throw HttpFailure();
    }
  }

  @override
  Future<Map<String, dynamic>> verifyOtp({String? email, String? code}) async {
    try {
      Response response = await _dio.post(
        '/verify-otp',
        options: Options(headers: {'Accept': 'application/json'}),
        data: jsonEncode(
          {
            'email': email,
            'code': code,
          },
        ),
      );
      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == HttpStatus.badRequest ||
            e.response!.statusCode == HttpStatus.unprocessableEntity) {
          throw HttpRequestFailure(
              message: e.response!.data['response']['message']);
        } else if (e.response!.statusCode == HttpStatus.unauthorized) {
          throw HttpUnautorizedRequest(
              message: e.response!.data['response']['message']);
        } else {
          throw HttpFailure();
        }
      }
      throw HttpFailure();
    }
  }
}
