import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/active/active_first_section_widget.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/active/active_section_header.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/active/active_second_section_widget.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/active/active_third_section_widget.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/additional/additional_section.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/additional/additional_section_header.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/passive/passive_first_section_widget.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/passive/passive_fourth_section_widget.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/passive/passive_section_header.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/passive/passive_second_section_widget.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/passive/passive_third_section_widget.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/companies_state_notifier.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/company/company_state_notifier.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/company/report_notifier_provider.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/widgets/popup_menu_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BodyView extends ConsumerWidget {
  const BodyView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 18,
      ),
      foregroundDecoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const PopupMenuWidget(),
                InkWell(
                  child: Text('Рік: ${ref.watch(reportNotifierProvider).yaer}'),
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2030),
                    ).then(
                      (value) {
                        if (value != null) {
                          ref.read(reportNotifierProvider.notifier).setYear(
                                value.year,
                              );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                textAlign: TextAlign.center,
                                'Ви не вибрали рік, тому він залишвився незмінним',
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                ActiveSectionHeader(),
                ActiveFirstSectionWidget(),
                ActiveSecondSectionWidget(),
                ActiveThirdSectionWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 60,
            child: Divider(
              color: Theme.of(context).primaryColor.withOpacity(0.4),
              thickness: 2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                PassiveSectionHeader(),
                PassiveFirstSectionWidget(),
                PassiveSecondSectionWidget(),
                PassiveThirdSectionWidget(),
                PassiveFourthSectionWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 60,
            child: Divider(
              color: Theme.of(context).primaryColor.withOpacity(0.4),
              thickness: 2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                AdditionalSectionHeader(),
                AdditionalSectionWidget(),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(companiesProvider.notifier).addCompany();
                    Navigator.pop(context);
                  },
                  child: const Text('Зберегти інформацію компанії'),
                ),
                ElevatedButton(
                  onPressed:
                      ref.read(companyStateNotifierProvider.notifier).addReport,
                  child: const Text('Додати звіт'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
