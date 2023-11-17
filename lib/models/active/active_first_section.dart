import 'package:flutter_labwork_2/models/asset.dart';

class ActiveFirstSection {
  final Asset intangibleAssets;
  final Asset initualValueOfIntangibleAssets;
  final Asset accumulatedAmortizationOfIntangibleAssets;
  final Asset unfinishedCapitalInvestments;
  final Asset mainAssets;
  final Asset initialValueOfMainAssets;
  final Asset wearAndTearOfMainAssets;
  final Asset investmentProperty;
  final Asset longtermBiologicalAssets;
  final Asset byMethodOfParticipation;
  final Asset otherFinancialInvestmentsOfLongTerm;
  final Asset longtermReceivables;
  final Asset deferredTaxAssets;
  final Asset otherNonCurrentAssets;
  final Asset total;

  ActiveFirstSection({
    required this.intangibleAssets,
    required this.initualValueOfIntangibleAssets,
    required this.accumulatedAmortizationOfIntangibleAssets,
    required this.unfinishedCapitalInvestments,
    required this.mainAssets,
    required this.initialValueOfMainAssets,
    required this.wearAndTearOfMainAssets,
    required this.investmentProperty,
    required this.longtermBiologicalAssets,
    required this.byMethodOfParticipation,
    required this.otherFinancialInvestmentsOfLongTerm,
    required this.longtermReceivables,
    required this.deferredTaxAssets,
    required this.otherNonCurrentAssets,
    required this.total,
  });

  factory ActiveFirstSection.initial() {
    return ActiveFirstSection(
      intangibleAssets: Asset.initial(),
      initualValueOfIntangibleAssets: Asset.initial(),
      accumulatedAmortizationOfIntangibleAssets: Asset.initial(),
      unfinishedCapitalInvestments: Asset.initial(),
      mainAssets: Asset.initial(),
      initialValueOfMainAssets: Asset.initial(),
      wearAndTearOfMainAssets: Asset.initial(),
      investmentProperty: Asset.initial(),
      longtermBiologicalAssets: Asset.initial(),
      byMethodOfParticipation: Asset.initial(),
      otherFinancialInvestmentsOfLongTerm: Asset.initial(),
      longtermReceivables: Asset.initial(),
      deferredTaxAssets: Asset.initial(),
      otherNonCurrentAssets: Asset.initial(),
      total: Asset.initial(),
    );
  }

  ActiveFirstSection copyWith({
    Asset? intangibleAssets,
    Asset? initualValueOfIntangibleAssets,
    Asset? accumulatedAmortizationOfIntangibleAssets,
    Asset? unfinishedCapitalInvestments,
    Asset? mainAssets,
    Asset? initialValueOfMainAssets,
    Asset? wearAndTearOfMainAssets,
    Asset? investmentProperty,
    Asset? longtermBiologicalAssets,
    Asset? byMethodOfParticipation,
    Asset? otherFinancialInvestmentsOfLongTerm,
    Asset? longtermReceivables,
    Asset? deferredTaxAssets,
    Asset? otherNonCurrentAssets,
    Asset? total,
  }) {
    return ActiveFirstSection(
      intangibleAssets: intangibleAssets ?? this.intangibleAssets,
      initualValueOfIntangibleAssets:
          initualValueOfIntangibleAssets ?? this.initualValueOfIntangibleAssets,
      accumulatedAmortizationOfIntangibleAssets:
          accumulatedAmortizationOfIntangibleAssets ??
              this.accumulatedAmortizationOfIntangibleAssets,
      unfinishedCapitalInvestments:
          unfinishedCapitalInvestments ?? this.unfinishedCapitalInvestments,
      mainAssets: mainAssets ?? this.mainAssets,
      initialValueOfMainAssets:
          initialValueOfMainAssets ?? this.initialValueOfMainAssets,
      wearAndTearOfMainAssets:
          wearAndTearOfMainAssets ?? this.wearAndTearOfMainAssets,
      investmentProperty: investmentProperty ?? this.investmentProperty,
      longtermBiologicalAssets:
          longtermBiologicalAssets ?? this.longtermBiologicalAssets,
      byMethodOfParticipation:
          byMethodOfParticipation ?? this.byMethodOfParticipation,
      otherFinancialInvestmentsOfLongTerm:
          otherFinancialInvestmentsOfLongTerm ??
              this.otherFinancialInvestmentsOfLongTerm,
      longtermReceivables: longtermReceivables ?? this.longtermReceivables,
      deferredTaxAssets: deferredTaxAssets ?? this.deferredTaxAssets,
      otherNonCurrentAssets:
          otherNonCurrentAssets ?? this.otherNonCurrentAssets,
      total: total ?? this.total,
    );
  }

  factory ActiveFirstSection.fromJson(Map<String, dynamic> json) {
    return ActiveFirstSection(
      intangibleAssets: Asset.fromJson(json['intangibleAssets']),
      initualValueOfIntangibleAssets:
          Asset.fromJson(json['initualValueOfIntangibleAssets']),
      accumulatedAmortizationOfIntangibleAssets:
          Asset.fromJson(json['accumulatedAmortizationOfIntangibleAssets']),
      unfinishedCapitalInvestments:
          Asset.fromJson(json['unfinishedCapitalInvestments']),
      mainAssets: Asset.fromJson(json['mainAssets']),
      initialValueOfMainAssets:
          Asset.fromJson(json['initialValueOfMainAssets']),
      wearAndTearOfMainAssets: Asset.fromJson(json['wearAndTearOfMainAssets']),
      investmentProperty: Asset.fromJson(json['investmentProperty']),
      longtermBiologicalAssets:
          Asset.fromJson(json['longtermBiologicalAssets']),
      byMethodOfParticipation: Asset.fromJson(
          json['longtermfinancialInvestmentsAccountedByMethodOfParticipation']),
      otherFinancialInvestmentsOfLongTerm:
          Asset.fromJson(json['otherFinancialInvestmentsOfLongTerm']),
      longtermReceivables: Asset.fromJson(json['longtermReceivables']),
      deferredTaxAssets: Asset.fromJson(json['deferredTaxAssets']),
      otherNonCurrentAssets: Asset.fromJson(json['otherNonCurrentAssets']),
      total: Asset.fromJson(json['total']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'intangibleAssets': intangibleAssets.toJson(),
      'initualValueOfIntangibleAssets': initualValueOfIntangibleAssets.toJson(),
      'accumulatedAmortizationOfIntangibleAssets':
          accumulatedAmortizationOfIntangibleAssets.toJson(),
      'unfinishedCapitalInvestments': unfinishedCapitalInvestments.toJson(),
      'mainAssets': mainAssets.toJson(),
      'initialValueOfMainAssets': initialValueOfMainAssets.toJson(),
      'wearAndTearOfMainAssets': wearAndTearOfMainAssets.toJson(),
      'investmentProperty': investmentProperty.toJson(),
      'longtermBiologicalAssets': longtermBiologicalAssets.toJson(),
      'longtermfinancialInvestmentsAccountedByMethodOfParticipation':
          byMethodOfParticipation.toJson(),
      'otherFinancialInvestmentsOfLongTerm':
          otherFinancialInvestmentsOfLongTerm.toJson(),
      'longtermReceivables': longtermReceivables.toJson(),
      'deferredTaxAssets': deferredTaxAssets.toJson(),
      'otherNonCurrentAssets': otherNonCurrentAssets.toJson(),
      'total': total.toJson(),
    };
  }
}
