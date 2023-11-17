import 'package:flutter_labwork_2/models/asset.dart';

class PassiveSecondSection {
  final Asset deferredTaxLiabilities;
  final Asset longTermBankLoans;
  final Asset otherLongTermLiabilities;
  final Asset longTermProvisions;
  final Asset targetedFunding;
  final Asset total;

  PassiveSecondSection({
    required this.deferredTaxLiabilities,
    required this.longTermBankLoans,
    required this.otherLongTermLiabilities,
    required this.longTermProvisions,
    required this.targetedFunding,
    required this.total,
  });

  factory PassiveSecondSection.initial() {
    return PassiveSecondSection(
      deferredTaxLiabilities: Asset.initial(),
      longTermBankLoans: Asset.initial(),
      otherLongTermLiabilities: Asset.initial(),
      longTermProvisions: Asset.initial(),
      targetedFunding: Asset.initial(),
      total: Asset.initial(),
    );
  }

  PassiveSecondSection copyWith({
    Asset? deferredTaxLiabilities,
    Asset? longTermBankLoans,
    Asset? otherLongTermLiabilities,
    Asset? longTermProvisions,
    Asset? targetedFunding,
    Asset? total,
  }) {
    return PassiveSecondSection(
      deferredTaxLiabilities:
          deferredTaxLiabilities ?? this.deferredTaxLiabilities,
      longTermBankLoans: longTermBankLoans ?? this.longTermBankLoans,
      otherLongTermLiabilities:
          otherLongTermLiabilities ?? this.otherLongTermLiabilities,
      longTermProvisions: longTermProvisions ?? this.longTermProvisions,
      targetedFunding: targetedFunding ?? this.targetedFunding,
      total: total ?? this.total,
    );
  }

  factory PassiveSecondSection.fromJson(Map<String, dynamic> json) {
    return PassiveSecondSection(
      deferredTaxLiabilities: Asset.fromJson(json['deferredTaxLiabilities']),
      longTermBankLoans: Asset.fromJson(json['longTermBankLoans']),
      otherLongTermLiabilities:
          Asset.fromJson(json['otherLongTermLiabilities']),
      longTermProvisions: Asset.fromJson(json['longTermProvisions']),
      targetedFunding: Asset.fromJson(json['targetedFunding']),
      total: Asset.fromJson(json['total']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'deferredTaxLiabilities': deferredTaxLiabilities.toJson(),
      'longTermBankLoans': longTermBankLoans.toJson(),
      'otherLongTermLiabilities': otherLongTermLiabilities.toJson(),
      'longTermProvisions': longTermProvisions.toJson(),
      'targetedFunding': targetedFunding.toJson(),
      'total': total.toJson(),
    };
  }
}
