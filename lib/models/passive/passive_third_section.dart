import 'package:flutter_labwork_2/models/asset.dart';

class PassiveThirdSection {
  final Asset shortTermBankLoans;
  final Asset currentAccountsPayableForLongTermLiabilities;
  final Asset currentAccountsPayableForGoodsServices;
  final Asset currentAccountsPayableForBudgetarySettlements;
  final Asset currentAccountsPayableIncludingIncomeTax;
  final Asset currentAccountsPayableForInsuranceSettlements;
  final Asset currentAccountsPayableForLaborPayments;
  final Asset currentProvisions;
  final Asset futurePeriodRevenues;
  final Asset otherCurrentLiabilities;
  final Asset total;

  PassiveThirdSection({
    required this.shortTermBankLoans,
    required this.currentAccountsPayableForLongTermLiabilities,
    required this.currentAccountsPayableForGoodsServices,
    required this.currentAccountsPayableForBudgetarySettlements,
    required this.currentAccountsPayableIncludingIncomeTax,
    required this.currentAccountsPayableForInsuranceSettlements,
    required this.currentAccountsPayableForLaborPayments,
    required this.currentProvisions,
    required this.futurePeriodRevenues,
    required this.otherCurrentLiabilities,
    required this.total,
  });

  factory PassiveThirdSection.initial() {
    return PassiveThirdSection(
      shortTermBankLoans: Asset.initial(),
      currentAccountsPayableForLongTermLiabilities: Asset.initial(),
      currentAccountsPayableForGoodsServices: Asset.initial(),
      currentAccountsPayableForBudgetarySettlements: Asset.initial(),
      currentAccountsPayableIncludingIncomeTax: Asset.initial(),
      currentAccountsPayableForInsuranceSettlements: Asset.initial(),
      currentAccountsPayableForLaborPayments: Asset.initial(),
      currentProvisions: Asset.initial(),
      futurePeriodRevenues: Asset.initial(),
      otherCurrentLiabilities: Asset.initial(),
      total: Asset.initial(),
    );
  }

  PassiveThirdSection copyWith({
    Asset? shortTermBankLoans,
    Asset? currentAccountsPayableForLongTermLiabilities,
    Asset? currentAccountsPayableForGoodsServices,
    Asset? currentAccountsPayableForBudgetarySettlements,
    Asset? currentAccountsPayableIncludingIncomeTax,
    Asset? currentAccountsPayableForInsuranceSettlements,
    Asset? currentAccountsPayableForLaborPayments,
    Asset? currentProvisions,
    Asset? futurePeriodRevenues,
    Asset? otherCurrentLiabilities,
    Asset? total,
  }) {
    return PassiveThirdSection(
      shortTermBankLoans: shortTermBankLoans ?? this.shortTermBankLoans,
      currentAccountsPayableForLongTermLiabilities:
          currentAccountsPayableForLongTermLiabilities ??
              this.currentAccountsPayableForLongTermLiabilities,
      currentAccountsPayableForGoodsServices:
          currentAccountsPayableForGoodsServices ??
              this.currentAccountsPayableForGoodsServices,
      currentAccountsPayableForBudgetarySettlements:
          currentAccountsPayableForBudgetarySettlements ??
              this.currentAccountsPayableForBudgetarySettlements,
      currentAccountsPayableIncludingIncomeTax:
          currentAccountsPayableIncludingIncomeTax ??
              this.currentAccountsPayableIncludingIncomeTax,
      currentAccountsPayableForInsuranceSettlements:
          currentAccountsPayableForInsuranceSettlements ??
              this.currentAccountsPayableForInsuranceSettlements,
      currentAccountsPayableForLaborPayments:
          currentAccountsPayableForLaborPayments ??
              this.currentAccountsPayableForLaborPayments,
      currentProvisions: currentProvisions ?? this.currentProvisions,
      futurePeriodRevenues: futurePeriodRevenues ?? this.futurePeriodRevenues,
      otherCurrentLiabilities:
          otherCurrentLiabilities ?? this.otherCurrentLiabilities,
      total: total ?? this.total,
    );
  }

  factory PassiveThirdSection.fromJson(Map<String, dynamic> json) {
    return PassiveThirdSection(
      shortTermBankLoans: Asset.fromJson(json['shortTermBankLoans']),
      currentAccountsPayableForLongTermLiabilities:
          Asset.fromJson(json['currentAccountsPayableForLongTermLiabilities']),
      currentAccountsPayableForGoodsServices:
          Asset.fromJson(json['currentAccountsPayableForGoodsServices']),
      currentAccountsPayableForBudgetarySettlements:
          Asset.fromJson(json['currentAccountsPayableForBudgetarySettlements']),
      currentAccountsPayableIncludingIncomeTax:
          Asset.fromJson(json['currentAccountsPayableIncludingIncomeTax']),
      currentAccountsPayableForInsuranceSettlements:
          Asset.fromJson(json['currentAccountsPayableForInsuranceSettlements']),
      currentAccountsPayableForLaborPayments:
          Asset.fromJson(json['currentAccountsPayableForLaborPayments']),
      currentProvisions: Asset.fromJson(json['currentProvisions']),
      futurePeriodRevenues: Asset.fromJson(json['futurePeriodRevenues']),
      otherCurrentLiabilities: Asset.fromJson(json['otherCurrentLiabilities']),
      total: Asset.fromJson(json['total']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'shortTermBankLoans': shortTermBankLoans.toJson(),
      'currentAccountsPayableForLongTermLiabilities':
          currentAccountsPayableForLongTermLiabilities.toJson(),
      'currentAccountsPayableForGoodsServices':
          currentAccountsPayableForGoodsServices.toJson(),
      'currentAccountsPayableForBudgetarySettlements':
          currentAccountsPayableForBudgetarySettlements.toJson(),
      'currentAccountsPayableIncludingIncomeTax':
          currentAccountsPayableIncludingIncomeTax.toJson(),
      'currentAccountsPayableForInsuranceSettlements':
          currentAccountsPayableForInsuranceSettlements.toJson(),
      'currentAccountsPayableForLaborPayments':
          currentAccountsPayableForLaborPayments.toJson(),
      'currentProvisions': currentProvisions.toJson(),
      'futurePeriodRevenues': futurePeriodRevenues.toJson(),
      'otherCurrentLiabilities': otherCurrentLiabilities.toJson(),
      'total': total.toJson(),
    };
  }
}
