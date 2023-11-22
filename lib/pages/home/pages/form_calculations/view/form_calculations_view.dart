import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/form_calculations/widgets/form_calculations_item.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/companies_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormCalculationsView extends ConsumerWidget {
  const FormCalculationsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final companies = ref.watch(companiesProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Розрахунки',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView.builder(
          itemCount: companies.length,
          itemBuilder: (context, index) {
            return FormCalculationsItem(
              company: companies[index],
            );
          },
        ),
      ),
    );
  }
}
