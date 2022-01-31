import 'dart:async';
import 'dart:convert';

import 'package:auth_repository/auth_repository.dart';
import 'package:auth_service/auth_service.dart';
import 'package:cs_storage/cs_storage.dart';

class AuthFailure implements Exception {}

class AuthUnautorizedRequest implements Exception {
  AuthUnautorizedRequest({this.message});

  final String? message;

  @override
  String toString() {
    return message.toString();
  }
}

class AuthRequestFailure implements Exception {
  AuthRequestFailure({this.message});

  final String? message;

  @override
  String toString() {
    return message.toString();
  }
}

enum AuthStatus {
  unknown,
  intial,
  authenticated,
  unauthenticated,
}

class AuthRepository {
  AuthRepository({AuthService? authService, CsStorage? csStorage})
      : _authService = authService ?? AuthServiceImpl(),
        _csStorage = csStorage ?? CsStorage();

  final AuthService _authService;
  final CsStorage _csStorage;
  final _controller = StreamController<AuthStatus>();

  Stream<AuthStatus> get status async* {
    final hasUser = await _csStorage.check('user');
    final hasToken = await _csStorage.check('token');
    final isOnboardingCompleted =
        await _csStorage.readBool('onboarding_completed') ?? false;
    if (hasUser && hasToken) {
      yield AuthStatus.authenticated;
    } else if (isOnboardingCompleted) {
      yield AuthStatus.unauthenticated;
    } else if (!isOnboardingCompleted) {
      yield AuthStatus.intial;
    } else {
      yield AuthStatus.intial;
    }
    // yield* _controller.stream;
  }

  Future<RegisterMessage> checkUserEmail({String? email}) async {
    try {
      final response = await _authService.checkUserWithEmail(email: email);
      return RegisterMessage.fromJson(response['response']);
    } on HttpRequestFailure catch (e) {
      throw AuthRequestFailure(message: e.toString());
    } on HttpFailure {
      throw AuthFailure();
    }
  }

  Future<RegisterMessage> checkUserPhone(
      {String? phoneNumber, String? dialCode}) async {
    try {
      final response = await _authService.checkUserWithPhoneNumber(
          phoneNumber: phoneNumber, dialCode: dialCode);
      return RegisterMessage.fromJson(response['response']);
    } on HttpRequestFailure catch (e) {
      throw AuthRequestFailure(message: e.toString());
    } on HttpFailure {
      throw AuthFailure();
    }
  }

  Future<RegisterMessage> resendOtp(
      {String? phoneNumber, String? dialCode}) async {
    try {
      final response = await _authService.resendOtp(
          phoneNumber: phoneNumber, dialCode: dialCode);
      return RegisterMessage.fromJson(response['response']);
    } on HttpRequestFailure catch (e) {
      throw AuthRequestFailure(message: e.toString());
    } on HttpFailure {
      throw AuthFailure();
    }
  }

  Future<RegisterMessage> register({
    String? phoneNumber,
    String? email,
    String? fullName,
    String? dialCode,
    String? password,
    String? refCode,
    String? passwordConfirmation,
  }) async {
    try {
      final response = await _authService.register(
        email: email,
        phoneNumber: phoneNumber,
        fullName: fullName,
        dialCode: dialCode,
        password: password,
        refCode: refCode,
        passwordConfirmation: passwordConfirmation,
      );
      return RegisterMessage.fromJson(response['response']);
    } on HttpRequestFailure catch (e) {
      throw AuthRequestFailure(message: e.toString());
    } on HttpFailure {
      throw AuthFailure();
    }
  }

  Future<User> login({
    String? email,
    String? password,
  }) async {
    try {
      final response = await _authService.login(
        email: email,
        password: password,
      );
      _csStorage.saveString(key: 'token', value: response['data']['token']);
      _csStorage.saveString(key: 'user', value: jsonEncode(response['data']));
      _controller.add(AuthStatus.authenticated);
      return User.fromJson(response['data']);
    } on HttpRequestFailure catch (e) {
      throw AuthRequestFailure(message: e.toString());
    } on HttpFailure {
      throw AuthFailure();
    }
  }

  Future<RegisterMessage> forgotPassword({
    String? email,
  }) async {
    try {
      final response = await _authService.forgotPassword(
        email: email,
      );
      return RegisterMessage.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw AuthRequestFailure(message: e.toString());
    } on HttpFailure {
      throw AuthFailure();
    }
  }

  Future<RegisterMessage> verifyCode({
    String? email,
    String? code,
  }) async {
    try {
      final response = await _authService.verifyCode(
        email: email,
        code: code,
      );
      return RegisterMessage.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw AuthRequestFailure(message: e.toString());
    } on HttpFailure {
      throw AuthFailure();
    }
  }

  Future<RegisterMessage> verifyOtp({
    String? email,
    String? code,
  }) async {
    try {
      final response = await _authService.verifyOtp(
        email: email,
        code: code,
      );
      return RegisterMessage.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw AuthRequestFailure(message: e.toString());
    } on HttpFailure {
      throw AuthFailure();
    }
  }

  Future<RegisterMessage> transactionPin({
    String? email,
    String? pin,
  }) async {
    try {
      final response = await _authService.addTransactionPin(
        email: email,
        pin: pin,
      );
      return RegisterMessage.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw AuthRequestFailure(message: e.toString());
    } on HttpFailure {
      throw AuthFailure();
    }
  }

  Future<RegisterMessage> resetPassword({
    String? email,
    String? password,
    String? passwordConfirmation,
  }) async {
    try {
      final response = await _authService.resetPassword(
        email: email,
        password: password,
        passwordConfirmation: passwordConfirmation,
      );
      return RegisterMessage.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw AuthRequestFailure(message: e.toString());
    } on HttpFailure {
      throw AuthFailure();
    }
  }

  Future<User> get user async {
    final jsonData = jsonDecode(await _csStorage.readString('user') ?? '');
    return User.fromJson(jsonData);
  }

  Future<Map<String, dynamic>> get settings async {
    final jsonData = await _csStorage.readString('settings') != null
        ? jsonDecode(await _csStorage.readString('settings') ?? '')
        : '';
    return jsonData.toString().isNotEmpty ? jsonData : {};
  }

  void updateUser(User user) async {
    _csStorage.saveString(key: 'user', value: jsonEncode(user.toJson()));
  }

  void addOnboardingCompleted(bool value) {
    _csStorage.saveBool(key: 'onboarding_completed', value: value);
  }

  void updateGeneralSettings(Map<String, dynamic> settings) async {
    _csStorage.saveString(key: 'settings', value: jsonEncode(settings));
  }

  Future<void> removeData() async {
    await _csStorage.remove('user');
    await _csStorage.remove('token');
  }

  Future<void> addBoolData(bool value) =>
      _csStorage.saveBool(key: '_icon_trading_remember_me', value: value);

  Future<bool?> readBoolData() =>
      _csStorage.readBool('_icon_trading_remember_me');

  Future<String?> readData(String key) => _csStorage.readString(key);

  Future<void> remove(String key) => _csStorage.remove(key);

  Future<void> checkData(String key) => _csStorage.check(key);

  Future<void> addData(String key, String value) =>
      _csStorage.saveString(key: key, value: value);

  Future<void> logOut() async {
    await _csStorage.remove('user');
    await _csStorage.remove('token');
    _controller.add(AuthStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
