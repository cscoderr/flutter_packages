import 'dart:async';

import 'package:candlesticks/candlesticks.dart';
import 'package:icontrading_api/icontrading_api.dart';
import 'package:icontrading_repository/icontrading_repository.dart';
import 'package:profile_repository/profile_repository.dart';

class IconTradingFailure implements Exception {}

class IconTradingRequestFailure implements Exception {
  IconTradingRequestFailure({this.message});

  final String? message;

  @override
  String toString() {
    return message.toString();
  }
}

class IconTradingRepository {
  IconTradingRepository({IconTradingApi? iconTradingApi})
      : _iconTradingApi = iconTradingApi ?? IconTradingApiImpl();

  final IconTradingApi _iconTradingApi;

  Future<List<TopGainer>> topGainers() async {
    try {
      final response = await _iconTradingApi.topGainers();
      return response.map((e) => TopGainer.fromJson(e)).toList();
    } on HttpRequestFailure catch (e) {
      throw IconTradingRequestFailure(message: e.toString());
    } on HttpFailure {
      throw IconTradingFailure();
    }
  }

  Future<GeneralSettings> generalSettings() async {
    try {
      final response = await _iconTradingApi.generalSettings();
      return GeneralSettings.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw IconTradingRequestFailure(message: e.toString());
    } on HttpFailure {
      throw IconTradingFailure();
    }
  }

  Future<List<News>> news() async {
    try {
      final response = await _iconTradingApi.news();
      return response.map((e) => News.fromJson(e)).toList();
    } on HttpRequestFailure catch (e) {
      throw IconTradingRequestFailure(message: e.toString());
    } on HttpFailure {
      throw IconTradingFailure();
    }
  }

  Future<List<Guide>> guides() async {
    try {
      final response = await _iconTradingApi.guides();
      return response.map((e) => Guide.fromJson(e)).toList();
    } on HttpRequestFailure catch (e) {
      throw IconTradingRequestFailure(message: e.toString());
    } on HttpFailure {
      throw IconTradingFailure();
    }
  }

  Future<Financial> transactions(int page) async {
    try {
      final response = await _iconTradingApi.transactions(page);
      return Financial.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw IconTradingRequestFailure(message: e.toString());
    } on HttpFailure {
      throw IconTradingFailure();
    }
  }

  Future<List<TopGainer>> tradingCurrency() async {
    try {
      final response = await _iconTradingApi.tradingVolume();
      return response.map((e) => TopGainer.fromJson(e)).toList();
    } on HttpRequestFailure catch (e) {
      throw IconTradingRequestFailure(message: e.toString());
    } on HttpFailure {
      throw IconTradingFailure();
    }
  }

  Future<List<LibaoInvestment>> libaoInvestmentList() async {
    try {
      final response = await _iconTradingApi.libaoInvestmentList();
      return response.map((e) => LibaoInvestment.fromJson(e)).toList();
    } on HttpRequestFailure catch (e) {
      throw IconTradingRequestFailure(message: e.toString());
    } on HttpFailure {
      throw IconTradingFailure();
    }
  }

  Future<List<Candle>> getCandleData(
      {required String symbol, required String interval}) async {
    try {
      final response = await _iconTradingApi.getCandleData(
        interval: interval,
        symbol: symbol,
      );
      return response.map((e) => Candle.fromJson(e)).toList().reversed.toList();
    } on HttpRequestFailure catch (e) {
      throw IconTradingRequestFailure(message: e.toString());
    } on HttpFailure {
      throw IconTradingFailure();
    }
  }

  Future<TopGainer> getSymbolDetails({required String symbol}) async {
    try {
      final response = await _iconTradingApi.getSymbolDetails(
        symbol: symbol,
      );
      return TopGainer.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw IconTradingRequestFailure(message: e.toString());
    } on HttpFailure {
      throw IconTradingFailure();
    }
  }

  Future<TradingHistory> getHistory(int page) async {
    try {
      final response = await _iconTradingApi.getHistory(page);
      return TradingHistory.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw IconTradingRequestFailure(message: e.toString());
    } on HttpFailure {
      throw IconTradingFailure();
    }
  }

  Future<SaveTrade> saveTrade({
    required String amount,
    required String tradeType,
    required String periodId,
    required String timeStamp,
    required String currencyId,
    required String timeOption,
  }) async {
    try {
      final response = await _iconTradingApi.saveTrade(
        amount: amount,
        tradeType: tradeType,
        periodId: periodId,
        timeStamp: timeStamp,
        currencyId: currencyId,
        timeOption: timeOption,
      );
      return SaveTrade.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw IconTradingRequestFailure(message: e.toString());
    } on HttpFailure {
      throw IconTradingFailure();
    }
  }

  Future<CurrentTradingPeriod> getCurrentTradingPeriod(
      {required String currencyId, required periodType}) async {
    try {
      final response = await _iconTradingApi.getCurrentTradingPeriod(
          currenyId: currencyId, periodType: periodType);
      return CurrentTradingPeriod.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw IconTradingRequestFailure(message: e.toString());
    } on HttpFailure {
      throw IconTradingFailure();
    }
  }

  Future<Map<String, dynamic>> getSymbolPriceDetails(
      {required String symbol}) async {
    try {
      final response = await _iconTradingApi.getSymbolPriceDetails(
        symbol: symbol,
      );
      return response;
    } on HttpRequestFailure catch (e) {
      throw IconTradingRequestFailure(message: e.toString());
    } on HttpFailure {
      throw IconTradingFailure();
    }
  }
}
