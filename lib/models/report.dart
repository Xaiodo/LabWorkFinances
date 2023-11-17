import 'package:flutter_labwork_2/models/active.dart';
import 'package:flutter_labwork_2/models/passive.dart';
import 'package:flutter_labwork_2/pages/body/widgets/popup_menu_widget.dart';

class Report {
  final int yaer;
  final QuarterItem quarter;
  final Active active;
  final Passive passive;

  Report({
    required this.yaer,
    required this.active,
    required this.passive,
    this.quarter = QuarterItem.firstQuarter,
  });

  factory Report.initial() {
    return Report(
      yaer: DateTime.now().year,
      active: Active.initial(),
      passive: Passive.initial(),
    );
  }

  Report copyWith({
    int? yaer,
    Active? active,
    Passive? passive,
    QuarterItem? quarter,
  }) {
    return Report(
      yaer: yaer ?? this.yaer,
      active: active ?? this.active,
      passive: passive ?? this.passive,
      quarter: quarter ?? this.quarter,
    );
  }

  factory Report.fromJson(Map<String, dynamic> json) {
    return Report(
      yaer: int.parse(json['year']),
      active: Active.fromJson(json['active']),
      passive: Passive.fromJson(json['passive']),
      quarter: QuarterItem.values[int.parse(json['quarter'])],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'yaer': yaer.toString(),
      'active': active.toJson(),
      'passive': passive.toJson(),
      'quarter': quarter.index.toString(),
    };
  }
}
