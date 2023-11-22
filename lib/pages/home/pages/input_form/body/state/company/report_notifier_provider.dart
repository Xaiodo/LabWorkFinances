import 'package:flutter_labwork_2/models/active/active_first_section.dart';
import 'package:flutter_labwork_2/models/active/active_second_section.dart';
import 'package:flutter_labwork_2/models/active/active_third_section.dart';
import 'package:flutter_labwork_2/models/active_section.dart';
import 'package:flutter_labwork_2/models/additional/additional_section.dart';
import 'package:flutter_labwork_2/models/passive/passive_first_section.dart';
import 'package:flutter_labwork_2/models/passive/passive_fourth_section.dart';
import 'package:flutter_labwork_2/models/passive/passive_second_section.dart';
import 'package:flutter_labwork_2/models/passive/passive_third_section.dart';
import 'package:flutter_labwork_2/models/passive_section.dart';
import 'package:flutter_labwork_2/models/report.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/active/active_first_section_notifier.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/active/active_second_section_notifier.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/active/active_third_section_notifier.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/additional/additional_section_notifier.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/passive/passive_first_section_notifier.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/passive/passive_fourth_section_notifier.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/passive/passive_second_section_notifier.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/passive/passive_third_section_notifier.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/widgets/popup_menu_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReportStateNotifier extends StateNotifier<Report> {
  final Ref ref;
  late final ActiveFirstSection activeFirstSection;
  late final ActiveSecondSection activeSecondSection;
  late final ActiveThirdSection activeThirdSection;

  late final PassiveFirstSection passiveFirstSection;
  late final PassiveSecondSection passiveSecondSection;
  late final PassiveThirdSection passiveThirdSection;
  late final PassiveFourthSection passiveFourthSection;

  late final AdditionalSection additionalSection;

  ReportStateNotifier({
    required this.ref,
  }) : super(
          Report.initial(),
        );

  void setYear(int year) {
    state = state.copyWith(yaer: year);
  }

  void setQuarter(QuarterItem quarter) {
    state = state.copyWith(quarter: quarter);
  }

  Report getReport() {
    activeFirstSection = ref.read(activeFirstSectionProvider);
    activeSecondSection = ref.read(activeSecondSectionProvider);
    activeThirdSection = ref.read(activeThirdSectionProvider);

    passiveFirstSection = ref.read(passiveFirstSectionProvider);
    passiveSecondSection = ref.read(passiveSecondSectionProvider);
    passiveThirdSection = ref.read(passiveThirdSectionProvider);
    passiveFourthSection = ref.read(passiveFourthSectionProvider);

    additionalSection = ref.read(additionalSectionNotifierProvider);

    return state = state.copyWith(
      active: ActiveSection(
        firstSection: activeFirstSection,
        secondSection: activeSecondSection,
        thirdSection: activeThirdSection,
      ),
      passive: PassiveSection(
        firstSection: passiveFirstSection,
        secondSection: passiveSecondSection,
        thirdSection: passiveThirdSection,
        fourthSection: passiveFourthSection,
      ),
      additional: additionalSection,
      quarter: state.quarter,
      yaer: state.yaer,
    );
  }
}

final reportNotifierProvider =
    StateNotifierProvider<ReportStateNotifier, Report>(
  (ref) => ReportStateNotifier(
    ref: ref,
  ),
);
