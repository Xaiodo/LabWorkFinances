import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/widgets/body_row.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/passive/passive_second_section_notifier.dart';
import 'package:flutter_labwork_2/widgets/text_input.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PassiveSecondSectionWidget extends ConsumerWidget {
  const PassiveSecondSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(passiveSecondSectionProvider);
    final notifier = ref.read(passiveSecondSectionProvider.notifier);

    return Column(
      children: [
        const BodyRow(
          Text(
            "II. Довгострокові зобов'язання і забезпечення",
          ),
          null,
          null,
          null,
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.deferredTaxLiabilities.name),
          Text(provider.deferredTaxLiabilities.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setDeferredTaxLiabilitiesAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setDeferredTaxLiabilitiesAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.longTermBankLoans.name),
          Text(provider.longTermBankLoans.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setLongTermBankLoansAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setLongTermBankLoansAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.otherLongTermLiabilities.name),
          Text(provider.otherLongTermLiabilities.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherLongTermLiabilitiesAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherLongTermLiabilitiesAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.longTermProvisions.name),
          Text(provider.longTermProvisions.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setLongTermProvisionsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setLongTermProvisionsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.targetedFunding.name),
          Text(provider.targetedFunding.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setTargetedFundingAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setTargetedFundingAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.total.name),
          Text(provider.total.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setTotalAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setTotalAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
      ],
    );
  }
}
