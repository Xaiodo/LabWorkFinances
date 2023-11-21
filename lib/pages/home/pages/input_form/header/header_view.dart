import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/company/company_state_notifier.dart';
import 'package:flutter_labwork_2/widgets/text_input.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeaderView extends ConsumerWidget {
  const HeaderView({super.key});

  Future<dynamic> onDetailPressed(BuildContext context) => showGeneralDialog(
        context: context,
        pageBuilder: (context, animation, secondaryAnimation) => Container(),
        transitionBuilder: (context, animation, secondaryAnimation, child) =>
            AlertDialog(
          backgroundColor: const Color(0xFF191919),
          title: Row(
            children: [
              Text(
                'Деталі підприємства',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.close,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          content: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 18,
            ),
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Color(0xFF191919),
              border: Border.fromBorderSide(
                BorderSide(
                  color: Color.fromARGB(255, 39, 38, 38),
                ),
              ),
            ),
            child: Consumer(
              builder: (context, ref, child) => Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Термін існування підприємства',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: TextInput(
                          onChanged: (value) => ref
                              .read(companyStateNotifierProvider.notifier)
                              .setYearsOfExistance(int.tryParse(value) ?? 0),
                          hintText: 'Років',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Градація аналізу прибутків та збитків',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: TextInput(
                          onChanged: ref
                              .read(companyStateNotifierProvider.notifier)
                              .setGradationOfProfitLossAnalysis,
                          hintText: '(0; 5]',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Найбільша сума отриманого і повернутого кредиту',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: TextInput(
                          onChanged: (value) => ref
                              .read(companyStateNotifierProvider.notifier)
                              .setLargestAmountOfCredit(
                                double.tryParse(value) ?? 0.0,
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Сума запитуваного кридиту',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: TextInput(
                          onChanged: (value) => ref
                              .read(companyStateNotifierProvider.notifier)
                              .setAmountOfRequiredCredit(
                                double.tryParse(value) ?? 0.0,
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Кількість власних коштів в інвестицію',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: TextInput(
                            onChanged: (value) => ref
                                .read(companyStateNotifierProvider.notifier)
                                .setNumberOfOwnMoneyInvested(
                                  double.tryParse(value) ?? 0.0,
                                )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Вартість власного ліквідного майна',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: TextInput(
                          onChanged: (value) => ref
                              .read(companyStateNotifierProvider.notifier)
                              .setValueOfLiquidProperty(
                                double.tryParse(value) ?? 0.0,
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Додати нові дані'),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 20,
      ),
      foregroundDecoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Назва підприємства',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.13,
                  child: TextInput(
                    onChanged:
                        ref.read(companyStateNotifierProvider.notifier).setName,
                    hintText: 'Pepega Inc.',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ЄРДПОУ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.13,
                  child: TextInput(
                    onChanged: ref
                        .read(companyStateNotifierProvider.notifier)
                        .setRegisterInCountry,
                    hintText: '**** ****',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Адресса',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.13,
                  child: TextInput(
                    onChanged: ref
                        .read(companyStateNotifierProvider.notifier)
                        .setAddress,
                    hintText: 'вул. Святого Пепеги, 1',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => onDetailPressed(context),
              style: ElevatedButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.primary,
                backgroundColor:
                    Theme.of(context).colorScheme.onSecondaryContainer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Деталі'),
            )
          ],
        ),
      ),
    );
  }
}
