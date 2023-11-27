import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/widgets/body_row.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/passive/passive_second_section_notifier.dart';
import 'package:flutter_labwork_2/widgets/input_text.dart';
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
            child: InputText(
              onChanged: notifier.setDeferredTaxLiabilitiesAtBeginning,
              initialValue:
                  provider.deferredTaxLiabilities.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setDeferredTaxLiabilitiesAtEnd,
              initialValue:
                  provider.deferredTaxLiabilities.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier.setLongTermBankLoansAtBeginning,
              initialValue:
                  provider.longTermBankLoans.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setLongTermBankLoansAtEnd,
              initialValue: provider.longTermBankLoans.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier.setOtherLongTermLiabilitiesAtBeginning,
              initialValue:
                  provider.otherLongTermLiabilities.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setOtherLongTermLiabilitiesAtEnd,
              initialValue:
                  provider.otherLongTermLiabilities.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier.setLongTermProvisionsAtBeginning,
              initialValue:
                  provider.longTermProvisions.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setLongTermProvisionsAtEnd,
              initialValue: provider.longTermProvisions.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier.setTargetedFundingAtBeginning,
              initialValue:
                  provider.targetedFunding.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setTargetedFundingAtEnd,
              initialValue: provider.targetedFunding.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier.setTotalAtBeginning,
              initialValue: provider.total.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setTotalAtEnd,
              initialValue: provider.total.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
      ],
    );
  }
}
