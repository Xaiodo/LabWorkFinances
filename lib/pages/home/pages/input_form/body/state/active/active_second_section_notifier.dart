import 'package:flutter_labwork_2/models/active/active_second_section.dart';
import 'package:flutter_labwork_2/models/asset.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActiveSecondSectionNotifier extends StateNotifier<ActiveSecondSection> {
  ActiveSecondSectionNotifier()
      : super(
          ActiveSecondSection(
            stocks: Asset(
              name: 'Запаси',
              code: '1100',
            ),
            currentBiologicalAssets: Asset(
              name: 'Поточні біологічні активи',
              code: '1110',
            ),
            accountsReceivable: Asset(
              name:
                  'Дебіторська заборгованість за продукцію, товари, роботи, послуги',
              code: '1125',
            ),
            accountsReceivableOnSssuedAdvances: Asset(
              name:
                  'Дебіторська заборгованість за розрахунками: за виданими авансами',
              code: '1130',
            ),
            accountsReceivableWithBudget: Asset(
              name: 'Дебіторська заборгованість за розрахунками: з бюджетом',
              code: '1135',
            ),
            accountsReceivableIncludingIncomeTax: Asset(
              name:
                  'Дебіторська заборгованість, в тому числі податок на прибуток',
              code: '1136',
            ),
            otherAccountsReceivable: Asset(
              name: 'Інша поточна дебіторська заборгованість',
              code: '1155',
            ),
            currentFinancialInvestments: Asset(
              name: 'Поточні фінансові інвестиції',
              code: '1160',
            ),
            cash: Asset(
              name: 'Грошові та їх еквіваленти',
              code: '1165',
            ),
            expensesFuturePeriods: Asset(
              name: 'Витрати майбутніх періодів',
              code: '1170',
            ),
            otherCurrentAssets: Asset(
              name: 'Інші оборотні активи',
              code: '1190',
            ),
            total: Asset(
              name: 'Усього за розділом II',
              code: '1195',
            ),
          ),
        );

  void setStocksAtBeginning(String value) => state = state.copyWith(
        stocks: state.stocks.copyWith(
          priceAtBeginning: double.tryParse(value) ?? 0,
        ),
      );

  void setStocksAtEnd(String value) => state = state.copyWith(
        stocks: state.stocks.copyWith(
          priceAtEnd: double.tryParse(value) ?? 0,
        ),
      );

  void setCurrentBiologicalAssetsAtBeginning(String value) =>
      state = state.copyWith(
        currentBiologicalAssets: state.currentBiologicalAssets.copyWith(
          priceAtBeginning: double.tryParse(value) ?? 0,
        ),
      );

  void setCurrentBiologicalAssetsAtEnd(String value) => state = state.copyWith(
        currentBiologicalAssets: state.currentBiologicalAssets.copyWith(
          priceAtEnd: double.tryParse(value) ?? 0,
        ),
      );

  void setAccountsReceivableAtBeginning(String value) => state = state.copyWith(
        accountsReceivable: state.accountsReceivable.copyWith(
          priceAtBeginning: double.tryParse(value) ?? 0,
        ),
      );

  void setAccountsReceivableAtEnd(String value) => state = state.copyWith(
        accountsReceivable: state.accountsReceivable.copyWith(
          priceAtEnd: double.tryParse(value) ?? 0,
        ),
      );

  void setAccountsReceivableOnSssuedAdvancesAtBeginning(String value) =>
      state = state.copyWith(
        accountsReceivableOnSssuedAdvances:
            state.accountsReceivableOnSssuedAdvances.copyWith(
          priceAtBeginning: double.tryParse(value) ?? 0,
        ),
      );

  void setAccountsReceivableOnSssuedAdvancesAtEnd(String value) =>
      state = state.copyWith(
        accountsReceivableOnSssuedAdvances:
            state.accountsReceivableOnSssuedAdvances.copyWith(
          priceAtEnd: double.tryParse(value) ?? 0,
        ),
      );

  void setAccountsReceivableWithBudgetAtBeginning(String value) =>
      state = state.copyWith(
        accountsReceivableWithBudget:
            state.accountsReceivableWithBudget.copyWith(
          priceAtBeginning: double.tryParse(value) ?? 0,
        ),
      );

  void setAccountsReceivableWithBudgetAtEnd(String value) =>
      state = state.copyWith(
        accountsReceivableWithBudget:
            state.accountsReceivableWithBudget.copyWith(
          priceAtEnd: double.tryParse(value) ?? 0,
        ),
      );

  void setAccountsReceivableIncludingIncomeTaxAtBeginning(String value) =>
      state = state.copyWith(
        accountsReceivableIncludingIncomeTax:
            state.accountsReceivableIncludingIncomeTax.copyWith(
          priceAtBeginning: double.tryParse(value) ?? 0,
        ),
      );

  void setAccountsReceivableIncludingIncomeTaxAtEnd(String value) =>
      state = state.copyWith(
        accountsReceivableIncludingIncomeTax:
            state.accountsReceivableIncludingIncomeTax.copyWith(
          priceAtEnd: double.tryParse(value) ?? 0,
        ),
      );

  void setOtherAccountsReceivableAtBeginning(String value) =>
      state = state.copyWith(
        otherAccountsReceivable: state.otherAccountsReceivable.copyWith(
          priceAtBeginning: double.tryParse(value) ?? 0,
        ),
      );

  void setOtherAccountsReceivableAtEnd(String value) => state = state.copyWith(
        otherAccountsReceivable: state.otherAccountsReceivable.copyWith(
          priceAtEnd: double.tryParse(value) ?? 0,
        ),
      );

  void setCurrentFinancialInvestmentsAtBeginning(String value) =>
      state = state.copyWith(
        currentFinancialInvestments: state.currentFinancialInvestments.copyWith(
          priceAtBeginning: double.tryParse(value) ?? 0,
        ),
      );

  void setCurrentFinancialInvestmentsAtEnd(String value) =>
      state = state.copyWith(
        currentFinancialInvestments: state.currentFinancialInvestments.copyWith(
          priceAtEnd: double.tryParse(value) ?? 0,
        ),
      );

  void setCashAtBeginning(String value) => state = state.copyWith(
        cash: state.cash.copyWith(
          priceAtBeginning: double.tryParse(value) ?? 0,
        ),
      );

  void setCashAtEnd(String value) => state = state.copyWith(
        cash: state.cash.copyWith(
          priceAtEnd: double.tryParse(value) ?? 0,
        ),
      );

  void setExpensesFuturePeriodsAtBeginning(String value) =>
      state = state.copyWith(
        expensesFuturePeriods: state.expensesFuturePeriods.copyWith(
          priceAtBeginning: double.tryParse(value) ?? 0,
        ),
      );

  void setExpensesFuturePeriodsAtEnd(String value) => state = state.copyWith(
        expensesFuturePeriods: state.expensesFuturePeriods.copyWith(
          priceAtEnd: double.tryParse(value) ?? 0,
        ),
      );

  void setOtherCurrentAssetsAtBeginning(String value) => state = state.copyWith(
        otherCurrentAssets: state.otherCurrentAssets.copyWith(
          priceAtBeginning: double.tryParse(value) ?? 0,
        ),
      );

  void setOtherCurrentAssetsAtEnd(String value) => state = state.copyWith(
        otherCurrentAssets: state.otherCurrentAssets.copyWith(
          priceAtEnd: double.tryParse(value) ?? 0,
        ),
      );

  void setTotalAtBeginning(String value) => state = state.copyWith(
        total: state.total.copyWith(
          priceAtBeginning: double.tryParse(value) ?? 0,
        ),
      );

  void setTotalAtEnd(String value) => state = state.copyWith(
        total: state.total.copyWith(
          priceAtEnd: double.tryParse(value) ?? 0,
        ),
      );

  ActiveSecondSection getActiveSecondSection() => state;
}

final activeSecondSectionProvider =
    StateNotifierProvider<ActiveSecondSectionNotifier, ActiveSecondSection>(
  (ref) => ActiveSecondSectionNotifier(),
);
