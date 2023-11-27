import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/widgets/body_row.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/passive/passive_first_section_notifier.dart';
import 'package:flutter_labwork_2/widgets/input_text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PassiveFirstSectionWidget extends ConsumerWidget {
  const PassiveFirstSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(passiveFirstSectionProvider);
    final notifier = ref.read(passiveFirstSectionProvider.notifier);

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
          Text(provider.registeredEquity.name),
          Text(provider.registeredEquity.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setRegisteredEquityAtBeginning,
              initialValue:
                  provider.registeredEquity.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setRegisteredEquityAtEnd,
              initialValue: provider.registeredEquity.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.capitalInRevaluations.name),
          Text(provider.capitalInRevaluations.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setCapitalInRevaluationsAtBeginning,
              initialValue:
                  provider.capitalInRevaluations.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setCapitalInRevaluationsAtEnd,
              initialValue:
                  provider.capitalInRevaluations.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(
            provider.additionalCapital.name,
          ),
          Text(provider.additionalCapital.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setAdditionalCapitalAtBeginning,
              initialValue:
                  provider.additionalCapital.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setAdditionalCapitalAtEnd,
              initialValue: provider.additionalCapital.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.reservedCapital.name),
          Text(provider.reservedCapital.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setReservedCapitalAtBeginning,
              initialValue:
                  provider.reservedCapital.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setReservedCapitalAtEnd,
              initialValue: provider.reservedCapital.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.undistributedEarningsOrLosses.name),
          Text(provider.undistributedEarningsOrLosses.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setUndistributedEarningsOrLossesAtBeginning,
              initialValue: provider
                  .undistributedEarningsOrLosses.priceAtBeginning
                  .toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setUndistributedEarningsOrLossesAtEnd,
              initialValue:
                  provider.undistributedEarningsOrLosses.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.unpaidCapital.name),
          Text(provider.unpaidCapital.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setUnpaidCapitalAtBeginning,
              initialValue: provider.unpaidCapital.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setUnpaidCapitalAtEnd,
              initialValue: provider.unpaidCapital.priceAtEnd.toString(),
            ),
          ),
          flex1: 2,
        ),
        const Divider(height: 0),
        BodyRow(
          Text(provider.withdrawnCapital.name),
          Text(provider.withdrawnCapital.code),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setWithdrawnCapitalAtBeginning,
              initialValue:
                  provider.withdrawnCapital.priceAtBeginning.toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputText(
              onChanged: notifier.setWithdrawnCapitalAtEnd,
              initialValue: provider.withdrawnCapital.priceAtEnd.toString(),
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
