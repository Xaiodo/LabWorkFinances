import 'package:flutter_labwork_2/models/details.dart';
import 'package:flutter_labwork_2/models/report.dart';

class Company {
  final String name;
  final String registerInCountry;
  final String address;
  final Details details;
  List<Report> reports;

  Company({
    required this.name,
    required this.registerInCountry,
    required this.address,
    this.details = const Details.initial(),
    required this.reports,
  });

  Company copyWith({
    String? name,
    String? registerInCountry,
    String? address,
    Details? details,
    List<Report>? reports,
  }) {
    return Company(
      name: name ?? this.name,
      registerInCountry: registerInCountry ?? this.registerInCountry,
      address: address ?? this.address,
      details: details ?? this.details,
      reports: reports ?? this.reports,
    );
  }

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      name: json['name'],
      registerInCountry: json['registerInCountry'],
      address: json['address'],
      details: Details.fromJson(json['details']),
      reports: json['reports'] != null
          ? (json['reports'] as List).map((i) => Report.fromJson(i)).toList()
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'registerInCountry': registerInCountry,
      'address': address,
      'details': details.toJson(),
      'reports': reports.map((e) => e.toJson()).toList(),
    };
  }

  factory Company.initial() {
    return Company(
      name: '',
      registerInCountry: '',
      address: '',
      details: const Details.initial(),
      reports: [],
    );
  }

  // Група G1 – показники фінансової стійкості

  String getInstantLiquidityRatio() {
    double result = 0.0;

    result = (reports.last.active.secondSection.currentFinancialInvestments
                        .priceAtEnd! +
                    reports.last.active.secondSection.cash.priceAtEnd!) /
                reports.last.passive.thirdSection.total.priceAtEnd! ==
            0
        ? 1.0
        : reports.last.passive.thirdSection.total.priceAtEnd!;

    return result.toStringAsFixed(2);
  }

  String getCurrentLiquidityRatio() {
    double result = 0.0;

    result = (reports.last.active.secondSection.accountsReceivable.priceAtEnd! +
            reports
                .last.active.secondSection.otherAccountsReceivable.priceAtEnd! +
            reports.last.active.secondSection.currentFinancialInvestments
                .priceAtEnd! +
            reports.last.active.secondSection.cash.priceAtEnd!) /
        (reports.last.active.secondSection.total.priceAtEnd == 0
            ? 1.0
            : reports.last.active.secondSection.total.priceAtEnd!);

    return result.toStringAsFixed(2);
  }

  String getTotalLiquidityRatio() {
    double result = 0.0;

    result = reports.last.active.secondSection.total.priceAtEnd! /
                reports.last.passive.thirdSection.total.priceAtEnd! ==
            0
        ? 1.0
        : reports.last.passive.thirdSection.total.priceAtEnd!;

    return result.toStringAsFixed(2);
  }

  String getFinancialIndependenceRatio() {
    double result = 0.0;

    result = (reports.last.passive.secondSection.targetedFunding.priceAtEnd! +
                    reports.last.passive.secondSection.total.priceAtEnd! +
                    reports.last.passive.thirdSection.total.priceAtEnd!) /
                reports.last.passive.firstSection.total.priceAtEnd! ==
            0
        ? 1.0
        : reports.last.passive.firstSection.total.priceAtEnd!;

    return result.toStringAsFixed(2);
  }

  String getEquityManeuverabilityRatio() {
    double result = 0.0;

    result = (reports.last.passive.firstSection.total.priceAtEnd! -
                    reports.last.active.firstSection.total.priceAtEnd!) /
                reports.last.passive.firstSection.total.priceAtEnd! ==
            0
        ? 1.0
        : reports.last.passive.firstSection.total.priceAtEnd!;

    return result.toStringAsFixed(2);
  }

  // Група G2 – аналіз прибутків та збитків

  String getProductionProfitabilityRatio() {
    double result = 0.0;

    result = reports.last.active.firstSection.total.priceAtEnd! /
                reports.last.active.firstSection.total.priceAtBeginning! ==
            0
        ? 1.0
        : reports.last.active.firstSection.total.priceAtBeginning!;

    return result.toStringAsFixed(2);
  }

  String getMaximumRepaidLoanAmountRatio() {
    double result = 0.0;

    result =
        details.largestAmountOfCredit! / details.amountOfRequiredCredit! == 0
            ? 1.0
            : details.amountOfRequiredCredit!;

    return result.toStringAsFixed(2);
  }

  String getActivityRatioPastYears() =>
      details.gradationOfProfitLossAnalysis == '' ||
              details.gradationOfProfitLossAnalysis == null
          ? '(0; 1]'
          : details.gradationOfProfitLossAnalysis!;

  // Група G3 – аналіз рентабельності
  String getSpecificWeightOfEnterpriseFundsInProjectValueRatio() {
    double result = 0.0;
    result = details.numberOfOwnMoneyInvested! /
                reports.last.passive.firstSection.total.priceAtEnd! ==
            0
        ? 1.0
        : reports.last.passive.firstSection.total.priceAtEnd!;

    return result.toStringAsFixed(2);
  }

  String getAvailabilityRatioOfOwnLiquidAssets() {
    double result = 0.0;

    result = details.valueOfLiquidProperty! /
        (details.largestAmountOfCredit! == 0
            ? 1.0
            : details.largestAmountOfCredit!);

    return result.toStringAsFixed(2);
  }
}
