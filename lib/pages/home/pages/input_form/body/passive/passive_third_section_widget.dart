import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/widgets/body_row.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/passive/passive_third_section_notifier.dart';
import 'package:flutter_labwork_2/widgets/input_text.dart';
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
            child: InputText(
              onChanged: notifier.setShortTermBankLoansAtBeginning,
              initialValue:
                  provider.shortTermBankLoans.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setShortTermBankLoansAtEnd,
              initialValue: provider.shortTermBankLoans.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier
                  .setCurrentAccountsPayableForLongTermLiabilitiesAtBeginning,
              initialValue: provider
                  .currentAccountsPayableForLongTermLiabilities.priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged:
                  notifier.setCurrentAccountsPayableForLongTermLiabilitiesAtEnd,
              initialValue: provider
                  .currentAccountsPayableForLongTermLiabilities.priceAtEnd
                  .toString(),
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
            child: InputText(
              onChanged:
                  notifier.setCurrentAccountsPayableForGoodsServicesAtBeginning,
              initialValue: provider
                  .currentAccountsPayableForGoodsServices.priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged:
                  notifier.setCurrentAccountsPayableForGoodsServicesAtEnd,
              initialValue: provider
                  .currentAccountsPayableForGoodsServices.priceAtEnd
                  .toString(),
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
            child: InputText(
              onChanged: notifier
                  .setCurrentAccountsPayableForBudgetarySettlementsAtBeginning,
              initialValue: provider
                  .currentAccountsPayableForBudgetarySettlements
                  .priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier
                  .setCurrentAccountsPayableForBudgetarySettlementsAtEnd,
              initialValue: provider
                  .currentAccountsPayableForBudgetarySettlements.priceAtEnd
                  .toString(),
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
            child: InputText(
              onChanged: notifier
                  .setCurrentAccountsPayableForInsuranceSettlementsAtBeginning,
              initialValue: provider
                  .currentAccountsPayableForInsuranceSettlements
                  .priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier
                  .setCurrentAccountsPayableForInsuranceSettlementsAtEnd,
              initialValue: provider
                  .currentAccountsPayableForInsuranceSettlements.priceAtEnd
                  .toString(),
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
            child: InputText(
              onChanged: notifier
                  .setCurrentAccountsPayableForInsuranceSettlementsAtBeginning,
              initialValue: provider
                  .currentAccountsPayableForInsuranceSettlements
                  .priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier
                  .setCurrentAccountsPayableForInsuranceSettlementsAtEnd,
              initialValue: provider
                  .currentAccountsPayableForInsuranceSettlements.priceAtEnd
                  .toString(),
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
            child: InputText(
              onChanged:
                  notifier.setCurrentAccountsPayableForLaborPaymentsAtBeginning,
              initialValue: provider
                  .currentAccountsPayableForLaborPayments.priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged:
                  notifier.setCurrentAccountsPayableForLaborPaymentsAtEnd,
              initialValue: provider
                  .currentAccountsPayableForLaborPayments.priceAtEnd
                  .toString(),
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
            child: InputText(
              onChanged: notifier.setCurrentProvisionsAtBeginning,
              initialValue:
                  provider.currentProvisions.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setCurrentProvisionsAtEnd,
              initialValue: provider.currentProvisions.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier.setFuturePeriodRevenuesAtBeginning,
              initialValue:
                  provider.futurePeriodRevenues.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setFuturePeriodRevenuesAtEnd,
              initialValue: provider.futurePeriodRevenues.priceAtEnd.toString(),
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
            child: InputText(
              onChanged: notifier.setOtherCurrentLiabilitiesAtBeginning,
              initialValue:
                  provider.otherCurrentLiabilities.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setOtherCurrentLiabilitiesAtEnd,
              initialValue:
                  provider.otherCurrentLiabilities.priceAtEnd.toString(),
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
