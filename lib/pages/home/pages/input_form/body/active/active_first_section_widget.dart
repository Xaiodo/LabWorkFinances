import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/widgets/body_row.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/active/active_first_section_notifier.dart';
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
              initialValue:
                  provider.intangibleAssets.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setIntangibleAssetsPriceAtEnd,
              initialValue: provider.intangibleAssets.priceAtEnd.toString(),
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
              initialValue: provider
                  .initualValueOfIntangibleAssets.priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setnitualValueOfIntangibleAssetsAtEnd,
              initialValue:
                  provider.initualValueOfIntangibleAssets.priceAtEnd.toString(),
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
              initialValue: provider
                  .accumulatedAmortizationOfIntangibleAssets.priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged:
                  notifier.setAccumulatedAmortizationOfIntangibleAssetsAtEnd,
              initialValue: provider
                  .accumulatedAmortizationOfIntangibleAssets.priceAtEnd
                  .toString(),
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
              initialValue: provider
                  .unfinishedCapitalInvestments.priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setUnfinishedCapitalInvestmentsAtEnd,
              initialValue:
                  provider.unfinishedCapitalInvestments.priceAtEnd.toString(),
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
              initialValue: provider.mainAssets.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setMainAssetsAtEnd,
              initialValue: provider.mainAssets.priceAtEnd.toString(),
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
              initialValue:
                  provider.initialValueOfMainAssets.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setInitialValueOfMainAssetsAtEnd,
              initialValue:
                  provider.initialValueOfMainAssets.priceAtEnd.toString(),
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
              initialValue:
                  provider.wearAndTearOfMainAssets.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setWearAndTearOfMainAssetsAtEnd,
              initialValue:
                  provider.wearAndTearOfMainAssets.priceAtEnd.toString(),
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
              initialValue:
                  provider.investmentProperty.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setInvestmentPropertyAtEnd,
              initialValue: provider.investmentProperty.priceAtEnd.toString(),
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
              initialValue:
                  provider.longtermBiologicalAssets.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setLongtermBiologicalAssetsAtEnd,
              initialValue:
                  provider.longtermBiologicalAssets.priceAtEnd.toString(),
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
              initialValue:
                  provider.byMethodOfParticipation.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setByMethodOfParticipationAtEnd,
              initialValue:
                  provider.byMethodOfParticipation.priceAtEnd.toString(),
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
              initialValue: provider
                  .otherFinancialInvestmentsOfLongTerm.priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherFinancialInvestmentsOfLongTermAtEnd,
              initialValue: provider
                  .otherFinancialInvestmentsOfLongTerm.priceAtEnd
                  .toString(),
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
              initialValue:
                  provider.longtermReceivables.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setLongtermReceivablesAtEnd,
              initialValue: provider.longtermReceivables.priceAtEnd.toString(),
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
              initialValue:
                  provider.deferredTaxAssets.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setDeferredTaxAssetsAtEnd,
              initialValue: provider.deferredTaxAssets.priceAtEnd.toString(),
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
              initialValue:
                  provider.otherNonCurrentAssets.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherNonCurrentAssetsAtEnd,
              initialValue:
                  provider.otherNonCurrentAssets.priceAtEnd.toString(),
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
              initialValue: provider.total.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
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
