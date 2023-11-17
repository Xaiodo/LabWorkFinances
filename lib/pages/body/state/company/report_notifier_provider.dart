import 'package:flutter_labwork_2/models/active.dart';
import 'package:flutter_labwork_2/models/passive.dart';
import 'package:flutter_labwork_2/models/report.dart';
import 'package:flutter_labwork_2/pages/body/state/active/active_first_section_notifier.dart';
import 'package:flutter_labwork_2/pages/body/state/active/active_second_section_notifier.dart';
import 'package:flutter_labwork_2/pages/body/state/active/active_third_section_notifier.dart';
import 'package:flutter_labwork_2/pages/body/state/passive/passive_first_section_notifier.dart';
import 'package:flutter_labwork_2/pages/body/state/passive/passive_fourth_section_notifier.dart';
import 'package:flutter_labwork_2/pages/body/state/passive/passive_second_section_notifier.dart';
import 'package:flutter_labwork_2/pages/body/state/passive/passive_third_section_notifier.dart';
import 'package:flutter_labwork_2/pages/body/widgets/popup_menu_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReportStateNotifier extends StateNotifier<Report> {
  final ActiveFirstSectionNotifier activeFirstProvider;
  final ActiveSecondSectionNotifier activeSecondProvider;
  final ActiveThirdSectionNotfier activeThirdProvider;

  final PassiveFirstSectionNotifier passiveFirstProvider;
  final PassiveSecondSectionNotifier passiveSecondProvider;
  final PassiveThirdSectionNotifier passiveThirdProvider;
  final PassiveFourthSectionNotifier passiveFourthProvider;

  ReportStateNotifier({
    required this.activeFirstProvider,
    required this.activeSecondProvider,
    required this.activeThirdProvider,
    required this.passiveFirstProvider,
    required this.passiveSecondProvider,
    required this.passiveThirdProvider,
    required this.passiveFourthProvider,
  }) : super(Report.initial());

  void setYear(int year) {
    print(year);
    state = state.copyWith(yaer: year);
  }

  void setQuarter(QuarterItem quarter) {
    state = state.copyWith(quarter: quarter);
  }

  Report getreport() {
    final activeFirstSection = activeFirstProvider.getActiveFirstSection();
    final activeSecondSection = activeSecondProvider.getActiveSecondSection();
    final activeThirdSection = activeThirdProvider.getActiveThirdSection();

    final passiveFirstSection = passiveFirstProvider.getPassiveFirstSection();
    final passiveSecondSection =
        passiveSecondProvider.getPassiveSecondSection();
    final passiveThirdSection = passiveThirdProvider.getPassiveThirdSection();
    final passiveFourthSection =
        passiveFourthProvider.getPassiveFourthSection();

    state = state.copyWith(
      active: Active(
        firstSection: activeFirstSection,
        secondSection: activeSecondSection,
        thirdSection: activeThirdSection,
      ),
      passive: Passive(
        firstSection: passiveFirstSection,
        secondSection: passiveSecondSection,
        thirdSection: passiveThirdSection,
        fourthSection: passiveFourthSection,
      ),
      quarter: state.quarter,
      yaer: state.yaer,
    );
    return state;
  }
}

final reportNotifierProvider =
    StateNotifierProvider<ReportStateNotifier, Report>(
  (ref) => ReportStateNotifier(
    activeFirstProvider: ref.read(activeFirstSectionProvider.notifier),
    activeSecondProvider: ref.read(activeSecondSectionProvider.notifier),
    activeThirdProvider: ref.read(activeThirdSectionProvider.notifier),
    passiveFirstProvider: ref.read(passiveFirstSectionProvider.notifier),
    passiveSecondProvider: ref.read(passiveSecondSectionProvider.notifier),
    passiveThirdProvider: ref.read(passiveThirdSectionProvider.notifier),
    passiveFourthProvider: ref.read(passiveFourthSectionProvider.notifier),
  ),
);
