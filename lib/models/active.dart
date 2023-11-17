import 'package:flutter_labwork_2/models/active/active_first_section.dart';
import 'package:flutter_labwork_2/models/active/active_second_section.dart';
import 'package:flutter_labwork_2/models/active/active_third_section.dart';

class Active {
  final ActiveFirstSection firstSection;
  final ActiveSecondSection secondSection;
  final ActiveThirdSection thirdSection;

  Active({
    required this.firstSection,
    required this.secondSection,
    required this.thirdSection,
  });

  factory Active.initial() {
    return Active(
      firstSection: ActiveFirstSection.initial(),
      secondSection: ActiveSecondSection.initial(),
      thirdSection: ActiveThirdSection.initial(),
    );
  }

  Active copyWith({
    ActiveFirstSection? firstSection,
    ActiveSecondSection? secondSection,
    ActiveThirdSection? thirdSection,
  }) {
    return Active(
      firstSection: firstSection ?? this.firstSection,
      secondSection: secondSection ?? this.secondSection,
      thirdSection: thirdSection ?? this.thirdSection,
    );
  }

  factory Active.fromJson(Map<String, dynamic> json) {
    return Active(
      firstSection: ActiveFirstSection.fromJson(json['firstSection']),
      secondSection: ActiveSecondSection.fromJson(json['secondSection']),
      thirdSection: ActiveThirdSection.fromJson(json['thirdSection']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstSection': firstSection.toJson(),
      'secondSection': secondSection.toJson(),
      'thirdSection': thirdSection.toJson(),
    };
  }
}
