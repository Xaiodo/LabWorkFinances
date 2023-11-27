import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/widgets/body_row.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/active/active_third_section_notifier.dart';
import 'package:flutter_labwork_2/widgets/input_text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActiveThirdSectionWidget extends ConsumerWidget {
  const ActiveThirdSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(activeThirdSectionProvider);
    final notifier = ref.read(activeThirdSectionProvider.notifier);

    return Column(
      children: [
        const BodyRow(
          Text(
            'III. Необоротні активи, утримувані для продажу, та групи вибуття',
          ),
          Text(''),
          Text(''),
          Text(''),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.balance.name),
          Text(provider.balance.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setBalanceAtBeginning,
              initialValue: provider.balance.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setBalanceAtEnd,
              initialValue: provider.balance.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
      ],
    );
  }
}
