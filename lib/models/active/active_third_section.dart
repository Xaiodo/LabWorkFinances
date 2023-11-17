import 'package:flutter_labwork_2/models/asset.dart';

class ActiveThirdSection {
  final Asset balance;

  ActiveThirdSection({
    required this.balance,
  });

  factory ActiveThirdSection.initial() {
    return ActiveThirdSection(
      balance: Asset.initial(),
    );
  }

  ActiveThirdSection copyWith({
    Asset? balance,
  }) {
    return ActiveThirdSection(
      balance: balance ?? this.balance,
    );
  }

  factory ActiveThirdSection.fromJson(Map<String, dynamic> json) {
    return ActiveThirdSection(
      balance: Asset.fromJson(json['balance']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'balance': balance.toJson(),
    };
  }
}
