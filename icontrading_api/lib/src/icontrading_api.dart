import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:icontrading_api/icontrading_api.dart';

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

abstract class IconTradingApi {
  Future<List<dynamic>> topGainers();

  Future<List<dynamic>> tradingVolume();

  Future<List<dynamic>> news();

  Future<Map<String, dynamic>> generalSettings();

  Future<List<dynamic>> guides();

  Future<Map<String, dynamic>> transactions(int page);

  Future<List<dynamic>> libaoInvestmentList();

  Future<Map<String, dynamic>> getHistory(int page);

  Future<List<dynamic>> getCandleData(
      {required String symbol, required String interval});

  Future<Map<String, dynamic>> getSymbolDetails({required String symbol});

  Future<Map<String, dynamic>> saveTrade({
    required String amount,
    required String tradeType,
    required String periodId,
    required String timeStamp,
    required String currencyId,
    required String timeOption,
  });

  Future<Map<String, dynamic>> getSymbolPriceDetails({required String symbol});

  Future<Map<String, dynamic>> getCurrentTradingPeriod(
      {required currenyId, required periodType});
}

class IconTradingApiImpl with IconTradingApi {
  IconTradingApiImpl({Dio? dio})
      : _dio = (dio ?? Dio())
          ..interceptors.add(ApiInterceptor())
          ..options.baseUrl = "https://icontrading.sortbookssolution.com/api";

  final Dio _dio;

  @override
  Future<List<dynamic>> topGainers() async {
    try {
      Response response = await _dio.get('/top-gainers');
      return response.data['response']['data'] as List<dynamic>;
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
  Future<List<dynamic>> news() async {
    try {
      Response response = await _dio.get('/news');
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
  Future<List> tradingVolume() async {
    try {
      Response response = await _dio.get('/trading-volume');
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
  Future<List> guides() async {
    try {
      Response response = await _dio.get('/guides');
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
  Future<Map<String, dynamic>> transactions(int page) async {
    try {
      Response response = await _dio.get('/user/financial-records?page=$page');
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
  Future<List> libaoInvestmentList() async {
    try {
      Response response = await _dio.get('/yu-libao-investment');
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
  Future<List<dynamic>> getCandleData({
    required String symbol,
    required String interval,
  }) async {
    try {
      final uri = Uri.parse(
          "https://api.binance.com/api/v3/klines?symbol=$symbol&interval=$interval&limit=1000");
      final res = await http.get(uri);
      return jsonDecode(res.body) as List<dynamic>;
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
  Future<Map<String, dynamic>> getSymbolDetails(
      {required String symbol}) async {
    try {
      final uri = Uri.parse(
          "https://api.binance.com/api/v3/ticker/24hr?symbol=$symbol");
      final res = await http.get(uri);
      return jsonDecode(res.body) as Map<String, dynamic>;
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
  Future<Map<String, dynamic>> getSymbolPriceDetails(
      {required String symbol}) async {
    try {
      final uri = Uri.parse(
          "https://api.binance.com/api/v3/ticker/price?symbol=$symbol");
      final res = await http.get(uri);
      return jsonDecode(res.body) as Map<String, dynamic>;
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
  Future<Map<String, dynamic>> getCurrentTradingPeriod(
      {required currenyId, required periodType}) async {
    try {
      Response response = await _dio.post(
        '/user/current-trading-period',
        data: jsonEncode({
          'currency_id': currenyId,
          'period_type': periodType,
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
  Future<Map<String, dynamic>> saveTrade({
    required String amount,
    required String tradeType,
    required periodId,
    required timeStamp,
    required currencyId,
    required timeOption,
  }) async {
    try {
      Response response = await _dio.post(
        '/user/save-trading',
        data: jsonEncode({
          'amount': amount,
          'trade_type': tradeType,
          'period_id': periodId,
          'time_stamp': timeStamp,
          'currency_id': currencyId,
          'time_option': timeOption,
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
  Future<Map<String, dynamic>> getHistory(int page) async {
    try {
      Response response = await _dio.get('/user/trading-history?page=$page');
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
  Future<Map<String, dynamic>> generalSettings() async {
    try {
      Response response = await _dio.get('/general-setting');
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
