import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/widgets/body_row.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/active/active_second_section_notifier.dart';
import 'package:flutter_labwork_2/widgets/text_input.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActiveSecondSectionWidget extends ConsumerWidget {
  const ActiveSecondSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(activeSecondSectionProvider);
    final notifier = ref.read(activeSecondSectionProvider.notifier);

    return Column(
      children: [
        const BodyRow(
          Text(
            'II. Оборотні активи',
          ),
          null,
          null,
          null,
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.stocks.name),
          Text(provider.stocks.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setStocksAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setStocksAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.currentBiologicalAssets.name),
          Text(provider.currentBiologicalAssets.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setCurrentBiologicalAssetsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setCurrentBiologicalAssetsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.accountsReceivable.name),
          Text(provider.accountsReceivable.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setAccountsReceivableAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setAccountsReceivableAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.accountsReceivableOnSssuedAdvances.name),
          Text(provider.accountsReceivableOnSssuedAdvances.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged:
                  notifier.setAccountsReceivableOnSssuedAdvancesAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setAccountsReceivableOnSssuedAdvancesAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.accountsReceivableWithBudget.name),
          Text(provider.accountsReceivableWithBudget.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setAccountsReceivableWithBudgetAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setAccountsReceivableWithBudgetAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.accountsReceivableIncludingIncomeTax.name),
          Text(provider.accountsReceivableIncludingIncomeTax.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged:
                  notifier.setAccountsReceivableIncludingIncomeTaxAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setAccountsReceivableIncludingIncomeTaxAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(
            provider.otherAccountsReceivable.name,
          ),
          Text(provider.otherAccountsReceivable.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherAccountsReceivableAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherAccountsReceivableAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(
            provider.currentFinancialInvestments.name,
          ),
          Text(provider.currentFinancialInvestments.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setCurrentFinancialInvestmentsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setCurrentFinancialInvestmentsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(
            provider.cash.name,
          ),
          Text(provider.cash.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setCashAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setCashAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(
            provider.expensesFuturePeriods.name,
          ),
          Text(provider.expensesFuturePeriods.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setExpensesFuturePeriodsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setExpensesFuturePeriodsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(
            provider.otherCurrentAssets.name,
          ),
          Text(provider.otherCurrentAssets.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherCurrentAssetsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherCurrentAssetsAtEnd,
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
