import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/additional/additional_section_notifier.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/widgets/body_row.dart';
import 'package:flutter_labwork_2/widgets/text_input.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdditionalSectionWidget extends ConsumerWidget {
  const AdditionalSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(additionalSectionNotifierProvider);
    final notifier = ref.read(additionalSectionNotifierProvider.notifier);
    return Column(
      children: [
        const BodyRow(
          Text(
            'I. Власний капітал',
          ),
          null,
          null,
          null,
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.netIncome.name),
          Text(provider.netIncome.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setNetIncomePriceAtBeginning,
              initialValue: provider.netIncome.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setNetIncomePriceAtEnd,
              initialValue: provider.netIncome.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.materialCosts.name),
          Text(provider.materialCosts.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setMaterialCostsPriceAtBeginning,
              initialValue: provider.materialCosts.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setMaterialCostsPriceAtEnd,
              initialValue: provider.materialCosts.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.laborCosts.name),
          Text(provider.laborCosts.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setLaborCostsPriceAtBeginning,
              initialValue: provider.laborCosts.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setLaborCostsPriceAtEnd,
              initialValue: provider.laborCosts.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.socialSecurityContributions.name),
          Text(provider.socialSecurityContributions.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged:
                  notifier.setSocialSecurityContributionsPriceAtBeginning,
              initialValue: provider
                  .socialSecurityContributions.priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setSocialSecurityContributionsPriceAtEnd,
              initialValue:
                  provider.socialSecurityContributions.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.depreciation.name),
          Text(provider.depreciation.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setDepreciationPriceAtBeginning,
              initialValue: provider.depreciation.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setDepreciationPriceAtEnd,
              initialValue: provider.depreciation.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.otherOperatingExpenses.name),
          Text(provider.otherOperatingExpenses.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherOperatingExpensesPriceAtBeginning,
              initialValue:
                  provider.otherOperatingExpenses.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherOperatingExpensesPriceAtEnd,
              initialValue:
                  provider.otherOperatingExpenses.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
      ],
    );
  }
}
