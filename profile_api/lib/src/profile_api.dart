import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:profile_api/profile_api.dart';

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

abstract class ProfileApi {
  Future<Map<String, dynamic>> changePhone(
      {String? oldNumber,
      String? oldDialCode,
      String? dialCode,
      String? newNumber});

  Future<Map<String, dynamic>> changePassword({
    String? currentPassword,
    String? password,
    String? passwordConfirmation,
  });

  Future<Map<String, dynamic>> updateProfile(
      {String? firstName,
      String? lastName,
      String? address,
      String? state,
      String? zipCode,
      String? city});

  Future<Map<String, dynamic>> addPaymentMethod({required String address});

  Future<Map<String, dynamic>> changeTransactionPin({
    String? currentPin,
    String? newPin,
    String? confirmPin,
  });

  Future<Map<String, dynamic>> transfer({
    String? amount,
    String? accountId,
    String? transactionPin,
  });

  Future<Map<String, dynamic>> withdraw({
    String? quantity,
    String? address,
    String? transactionPin,
  });

  Future<Map<String, dynamic>> addLibao({
    String? id,
    String? amount,
  });

  Future<Map<String, dynamic>> checkAccountID({
    String? accountId,
  });

  Future<Map<String, dynamic>> deposit({
    String? amount,
  });

  Future<Map<String, dynamic>> orders(int page);

  Future<Map<String, dynamic>> withdrawal(int page);

  Future<Map<String, dynamic>> notifications(int page);

  Future<Map<String, dynamic>> getUserProfile();

  Future<List<dynamic>> transferRecords();

  Future<List<dynamic>> withdrawRecords();

  Future<Map<String, dynamic>> rechargeRecords();

  Future<Map<String, dynamic>> financialRecords();

  Future<Map<String, dynamic>> getLibao();

  Future<Map<String, dynamic>> teams();

  Future<Map<String, dynamic>> withdrawToBalance();

  Future<List<dynamic>> depositMethod();
}

class ProfileApiImpl implements ProfileApi {
  ProfileApiImpl({Dio? dio})
      : _dio = (dio ?? Dio())
          ..interceptors.add(ApiInterceptor())
          ..options.baseUrl =
              "https://icontrading.sortbookssolution.com/api/user";

  final Dio _dio;

