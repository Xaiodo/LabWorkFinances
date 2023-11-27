import 'dart:math';

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

  // критерії кредитоспроможності підприємств

  String getInstantLiquidityRatio() {
    double result = 0.0;

    result = (reports.last.active.secondSection.currentFinancialInvestments
                .priceAtEnd! +
            reports.last.active.secondSection.cash.priceAtEnd!) /
        (reports.last.passive.thirdSection.total.priceAtEnd! == 0.0
            ? 1.0
            : reports.last.passive.thirdSection.total.priceAtEnd!);

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
        (reports.last.passive.thirdSection.total.priceAtEnd == 0
            ? 1.0
            : reports.last.passive.thirdSection.total.priceAtEnd!);

    return result.toStringAsFixed(2);
  }

  String getTotalLiquidityRatio() {
    double result = 0.0;

    result = reports.last.active.secondSection.total.priceAtEnd! /
        (reports.last.passive.thirdSection.total.priceAtEnd! == 0
            ? 1.0
            : reports.last.passive.thirdSection.total.priceAtEnd!);

    return result.toStringAsFixed(2);
  }

  String getFinancialIndependenceRatio() {
    double result = 0.0;

    result = (reports.last.passive.secondSection.targetedFunding.priceAtEnd! +
            reports.last.passive.secondSection.total.priceAtEnd! +
            reports.last.passive.thirdSection.total.priceAtEnd!) /
        (reports.last.passive.firstSection.total.priceAtEnd! == 0
            ? 1.0
            : reports.last.passive.firstSection.total.priceAtEnd!);

    return result.toStringAsFixed(2);
  }

  String getEquityManeuverabilityRatio() {
    double result = 0.0;

    result = (reports.last.passive.firstSection.total.priceAtEnd! -
            reports.last.active.firstSection.total.priceAtEnd!) /
        (reports.last.passive.firstSection.total.priceAtEnd! == 0
            ? 1.0
            : reports.last.passive.firstSection.total.priceAtEnd!);

    return result.toStringAsFixed(2);
  }

  // Функції належності для отриманих критеріїв кредитоспроможності підприємств

  String membershipFunctionsGetInstantLiquidityRatio(
      String instantLiquidityRatio) {
    num result = 0;
    double x = double.parse(instantLiquidityRatio);

    if (x <= 0.2) {
      result = 0;
    } else if (x > 0.2 && x <= 0.225) {
      result = 32 * pow((5 * x - 1), 2);
    } else if (x > 0.225 && x < 0.25) {
      result = 1 - 50 * pow((1 - 4 * x), 2);
    } else {
      result = 1.0;
    }

    return result.toStringAsFixed(2);
  }

  String membershipFunctionsGetCurrentLiquidityRatio(
      String currentLiquidityRatio) {
    num result = 0;
    double x = double.parse(currentLiquidityRatio);

    if (x <= 0.5) {
      result = 0;
    } else if (x > 0.5 && x <= 0.75) {
      result = 2 * pow((2 * x - 1), 2);
    } else if (x > 0.75 && x < 1) {
      result = 1 - 8 * pow((1 - x), 2);
    } else {
      result = 1.0;
    }

    return result.toStringAsFixed(2);
  }

  String membershipFunctionsGetTotalLiquidityRatio(String totalLiquidityRatio) {
    num result = 0;
    double x = double.parse(totalLiquidityRatio);

    if (x <= 1) {
      result = 0;
    } else if (x > 1 && x <= 1.75) {
      result = (4 * (x - 1)) / 3;
    } else if (x > 1.75 && x < 2.5) {
      result = (10 - (4 * x)) / 3;
    } else {
      result = 0;
    }

    return result.toStringAsFixed(2);
  }

  String membershipFunctionsGetFinancialIndependenceRatio(
      String financialIndependenceRatio) {
    num result = 0;
    double x = double.parse(financialIndependenceRatio);

    if (x <= 0) {
      result = 0;
    } else if (x > 0 && x <= 1) {
      result = x;
    } else if (x > 1 && x < 2) {
      result = 2 - x;
    } else {
      result = 0;
    }

    return result.toStringAsFixed(2);
  }

  String membershipFunctionsGetEquityManeuverabilityRatio(
      String equityManeuverabilityRatio) {
    num result = 0;
    double x = double.parse(equityManeuverabilityRatio);

    if (x <= 0) {
      result = 0;
    } else if (x > 0 && x <= 0.5) {
      result = 2 * x;
    } else if (x > 0.5 && x < 0.1) {
      result = 2 - (x * 2);
    } else {
      result = 0;
    }

    return result.toStringAsFixed(2);
  }

  // Група G2 – аналіз прибутків та збитків

  // Критерії прибутковості підприємств

  String getProductionProfitabilityRatio() {
    double result = 0.0;

    result = reports.last.additional.netIncome.priceAtEnd! /
        ((reports.last.additional.materialCosts.priceAtEnd! +
                    reports.last.additional.depreciation.priceAtEnd! +
                    reports.last.additional.laborCosts.priceAtEnd! +
                    reports.last.additional.otherOperatingExpenses.priceAtEnd! +
                    reports.last.additional.otherOperatingExpenses.priceAtEnd! +
                    reports.last.additional.socialSecurityContributions
                        .priceAtEnd!) ==
                0
            ? 1.0
            : ((reports.last.additional.materialCosts.priceAtEnd! +
                reports.last.additional.depreciation.priceAtEnd! +
                reports.last.additional.laborCosts.priceAtEnd! +
                reports.last.additional.otherOperatingExpenses.priceAtEnd! +
                reports.last.additional.otherOperatingExpenses.priceAtEnd! +
                reports
                    .last.additional.socialSecurityContributions.priceAtEnd!)));

    return result.toStringAsFixed(2);
  }

  String getActivityRatioPastYears() =>
      details.gradationOfProfitLossAnalysis == '' ||
              details.gradationOfProfitLossAnalysis == null
          ? '(0; 1]'
          : details.gradationOfProfitLossAnalysis!;

  String getMaximumRepaidLoanAmountRatio() {
    double result = 0.0;

    result = details.largestAmountOfCredit! /
        (details.amountOfRequiredCredit! == 0
            ? 1.0
            : details.amountOfRequiredCredit!);

    return result.toStringAsFixed(2);
  }

  // Функції належності для отриманих критеріїв прибутковості підприємств

  String membershipFunctionsGetProductionProfitabilityRatio(
      String productionProfitabilityRatio) {
    num result = 0;

    double x = double.parse(productionProfitabilityRatio);

    if (x <= 0.05) {
      result = 0;
    } else if (x > 0.05 && x <= 0.075) {
      result = 2 * pow((20 * x - 1), 2);
    } else if (x > 0.075 && x < 0.1) {
      result = 1 - 8 * pow((1 - 10 * x), 2);
    } else {
      result = 1;
    }

    return result.toStringAsFixed(2);
  }

  String membershipFunctionsGetActivityRatioPastYears(
      String activityRatioPastYears) {
    num result = 0;
    String temp = activityRatioPastYears.trim().split(';')[1];
    temp = temp.substring(0, temp.length - 1);
    double x = double.parse(temp);

    if (x <= 1) {
      result = 0;
    } else if (x > 1 && x <= 3) {
      result = pow((x - 1), 2) / 8;
    } else if (x > 3 && x < 5) {
      result = pow((5 - x), 2) / 8;
    } else {
      result = 1;
    }

    return result.toStringAsFixed(2);
  }

  String membershipFunctionsGetMaximumRepaidLoanAmountRatio(
      String maximumRepaidLoanAmountRatio) {
    num result = 0;
    double x = double.parse(maximumRepaidLoanAmountRatio);

    if (x <= 0.8) {
      result = 0;
    } else if (x > 0.8 && x <= 0.9) {
      result = 2 * pow((5 * x - 4), 2);
    } else if (x > 0.9 && x < 1) {
      result = 1 - (2 * pow((5 - (5 * x)), 2));
    } else {
      result = 0;
    }

    return result.toStringAsFixed(2);
  }

  // Група G3 – аналіз рентабельності

  // Критерії рентабельності підприємств
  String getSpecificWeightOfEnterpriseFundsInProjectValueRatio() {
    double result = 0.0;
    result = details.numberOfOwnMoneyInvested! /
        (details.amountOfRequiredCredit! == 0
            ? 1.0
            : details.amountOfRequiredCredit!);

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

  // Функції належності для отриманих критеріїв рентабельності підприємств

  String membershipFunctionsGetOwnershipOfOwnLiquidAssetsRatio(
      String yearsOfExistence) {
    num result = 0;
    double x = double.parse(yearsOfExistence);

    if (x <= 1) {
      result = 0;
    } else if (x > 1 && x <= 3) {
      result = pow((x - 1), 2) / 8;
    } else if (x > 3 && x < 5) {
      result = 1 - (pow((5 - x), 2) / 8);
    } else {
      result = 1;
    }

    return result.toStringAsFixed(2);
  }

  String
      membershipFunctionsGetSpecificWeightOfEnterpriseFundsInProjectValueRatio(
          String specificWeightOfEnterpriseFundsInProjectValueRatio) {
    num result = 0;
    double x = double.parse(specificWeightOfEnterpriseFundsInProjectValueRatio);

    if (x <= 0.2) {
      result = 0;
    } else if (x > 0.2 && x <= 0.4) {
      result = (5 * x) - 1;
    } else {
      result = 1;
    }

    return result.toStringAsFixed(2);
  }

  String membershipFunctionsGetAvailabilityRatioOfOwnLiquidAssets(
      String availabilityRatioOfOwnLiquidAssets) {
    num result = 0;
    double x = double.parse(availabilityRatioOfOwnLiquidAssets);

    if (x <= 0.2) {
      result = 0;
    } else if (x > 0.2 && x <= 0.4) {
      result = 5 * x - 1;
    } else {
      result = 1;
    }

    return result.toStringAsFixed(2);
  }
}
