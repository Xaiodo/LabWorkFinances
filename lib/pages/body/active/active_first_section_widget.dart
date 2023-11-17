import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/body/widgets/body_row.dart';
import 'package:flutter_labwork_2/pages/body/state/active/active_first_section_notifier.dart';
import 'package:flutter_labwork_2/widgets/text_input.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActiveFirstSectionWidget extends ConsumerWidget {
  const ActiveFirstSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(activeFirstSectionProvider);
    final notifier = ref.read(activeFirstSectionProvider.notifier);
    return Column(
      children: [
        const BodyRow(
          Text(
            'І. Необоротні активи',
          ),
          null,
          null,
          null,
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.intangibleAssets.name),
          Text(provider.intangibleAssets.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setIntangibleAssetsPriceAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setIntangibleAssetsPriceAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.initualValueOfIntangibleAssets.name),
          Text(provider.initualValueOfIntangibleAssets.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setnitualValueOfIntangibleAssetsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setnitualValueOfIntangibleAssetsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.accumulatedAmortizationOfIntangibleAssets.name),
          Text(provider.accumulatedAmortizationOfIntangibleAssets.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier
                  .setAccumulatedAmortizationOfIntangibleAssetsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged:
                  notifier.setAccumulatedAmortizationOfIntangibleAssetsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.unfinishedCapitalInvestments.name),
          Text(provider.unfinishedCapitalInvestments.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setUnfinishedCapitalInvestmentsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setUnfinishedCapitalInvestmentsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.mainAssets.name),
          Text(provider.mainAssets.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setMainAssetsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setMainAssetsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.initialValueOfMainAssets.name),
          Text(provider.initialValueOfMainAssets.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setInitialValueOfMainAssetsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setInitialValueOfMainAssetsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.wearAndTearOfMainAssets.name),
          Text(provider.wearAndTearOfMainAssets.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setWearAndTearOfMainAssetsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setWearAndTearOfMainAssetsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.investmentProperty.name),
          Text(provider.investmentProperty.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setInvestmentPropertyAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setInvestmentPropertyAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.longtermBiologicalAssets.name),
          Text(provider.longtermBiologicalAssets.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setLongtermBiologicalAssetsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setLongtermBiologicalAssetsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.byMethodOfParticipation.name),
          Text(provider.byMethodOfParticipation.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setByMethodOfParticipationAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setByMethodOfParticipationAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.otherFinancialInvestmentsOfLongTerm.name),
          Text(provider.otherFinancialInvestmentsOfLongTerm.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged:
                  notifier.setOtherFinancialInvestmentsOfLongTermAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherFinancialInvestmentsOfLongTermAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.longtermReceivables.name),
          Text(provider.longtermReceivables.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setLongtermReceivablesAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setLongtermReceivablesAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.deferredTaxAssets.name),
          Text(provider.deferredTaxAssets.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setDeferredTaxAssetsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setDeferredTaxAssetsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.otherNonCurrentAssets.name),
          Text(provider.otherNonCurrentAssets.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherNonCurrentAssetsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherNonCurrentAssetsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(
            provider.total.name,
          ),
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
