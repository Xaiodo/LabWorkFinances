import 'package:flutter_labwork_2/models/asset.dart';

class ActiveSecondSection {
  final Asset stocks;
  final Asset currentBiologicalAssets;
  final Asset accountsReceivable;
  final Asset accountsReceivableOnSssuedAdvances;
  final Asset accountsReceivableWithBudget;
  final Asset accountsReceivableIncludingIncomeTax;
  final Asset otherAccountsReceivable;
  final Asset currentFinancialInvestments;
  final Asset cash;
  final Asset expensesFuturePeriods;
  final Asset otherCurrentAssets;
  final Asset total;

  ActiveSecondSection({
    required this.stocks,
    required this.currentBiologicalAssets,
    required this.accountsReceivable,
    required this.accountsReceivableOnSssuedAdvances,
    required this.accountsReceivableWithBudget,
    required this.accountsReceivableIncludingIncomeTax,
    required this.otherAccountsReceivable,
    required this.currentFinancialInvestments,
    required this.cash,
    required this.expensesFuturePeriods,
    required this.otherCurrentAssets,
    required this.total,
  });

  factory ActiveSecondSection.initial() {
    return ActiveSecondSection(
      stocks: Asset.initial(),
      currentBiologicalAssets: Asset.initial(),
      accountsReceivable: Asset.initial(),
      accountsReceivableOnSssuedAdvances: Asset.initial(),
      accountsReceivableWithBudget: Asset.initial(),
      accountsReceivableIncludingIncomeTax: Asset.initial(),
      otherAccountsReceivable: Asset.initial(),
      currentFinancialInvestments: Asset.initial(),
      cash: Asset.initial(),
      expensesFuturePeriods: Asset.initial(),
      otherCurrentAssets: Asset.initial(),
      total: Asset.initial(),
    );
  }

  ActiveSecondSection copyWith({
    Asset? stocks,
    Asset? currentBiologicalAssets,
    Asset? accountsReceivable,
    Asset? accountsReceivableOnSssuedAdvances,
    Asset? accountsReceivableWithBudget,
    Asset? accountsReceivableIncludingIncomeTax,
    Asset? otherAccountsReceivable,
    Asset? currentFinancialInvestments,
    Asset? cash,
    Asset? expensesFuturePeriods,
    Asset? otherCurrentAssets,
    Asset? total,
  }) {
    return ActiveSecondSection(
      stocks: stocks ?? this.stocks,
      currentBiologicalAssets:
          currentBiologicalAssets ?? this.currentBiologicalAssets,
      accountsReceivable: accountsReceivable ?? this.accountsReceivable,
      accountsReceivableOnSssuedAdvances: accountsReceivableOnSssuedAdvances ??
          this.accountsReceivableOnSssuedAdvances,
      accountsReceivableWithBudget:
          accountsReceivableWithBudget ?? this.accountsReceivableWithBudget,
      accountsReceivableIncludingIncomeTax:
          accountsReceivableIncludingIncomeTax ??
              this.accountsReceivableIncludingIncomeTax,
      otherAccountsReceivable:
          otherAccountsReceivable ?? this.otherAccountsReceivable,
      currentFinancialInvestments:
          currentFinancialInvestments ?? this.currentFinancialInvestments,
      cash: cash ?? this.cash,
      expensesFuturePeriods:
          expensesFuturePeriods ?? this.expensesFuturePeriods,
      otherCurrentAssets: otherCurrentAssets ?? this.otherCurrentAssets,
      total: total ?? this.total,
    );
  }

  factory ActiveSecondSection.fromJson(Map<String, dynamic> json) {
    return ActiveSecondSection(
      stocks: Asset.fromJson(json['stocks']),
      currentBiologicalAssets: Asset.fromJson(json['currentBiologicalAssets']),
      accountsReceivable: Asset.fromJson(json['accountsReceivable']),
      accountsReceivableOnSssuedAdvances:
          Asset.fromJson(json['accountsReceivableOnSssuedAdvances']),
      accountsReceivableWithBudget:
          Asset.fromJson(json['accountsReceivableWithBudget']),
      accountsReceivableIncludingIncomeTax:
          Asset.fromJson(json['accountsReceivableIncludingIncomeTax']),
      otherAccountsReceivable: Asset.fromJson(json['otherAccountsReceivable']),
      currentFinancialInvestments:
          Asset.fromJson(json['currentFinancialInvestments']),
      cash: Asset.fromJson(json['cash']),
      expensesFuturePeriods: Asset.fromJson(json['expensesFuturePeriods']),
      otherCurrentAssets: Asset.fromJson(json['otherCurrentAssets']),
      total: Asset.fromJson(json['total']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'stocks': stocks.toJson(),
      'currentBiologicalAssets': currentBiologicalAssets.toJson(),
      'accountsReceivable': accountsReceivable.toJson(),
      'accountsReceivableOnSssuedAdvances':
          accountsReceivableOnSssuedAdvances.toJson(),
      'accountsReceivableWithBudget': accountsReceivableWithBudget.toJson(),
      'accountsReceivableIncludingIncomeTax':
          accountsReceivableIncludingIncomeTax.toJson(),
      'otherAccountsReceivable': otherAccountsReceivable.toJson(),
      'currentFinancialInvestments': currentFinancialInvestments.toJson(),
      'cash': cash.toJson(),
      'expensesFuturePeriods': expensesFuturePeriods.toJson(),
      'otherCurrentAssets': otherCurrentAssets.toJson(),
      'total': total.toJson(),
    };
  }
}
