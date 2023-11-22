import 'package:flutter_labwork_2/models/passive/passive_first_section.dart';
import 'package:flutter_labwork_2/models/passive/passive_second_section.dart';
import 'package:flutter_labwork_2/models/passive/passive_third_section.dart';
import 'package:flutter_labwork_2/models/passive/passive_fourth_section.dart';

class PassiveSection {
  final PassiveFirstSection firstSection;
  final PassiveSecondSection secondSection;
  final PassiveThirdSection thirdSection;
  final PassiveFourthSection fourthSection;

  PassiveSection({
    required this.firstSection,
    required this.secondSection,
    required this.thirdSection,
    required this.fourthSection,
  });

  factory PassiveSection.initial() {
    return PassiveSection(
      firstSection: PassiveFirstSection.initial(),
      secondSection: PassiveSecondSection.initial(),
      thirdSection: PassiveThirdSection.initial(),
      fourthSection: PassiveFourthSection.initial(),
    );
  }

  PassiveSection copyWith({
    PassiveFirstSection? firstSection,
    PassiveSecondSection? secondSection,
    PassiveThirdSection? thirdSection,
    PassiveFourthSection? fourthSection,
  }) {
    return PassiveSection(
      firstSection: firstSection ?? this.firstSection,
      secondSection: secondSection ?? this.secondSection,
      thirdSection: thirdSection ?? this.thirdSection,
      fourthSection: fourthSection ?? this.fourthSection,
    );
  }

  factory PassiveSection.fromJson(Map<String, dynamic> json) {
    return PassiveSection(
      firstSection: PassiveFirstSection.fromJson(json['firstSection']),
      secondSection: PassiveSecondSection.fromJson(json['secondSection']),
      thirdSection: PassiveThirdSection.fromJson(json['thirdSection']),
      fourthSection: PassiveFourthSection.fromJson(json['fourthSection']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstSection': firstSection.toJson(),
      'secondSection': secondSection.toJson(),
      'thirdSection': thirdSection.toJson(),
      'fourthSection': fourthSection.toJson(),
    };
  }
}
