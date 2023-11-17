import 'package:flutter_labwork_2/models/asset.dart';

class PassiveFourthSection {
  final Asset balance;

  PassiveFourthSection({
    required this.balance,
  });

  factory PassiveFourthSection.initial() {
    return PassiveFourthSection(
      balance: Asset.initial(),
    );
  }

  PassiveFourthSection copyWith({
    Asset? balance,
  }) {
    return PassiveFourthSection(
      balance: balance ?? this.balance,
    );
  }

  factory PassiveFourthSection.fromJson(Map<String, dynamic> json) {
    return PassiveFourthSection(
      balance: Asset.fromJson(json['balance']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'balance': balance.toJson(),
    };
  }
}
