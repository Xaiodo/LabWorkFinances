import 'package:flutter_labwork_2/models/asset.dart';

class AdditionalSection {
  final Asset netIncome;
  final Asset materialCosts;
  final Asset laborCosts;
  final Asset socialSecurityContributions;
  final Asset depreciation;
  final Asset otherOperatingExpenses;

  const AdditionalSection({
    required this.netIncome,
    required this.materialCosts,
    required this.laborCosts,
    required this.socialSecurityContributions,
    required this.depreciation,
    required this.otherOperatingExpenses,
  });

  factory AdditionalSection.initial() {
    return AdditionalSection(
      netIncome: Asset.initial(),
      materialCosts: Asset.initial(),
      laborCosts: Asset.initial(),
      socialSecurityContributions: Asset.initial(),
      depreciation: Asset.initial(),
      otherOperatingExpenses: Asset.initial(),
    );
  }

  AdditionalSection copyWith({
    Asset? netIncome,
    Asset? materialCosts,
    Asset? laborCosts,
    Asset? socialSecurityContributions,
    Asset? depreciation,
    Asset? otherOperatingExpenses,
  }) {
    return AdditionalSection(
      netIncome: netIncome ?? this.netIncome,
      materialCosts: materialCosts ?? this.materialCosts,
      laborCosts: laborCosts ?? this.laborCosts,
      socialSecurityContributions:
          socialSecurityContributions ?? this.socialSecurityContributions,
      depreciation: depreciation ?? this.depreciation,
      otherOperatingExpenses:
          otherOperatingExpenses ?? this.otherOperatingExpenses,
    );
  }

  factory AdditionalSection.fromJson(Map<String, dynamic> json) {
    return AdditionalSection(
      netIncome: Asset.fromJson(json['netIncome']),
      materialCosts: Asset.fromJson(json['materialCosts']),
      laborCosts: Asset.fromJson(json['laborCosts']),
      socialSecurityContributions:
          Asset.fromJson(json['socialSecurityContributions']),
      depreciation: Asset.fromJson(json['depreciation']),
      otherOperatingExpenses: Asset.fromJson(json['otherOperatingExpenses']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'netIncome': netIncome.toJson(),
      'materialCosts': materialCosts.toJson(),
      'laborCosts': laborCosts.toJson(),
      'socialSecurityContributions': socialSecurityContributions.toJson(),
      'depreciation': depreciation.toJson(),
      'otherOperatingExpenses': otherOperatingExpenses.toJson(),
    };
  }
}
