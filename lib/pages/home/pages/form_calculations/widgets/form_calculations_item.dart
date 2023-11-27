import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/models/company.dart';
import 'package:flutter_labwork_2/pages/home/pages/form_calculations/widgets/criterion_ratings_widget.dart';
import 'package:flutter_labwork_2/widgets/input_text.dart';

// ignore: must_be_immutable
class FormCalculationsItem extends StatelessWidget {
  final Company company;
  FormCalculationsItem({required this.company, super.key});

  String valuesString = '1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: ExpansionTile(
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    company.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Text(
                  company.address,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            iconColor: Colors.white70,
            collapsedIconColor: Colors.white70,
            childrenPadding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.01,
              vertical: 10,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Text(
                  "Група G1 - показники фінансової стійкості",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 13,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      'Значення функції приналежності',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      'Значення критерію',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      '1. Коефіцієнт миттєвої ліквідності',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.membershipFunctionsGetInstantLiquidityRatio(
                        company.getInstantLiquidityRatio(),
                      ),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.getInstantLiquidityRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      '2. Коефіцієнт поточної ліквідності',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.membershipFunctionsGetCurrentLiquidityRatio(
                        company.getCurrentLiquidityRatio(),
                      ),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.getCurrentLiquidityRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      '3. Коефіцієнт загальної ліквідності',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.membershipFunctionsGetTotalLiquidityRatio(
                        company.getTotalLiquidityRatio(),
                      ),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.getTotalLiquidityRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      '4. Коефіцієнт фінансової незалежності',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.membershipFunctionsGetFinancialIndependenceRatio(
                        company.getFinancialIndependenceRatio(),
                      ),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.getFinancialIndependenceRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      '5. Коефіцієнт маневреності власного капіталу',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.membershipFunctionsGetEquityManeuverabilityRatio(
                        company.getEquityManeuverabilityRatio(),
                      ),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.getEquityManeuverabilityRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Text(
                  "Група G2 – аналіз прибутків та збитків",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 13,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      'Значення функції приналежності',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      'Значення критерію',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      '1. Коефіцієнт рентабельності виробництва',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company
                          .membershipFunctionsGetProductionProfitabilityRatio(
                        company.getProductionProfitabilityRatio(),
                      ),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.getProductionProfitabilityRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      '2. Коефіцієнт діяльності минулих років',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.membershipFunctionsGetActivityRatioPastYears(
                        company.getActivityRatioPastYears(),
                      ),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.getActivityRatioPastYears(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      '3. Коефіцієнт найбільшої суми раніше повернутого кредиту',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company
                          .membershipFunctionsGetMaximumRepaidLoanAmountRatio(
                        company.getMaximumRepaidLoanAmountRatio(),
                      ),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.getMaximumRepaidLoanAmountRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Text(
                  "Група G3 – ефективність управління підприємством ",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 13,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      'Значення функції приналежності',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      'Значення критерію',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      '1. Критерій термін існування підприємства ',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company
                          .membershipFunctionsGetOwnershipOfOwnLiquidAssetsRatio(
                        company.details.yearsOfExistance.toString(),
                      ),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.details.yearsOfExistance.toString(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      '2. Коефіцієнт питомої ваги коштів підприємства у вартості кредитного проекту',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company
                          .membershipFunctionsGetSpecificWeightOfEnterpriseFundsInProjectValueRatio(
                        company
                            .getSpecificWeightOfEnterpriseFundsInProjectValueRatio(),
                      ),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company
                          .getSpecificWeightOfEnterpriseFundsInProjectValueRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      '3. Коефіцієнт наявності власного ліквідного майна',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company
                          .membershipFunctionsGetProductionProfitabilityRatio(
                        company.getProductionProfitabilityRatio(),
                      ),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      company.getAvailabilityRatioOfOwnLiquidAssets(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  children: [
                    Text(
                      "Введіть значення важливості критеріальних оцінок(через ','): ",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 20),
                    InputText(
                      onChanged: (p0) => valuesString = p0,
                      hintText: '1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11',
                      initialValue: valuesString,
                      cursorColor: Colors.white70,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog.adaptive(
                            title: Text(
                              'Рівень кредитоспроможності бізнесу',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            contentPadding: const EdgeInsets.all(8),
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            content: CriterionRatingsWidget(
                              valuesString: valuesString,
                              assetsValues: [
                                double.tryParse(
                                        company.getInstantLiquidityRatio()) ??
                                    0.0,
                                double.tryParse(
                                        company.getCurrentLiquidityRatio()) ??
                                    0.0,
                                double.tryParse(
                                        company.getTotalLiquidityRatio()) ??
                                    0.0,
                                double.tryParse(company
                                        .getFinancialIndependenceRatio()) ??
                                    0.0,
                                double.tryParse(company
                                        .getEquityManeuverabilityRatio()) ??
                                    0.0,
                                double.tryParse(company
                                        .getProductionProfitabilityRatio()) ??
                                    0.0,
                                double.tryParse(
                                        company.getActivityRatioPastYears()) ??
                                    0.0,
                                double.tryParse(company
                                        .getMaximumRepaidLoanAmountRatio()) ??
                                    0.0,
                                double.tryParse(company.details.yearsOfExistance
                                        .toString()) ??
                                    0.0,
                                double.tryParse(company
                                        .getSpecificWeightOfEnterpriseFundsInProjectValueRatio()) ??
                                    0.0,
                                double.tryParse(company
                                        .getAvailabilityRatioOfOwnLiquidAssets()) ??
                                    0.0,
                              ],
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Розрахувати'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
