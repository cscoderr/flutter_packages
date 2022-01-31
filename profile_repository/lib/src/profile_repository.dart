import 'package:auth_repository/auth_repository.dart';
import 'package:profile_api/profile_api.dart';
import 'package:profile_repository/profile_repository.dart';

class ProfileFailure implements Exception {}

class ProfileUnautorizedRequest implements Exception {
  ProfileUnautorizedRequest({this.message});

  final String? message;

  @override
  String toString() {
    return message.toString();
  }
}

class ProfileRequestFailure implements Exception {
  ProfileRequestFailure({this.message});

  final String? message;

  @override
  String toString() {
    return message.toString();
  }
}

class ProfileRepository {
  ProfileRepository({ProfileApi? profileApi})
      : _profileApi = profileApi ?? ProfileApiImpl();

  final ProfileApi _profileApi;

  Future<Message> changePhone(
      {String? oldNumber,
      String? oldDialCode,
      String? dialCode,
      String? newNumber}) async {
    try {
      final response = await _profileApi.changePhone(
        oldNumber: oldNumber,
        oldDialCode: oldDialCode,
        dialCode: dialCode,
        newNumber: newNumber,
      );
      return Message.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<ResponseUser> addPaymentMethod({required String address}) async {
    try {
      final response = await _profileApi.addPaymentMethod(
        address: address,
      );
      return ResponseUser.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Message> changePassword({
    String? currentPassword,
    String? password,
    String? passwordConfirmation,
  }) async {
    try {
      final response = await _profileApi.changePassword(
        currentPassword: currentPassword,
        password: password,
        passwordConfirmation: passwordConfirmation,
      );
      return Message.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<ResponseUser> updateProfile(
      {String? firstName,
      String? lastName,
      String? address,
      String? state,
      String? zipCode,
      String? city}) async {
    try {
      final response = await _profileApi.updateProfile(
        lastName: lastName,
        address: address,
        city: city,
        firstName: firstName,
        state: state,
        zipCode: zipCode,
      );
      return ResponseUser.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Message> transfer({
    String? accountId,
    String? amount,
    String? transactionPin,
  }) async {
    try {
      final response = await _profileApi.transfer(
        accountId: accountId,
        amount: amount,
        transactionPin: transactionPin,
      );
      return Message.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<AccountId> checkAccountID({
    String? accountId,
  }) async {
    try {
      final response = await _profileApi.checkAccountID(
        accountId: accountId,
      );
      return AccountId.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Message> changeTransactionPin({
    String? currentPin,
    String? newPin,
    String? confirmPin,
  }) async {
    try {
      final response = await _profileApi.changeTransactionPin(
        currentPin: currentPin,
        newPin: newPin,
        confirmPin: confirmPin,
      );
      return Message.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Order> orders(int page) async {
    try {
      final response = await _profileApi.orders(page);
      return Order.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Withdrawal> withdrawal(int page) async {
    try {
      final response = await _profileApi.withdrawal(page);
      return Withdrawal.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Notification> notifications(int page) async {
    try {
      final response = await _profileApi.notifications(page);
      return Notification.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Team> teams() async {
    try {
      final response = await _profileApi.teams();
      return Team.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<User> getUserProfile() async {
    try {
      final response = await _profileApi.getUserProfile();
      return User.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Message> withdrawToBalance() async {
    try {
      final response = await _profileApi.withdrawToBalance();
      return Message.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<List<Transfer>> transferRecord() async {
    try {
      final response = await _profileApi.transferRecords();
      return response.map((e) => Transfer.fromJson(e)).toList();
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Deposit> deposit({String? amount}) async {
    try {
      final response = await _profileApi.deposit(amount: amount);
      return Deposit.fromJson(response['data']);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Message> withdraw({
    String? quantity,
    String? address,
    String? transactionPin,
  }) async {
    try {
      final response = await _profileApi.withdraw(
        quantity: quantity,
        address: address,
        transactionPin: transactionPin,
      );
      print(response);
      return Message.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Message> addLibao({
    String? id,
    String? amount,
  }) async {
    try {
      final response = await _profileApi.addLibao(
        id: id,
        amount: amount,
      );
      return Message.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Libao> getLibao() async {
    try {
      final response = await _profileApi.getLibao();
      return Libao.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Financial> financial() async {
    try {
      final response = await _profileApi.financialRecords();
      return Financial.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }

  Future<Recharge> rechargeRecords() async {
    try {
      final response = await _profileApi.rechargeRecords();
      return Recharge.fromJson(response);
    } on HttpRequestFailure catch (e) {
      throw ProfileRequestFailure(message: e.toString());
    } on HttpFailure {
      throw ProfileFailure();
    }
  }
}