  @override
  Future<Map<String, dynamic>> changePhone({
    String? oldNumber,
    String? oldDialCode,
    String? dialCode,
    String? newNumber,
  }) async {
    try {
      Response response = await _dio.post(
        '/change-phone',
        data: jsonEncode({
          'old_number': oldNumber,
          'old_dial_code': oldDialCode,
          'dial_code': dialCode,
          'new_number': newNumber,
        }),
      );
      return response.data['response'];
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
  Future<Map<String, dynamic>> changePassword(
      {String? currentPassword,
      String? password,
      String? passwordConfirmation}) async {
    try {
      Response response = await _dio.post(
        '/change-password',
        data: jsonEncode({
          'current_password': currentPassword,
          'password': password,
          'password_confirmation': passwordConfirmation,
        }),
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
  Future<Map<String, dynamic>> changeTransactionPin(
      {String? currentPin, String? newPin, String? confirmPin}) async {
    try {
      Response response = await _dio.post(
        '/change-transaction-pin',
        data: jsonEncode({
          'current_pin': currentPin,
          'new_pin': newPin,
          'confirm_pin': confirmPin,
        }),
      );
      return response.data['response'];
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
  Future<Map<String, dynamic>> withdrawToBalance(
      {String? currentPin, String? newPin, String? confirmPin}) async {
    try {
      Response response = await _dio.post(
        '/move-team-bonus',
        data: jsonEncode({}),
      );
      return response.data['response'];
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
  Future<Map<String, dynamic>> orders(int page) async {
    try {
      Response response = await _dio.get('/get-orders?page=$page');
      return response.data['response']['data'];
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
  Future<Map<String, dynamic>> getUserProfile() async {
    try {
      Response response = await _dio.get(
        '/profile',
        options: Options(headers: {'Accept': 'application/json'}),
      );
      return response.data['response']['data'];
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
  Future<List<dynamic>> depositMethod() async {
    try {
      Response response = await _dio.get('/deposit/method');
      return response.data['response']['data'];
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
  Future<Map<String, dynamic>> getLibao() async {
    try {
      Response response = await _dio.get('/yu-libao-investment-info');
      return response.data['response']['data'];
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
  Future<Map<String, dynamic>> rechargeRecords() async {
    try {
      Response response = await _dio.get('/recharge-records');
      return response.data['response']['data'];
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
  Future<Map<String, dynamic>> teams() async {
    try {
      Response response = await _dio.get('/teams');
      return response.data['response']['data'];
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
  Future<List<dynamic>> transferRecords() async {
    try {
      Response response = await _dio.get('/transfer-records');
      return response.data['response']['data'];
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
  Future<List<dynamic>> withdrawRecords() async {
    try {
      Response response = await _dio.get('/withdraw-records');
      return response.data['response']['data'];
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
  Future<Map<String, dynamic>> financialRecords() async {
    try {
      Response response = await _dio.get('/financial-records');
      return response.data['response']['data'];
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
  Future<Map<String, dynamic>> checkAccountID({String? accountId}) async {
    try {
      Response response = await _dio.post(
        '/search-account',
        data: jsonEncode({
          'account_id': accountId,
        }),
      );
      return response.data['response']['data'];
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
  Future<Map<String, dynamic>> transfer({
    String? amount,
    String? transactionPin,
    String? accountId,
  }) async {
    try {
      Response response = await _dio.post(
        '/save-transfer',
        data: jsonEncode({
          'account_id': accountId,
          'transaction_password': transactionPin,
          'amount': amount,
        }),
      );
      return response.data['response'];
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
  Future<Map<String, dynamic>> withdraw({
    String? quantity,
    String? address,
    String? transactionPin,
  }) async {
    try {
      Response response = await _dio.post(
        '/save-withdraw',
        data: jsonEncode({
          'quantity': quantity,
          'transaction_password': transactionPin,
          'wallet_address': address,
        }),
      );
      return response.data['response'];
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
  Future<Map<String, dynamic>> deposit({String? amount}) async {
    try {
      Response response = await _dio.post(
        '/save-order',
        data: jsonEncode({
          'quantity': amount,
        }),
      );
      return response.data['response'];
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
  Future<Map<String, dynamic>> addPaymentMethod(
      {required String address}) async {
    try {
      Response response = await _dio.post(
        '/save-wallet',
        data: jsonEncode({
          'wallet_address': address,
        }),
      );
      return response.data['response'];
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
  Future<Map<String, dynamic>> addLibao({String? id, String? amount}) async {
    try {
      Response response = await _dio.post(
        '/save-yu-libao-investment',
        data: jsonEncode({
          'yulibao_id': id,
          'amount': amount,
        }),
      );
      return response.data['response'];
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
  Future<Map<String, dynamic>> notifications(int page) async {
    try {
      Response response = await _dio.get('/notifications?page=$page');
      return response.data['response']['data'];
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
  Future<Map<String, dynamic>> updateProfile(
      {String? firstName,
      String? lastName,
      String? address,
      String? state,
      String? zipCode,
      String? city}) async {
    try {
      Response response = await _dio.post(
        '/update-profile',
        data: jsonEncode({
          'first_name': firstName,
          'last_name': lastName,
          'address': address,
          'state': state,
          'zip': zipCode,
          'city': city,
        }),
      );
      return response.data['response'];
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
  Future<Map<String, dynamic>> withdrawal(int page) async {
    try {
      Response response = await _dio.get('/withdraw-records?page=$page');
      return response.data['response']['data'];
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
