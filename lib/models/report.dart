import 'package:flutter_labwork_2/models/active_section.dart';
import 'package:flutter_labwork_2/models/additional/additional_section.dart';
import 'package:flutter_labwork_2/models/passive_section.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/widgets/popup_menu_widget.dart';

class Report {
  final int yaer;
  final QuarterItem quarter;
  final ActiveSection active;
  final PassiveSection passive;
  final AdditionalSection additional;

  Report({
    required this.yaer,
    required this.active,
    required this.passive,
    required this.additional,
    this.quarter = QuarterItem.firstQuarter,
  });

  factory Report.initial() {
    return Report(
      yaer: DateTime.now().year,
      active: ActiveSection.initial(),
      passive: PassiveSection.initial(),
      additional: AdditionalSection.initial(),
    );
  }

  Report copyWith({
    int? yaer,
    ActiveSection? active,
    PassiveSection? passive,
    QuarterItem? quarter,
    AdditionalSection? additional,
  }) {
    return Report(
      yaer: yaer ?? this.yaer,
      active: active ?? this.active,
      passive: passive ?? this.passive,
      additional: additional ?? this.additional,
      quarter: quarter ?? this.quarter,
    );
  }

  factory Report.fromJson(Map<String, dynamic> json) {
    return Report(
      yaer: json['year'],
      active: ActiveSection.fromJson(json['active']),
      passive: PassiveSection.fromJson(json['passive']),
      additional: AdditionalSection.fromJson(json['additional']),
      quarter: QuarterItem.values[json['quarter']],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'year': yaer,
      'quarter': quarter.index,
      'active': active.toJson(),
      'passive': passive.toJson(),
      'additional': additional.toJson(),
    };
  }
}
