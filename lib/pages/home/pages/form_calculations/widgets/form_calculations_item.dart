import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/models/company.dart';

class FormCalculationsItem extends StatelessWidget {
  final Company company;
  const FormCalculationsItem({required this.company, super.key});

  @override
  Widget build(BuildContext context) => Column(
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
                    Expanded(
                      child: Text(
                        '1. Коефіцієнт миттєвої ліквідності',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Text(
                      company.getCurrentLiquidityRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '2. Коефіцієнт поточної ліквідності',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Text(
                      company.getCurrentLiquidityRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '3. Коефіцієнт загальної ліквідності',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Text(
                      company.getTotalLiquidityRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '4. Коефіцієнт фінансової незалежності',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Text(
                      company.getFinancialIndependenceRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '5. Коефіцієнт маневреності власного капіталу',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Text(
                      company.getEquityManeuverabilityRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
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
                    Expanded(
                      child: Text(
                        '1. Коефіцієнт рентабельності виробництва',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Text(
                      company.getProductionProfitabilityRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '2. Коефіцієнт діяльності минулих років',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Text(
                      company.getActivityRatioPastYears(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '3. Коефіцієнт найбільшої суми раніше повернутого кредиту',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Text(
                      company.getMaximumRepaidLoanAmountRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
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
                    Expanded(
                      child: Text(
                        '1. Критерій термін існування підприємства ',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Text(
                      company.details.yearsOfExistance.toString(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '2. Коефіцієнт питомої ваги коштів підприємства у вартості кредитного проекту',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Text(
                      company
                          .getSpecificWeightOfEnterpriseFundsInProjectValueRatio(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '3. Коефіцієнт наявності власного ліквідного майна',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Text(
                      company.getAvailabilityRatioOfOwnLiquidAssets(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      );
}
