import 'package:flutter_labwork_2/models/asset.dart';

class PassiveFirstSection {
  final Asset registeredEquity;
  final Asset capitalInRevaluations;
  final Asset additionalCapital;
  final Asset reservedCapital;
  final Asset undistributedEarningsOrLosses;
  final Asset unpaidCapital;
  final Asset withdrawnCapital;
  final Asset total;

  PassiveFirstSection({
    required this.registeredEquity,
    required this.capitalInRevaluations,
    required this.additionalCapital,
    required this.reservedCapital,
    required this.undistributedEarningsOrLosses,
    required this.unpaidCapital,
    required this.withdrawnCapital,
    required this.total,
  });

  factory PassiveFirstSection.initial() {
    return PassiveFirstSection(
      registeredEquity: Asset.initial(),
      capitalInRevaluations: Asset.initial(),
      additionalCapital: Asset.initial(),
      reservedCapital: Asset.initial(),
      undistributedEarningsOrLosses: Asset.initial(),
      unpaidCapital: Asset.initial(),
      withdrawnCapital: Asset.initial(),
      total: Asset.initial(),
    );
  }

  PassiveFirstSection copyWith({
    Asset? registeredEquity,
    Asset? capitalInRevaluations,
    Asset? additionalCapital,
    Asset? reservedCapital,
    Asset? undistributedEarningsOrLosses,
    Asset? unpaidCapital,
    Asset? withdrawnCapital,
    Asset? total,
  }) {
    return PassiveFirstSection(
      registeredEquity: registeredEquity ?? this.registeredEquity,
      capitalInRevaluations:
          capitalInRevaluations ?? this.capitalInRevaluations,
      additionalCapital: additionalCapital ?? this.additionalCapital,
      reservedCapital: reservedCapital ?? this.reservedCapital,
      undistributedEarningsOrLosses:
          undistributedEarningsOrLosses ?? this.undistributedEarningsOrLosses,
      unpaidCapital: unpaidCapital ?? this.unpaidCapital,
      withdrawnCapital: withdrawnCapital ?? this.withdrawnCapital,
      total: total ?? this.total,
    );
  }

  factory PassiveFirstSection.fromJson(Map<String, dynamic> json) {
    return PassiveFirstSection(
      registeredEquity: Asset.fromJson(json['registeredEquity']),
      capitalInRevaluations: Asset.fromJson(json['capitalInRevaluations']),
      additionalCapital: Asset.fromJson(json['additionalCapital']),
      reservedCapital: Asset.fromJson(json['reservedCapital']),
      undistributedEarningsOrLosses:
          Asset.fromJson(json['undistributedEarningsOrLosses']),
      unpaidCapital: Asset.fromJson(json['unpaidCapital']),
      withdrawnCapital: Asset.fromJson(json['withdrawnCapital']),
      total: Asset.fromJson(json['total']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'registeredEquity': registeredEquity.toJson(),
      'capitalInRevaluations': capitalInRevaluations.toJson(),
      'additionalCapital': additionalCapital.toJson(),
      'reservedCapital': reservedCapital.toJson(),
      'undistributedEarningsOrLosses': undistributedEarningsOrLosses.toJson(),
      'unpaidCapital': unpaidCapital.toJson(),
      'withdrawnCapital': withdrawnCapital.toJson(),
      'total': total.toJson(),
    };
  }
}
