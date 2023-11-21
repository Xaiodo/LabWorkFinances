import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/widgets/body_row.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/passive/passive_fourth_section_notifier.dart';
import 'package:flutter_labwork_2/widgets/text_input.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PassiveFourthSectionWidget extends ConsumerWidget {
  const PassiveFourthSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(passiveFourthSectionProvider);
    final notifier = ref.read(passiveFourthSectionProvider.notifier);

    return Column(
      children: [
        const BodyRow(
          Text(
            "ІV. Зобов'язання, пов'язані з необоротними активами, утримуваними для продажу, та групами вибуття",
          ),
          Text(''),
          Text(''),
          Text(''),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.balance.name),
          Text(
            provider.balance.code,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setBalanceAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setBalanceAtEnd,
            ),
          ),
          flex1: 2,
        ),
      ],
    );
  }
}
