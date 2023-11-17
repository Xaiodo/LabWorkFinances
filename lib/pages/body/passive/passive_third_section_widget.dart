import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/body/widgets/body_row.dart';
import 'package:flutter_labwork_2/pages/body/state/passive/passive_third_section_notifier.dart';
import 'package:flutter_labwork_2/widgets/text_input.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PassiveThirdSectionWidget extends ConsumerWidget {
  const PassiveThirdSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(passiveThirdSectionProvider);
    final notifier = ref.read(passiveThirdSectionProvider.notifier);

    return Column(
      children: [
        const BodyRow(
          Text(
            "IІІ. Поточні зобов'язання і забезпечення",
          ),
          null,
          null,
          null,
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.shortTermBankLoans.name),
          Text(provider.shortTermBankLoans.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setShortTermBankLoansAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setShortTermBankLoansAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.currentAccountsPayableForLongTermLiabilities.name),
          Text(provider.currentAccountsPayableForLongTermLiabilities.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier
                  .setCurrentAccountsPayableForLongTermLiabilitiesAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged:
                  notifier.setCurrentAccountsPayableForLongTermLiabilitiesAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.currentAccountsPayableForGoodsServices.name),
          Text(provider.currentAccountsPayableForGoodsServices.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged:
                  notifier.setCurrentAccountsPayableForGoodsServicesAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged:
                  notifier.setCurrentAccountsPayableForGoodsServicesAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.currentAccountsPayableForBudgetarySettlements.name),
          Text(provider.currentAccountsPayableForBudgetarySettlements.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier
                  .setCurrentAccountsPayableForBudgetarySettlementsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier
                  .setCurrentAccountsPayableForBudgetarySettlementsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.currentAccountsPayableIncludingIncomeTax.name),
          Text(provider.currentAccountsPayableIncludingIncomeTax.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier
                  .setCurrentAccountsPayableForInsuranceSettlementsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier
                  .setCurrentAccountsPayableForInsuranceSettlementsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.currentAccountsPayableForInsuranceSettlements.name),
          Text(provider.currentAccountsPayableForInsuranceSettlements.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier
                  .setCurrentAccountsPayableForInsuranceSettlementsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier
                  .setCurrentAccountsPayableForInsuranceSettlementsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.currentAccountsPayableForLaborPayments.name),
          Text(provider.currentAccountsPayableForLaborPayments.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged:
                  notifier.setCurrentAccountsPayableForLaborPaymentsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged:
                  notifier.setCurrentAccountsPayableForLaborPaymentsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.currentProvisions.name),
          Text(provider.currentProvisions.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setCurrentProvisionsAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setCurrentProvisionsAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.futurePeriodRevenues.name),
          Text(provider.futurePeriodRevenues.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setFuturePeriodRevenuesAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setFuturePeriodRevenuesAtEnd,
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.otherCurrentLiabilities.name),
          Text(provider.otherCurrentLiabilities.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherCurrentLiabilitiesAtBeginning,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextInput(
              onChanged: notifier.setOtherCurrentLiabilitiesAtEnd,
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
