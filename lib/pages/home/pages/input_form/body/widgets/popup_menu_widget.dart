import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/company/report_notifier_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum QuarterItem {
  firstQuarter('Перший квартал'),
  secondQuarter('Другий квартал'),
  thirdQuarter('Третій квартал'),
  fourthQuarter('Четвертий квартал');

  final String message;

  const QuarterItem(this.message);
}

class PopupMenuWidget extends ConsumerWidget {
  const PopupMenuWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(reportNotifierProvider);
    final notifier = ref.read(reportNotifierProvider.notifier);
    return Center(
      child: PopupMenuButton<QuarterItem>(
        initialValue: provider.quarter,
        onSelected: notifier.setQuarter,
        itemBuilder: (BuildContext context) => <PopupMenuEntry<QuarterItem>>[
          const PopupMenuItem<QuarterItem>(
            value: QuarterItem.firstQuarter,
            child: Text('Перший квартал'),
          ),
          const PopupMenuItem<QuarterItem>(
            value: QuarterItem.secondQuarter,
            child: Text('Другий квартал'),
          ),
          const PopupMenuItem<QuarterItem>(
            value: QuarterItem.thirdQuarter,
            child: Text('Третій квартал'),
          ),
          const PopupMenuItem<QuarterItem>(
            value: QuarterItem.fourthQuarter,
            child: Text('Четвертий квартал'),
          ),
        ],
        child: Text(provider.quarter.message),
      ),
    );
  }
}
