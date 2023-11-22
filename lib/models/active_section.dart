import 'package:flutter_labwork_2/models/active/active_first_section.dart';
import 'package:flutter_labwork_2/models/active/active_second_section.dart';
import 'package:flutter_labwork_2/models/active/active_third_section.dart';

class ActiveSection {
  final ActiveFirstSection firstSection;
  final ActiveSecondSection secondSection;
  final ActiveThirdSection thirdSection;

  ActiveSection({
    required this.firstSection,
    required this.secondSection,
    required this.thirdSection,
  });

  factory ActiveSection.initial() {
    return ActiveSection(
      firstSection: ActiveFirstSection.initial(),
      secondSection: ActiveSecondSection.initial(),
      thirdSection: ActiveThirdSection.initial(),
    );
  }

  ActiveSection copyWith({
    ActiveFirstSection? firstSection,
    ActiveSecondSection? secondSection,
    ActiveThirdSection? thirdSection,
  }) {
    return ActiveSection(
      firstSection: firstSection ?? this.firstSection,
      secondSection: secondSection ?? this.secondSection,
      thirdSection: thirdSection ?? this.thirdSection,
    );
  }

  factory ActiveSection.fromJson(Map<String, dynamic> json) {
    return ActiveSection(
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
