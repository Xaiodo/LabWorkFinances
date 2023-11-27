import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/widgets/body_row.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/active/active_second_section_notifier.dart';
import 'package:flutter_labwork_2/widgets/input_text.dart';
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
            child: InputText(
              onChanged: notifier.setStocksAtBeginning,
              initialValue: provider.stocks.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setStocksAtEnd,
              initialValue: provider.stocks.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier.setCurrentBiologicalAssetsAtBeginning,
              initialValue:
                  provider.currentBiologicalAssets.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setCurrentBiologicalAssetsAtEnd,
              initialValue:
                  provider.currentBiologicalAssets.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier.setAccountsReceivableAtBeginning,
              initialValue:
                  provider.accountsReceivable.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setAccountsReceivableAtEnd,
              initialValue: provider.accountsReceivable.priceAtEnd.toString(),
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
            child: InputText(
              onChanged:
                  notifier.setAccountsReceivableOnSssuedAdvancesAtBeginning,
              initialValue: provider
                  .accountsReceivableOnSssuedAdvances.priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setAccountsReceivableOnSssuedAdvancesAtEnd,
              initialValue: provider
                  .accountsReceivableOnSssuedAdvances.priceAtEnd
                  .toString(),
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
            child: InputText(
              onChanged: notifier.setAccountsReceivableWithBudgetAtBeginning,
              initialValue: provider
                  .accountsReceivableWithBudget.priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setAccountsReceivableWithBudgetAtEnd,
              initialValue:
                  provider.accountsReceivableWithBudget.priceAtEnd.toString(),
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
            child: InputText(
              onChanged:
                  notifier.setAccountsReceivableIncludingIncomeTaxAtBeginning,
              initialValue: provider
                  .accountsReceivableIncludingIncomeTax.priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setAccountsReceivableIncludingIncomeTaxAtEnd,
              initialValue: provider
                  .accountsReceivableIncludingIncomeTax.priceAtEnd
                  .toString(),
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
            child: InputText(
              onChanged: notifier.setOtherAccountsReceivableAtBeginning,
              initialValue:
                  provider.otherAccountsReceivable.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setOtherAccountsReceivableAtEnd,
              initialValue:
                  provider.otherAccountsReceivable.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier.setCurrentFinancialInvestmentsAtBeginning,
              initialValue: provider
                  .currentFinancialInvestments.priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setCurrentFinancialInvestmentsAtEnd,
              initialValue:
                  provider.currentFinancialInvestments.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier.setCashAtBeginning,
              initialValue: provider.cash.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setCashAtEnd,
              initialValue: provider.cash.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier.setExpensesFuturePeriodsAtBeginning,
              initialValue:
                  provider.expensesFuturePeriods.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setExpensesFuturePeriodsAtEnd,
              initialValue:
                  provider.expensesFuturePeriods.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier.setOtherCurrentAssetsAtBeginning,
              initialValue:
                  provider.otherCurrentAssets.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setOtherCurrentAssetsAtEnd,
              initialValue: provider.otherCurrentAssets.priceAtEnd.toString(),
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
