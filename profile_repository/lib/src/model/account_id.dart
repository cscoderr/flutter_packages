class AccountId {
  final String? name;
  final String? accountId;

  const AccountId({
    this.name,
    this.accountId,
  });

  factory AccountId.fromJson(Map<String, dynamic> json) => AccountId(
        name: json['name'] ?? '',
        accountId: json['account_id'] ?? '',
      );
}
