import 'package:flutter_labwork_2/models/asset.dart';
import 'package:flutter_labwork_2/models/passive/passive_third_section.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PassiveThirdSectionNotifier extends StateNotifier<PassiveThirdSection> {
  PassiveThirdSectionNotifier()
      : super(
          PassiveThirdSection(
            shortTermBankLoans: Asset(
              name: 'Короткострокові кредити банків',
              code: '1600',
            ),
            currentAccountsPayableForLongTermLiabilities: Asset(
              name:
                  "Поточна кредиторська заборгованість за довгостроковими зобов'язаннями",
              code: '1610',
            ),
            currentAccountsPayableForGoodsServices: Asset(
              name: 'за товари, роботи, послуги',
              code: '1615',
            ),
            currentAccountsPayableForBudgetarySettlements: Asset(
              name: 'за бюджетними платежами',
              code: '1620',
            ),
            currentAccountsPayableIncludingIncomeTax: Asset(
              name: 'з урахуванням податку на прибуток',
              code: '1621',
            ),
            currentAccountsPayableForInsuranceSettlements: Asset(
              name: 'розрахунками зі страхування',
              code: '1625',
            ),
            currentAccountsPayableForLaborPayments: Asset(
              name: 'розрахунками з оплати праці',
              code: '1630',
            ),
            currentProvisions: Asset(
              name: 'Поточні забезпечення',
              code: '1660',
            ),
            futurePeriodRevenues: Asset(
              name: 'Доходи майбутніх періодів',
              code: '1665',
            ),
            otherCurrentLiabilities: Asset(
              name: 'Інші поточні зобов’язання',
              code: '1690',
            ),
            total: Asset(
              name: 'Усього за розділом IІІ',
              code: '1695',
            ),
          ),
        );

  void reset() => state = PassiveThirdSection.initial();

  void setShortTermBankLoansAtBeginning(String value) {
    state = state.copyWith(
      shortTermBankLoans: state.shortTermBankLoans.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setShortTermBankLoansAtEnd(String value) {
    state = state.copyWith(
      shortTermBankLoans: state.shortTermBankLoans.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentAccountsPayableForLongTermLiabilitiesAtBeginning(
      String value) {
    state = state.copyWith(
      currentAccountsPayableForLongTermLiabilities:
          state.currentAccountsPayableForLongTermLiabilities.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentAccountsPayableForLongTermLiabilitiesAtEnd(String value) {
    state = state.copyWith(
      currentAccountsPayableForLongTermLiabilities:
          state.currentAccountsPayableForLongTermLiabilities.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentAccountsPayableForGoodsServicesAtBeginning(String value) {
    state = state.copyWith(
      currentAccountsPayableForGoodsServices:
          state.currentAccountsPayableForGoodsServices.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentAccountsPayableForGoodsServicesAtEnd(String value) {
    state = state.copyWith(
      currentAccountsPayableForGoodsServices:
          state.currentAccountsPayableForGoodsServices.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentAccountsPayableForBudgetarySettlementsAtBeginning(
      String value) {
    state = state.copyWith(
      currentAccountsPayableForBudgetarySettlements:
          state.currentAccountsPayableForBudgetarySettlements.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentAccountsPayableForBudgetarySettlementsAtEnd(String value) {
    state = state.copyWith(
      currentAccountsPayableForBudgetarySettlements:
          state.currentAccountsPayableForBudgetarySettlements.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentAccountsPayableIncludingIncomeTaxAtBeginning(String value) {
    state = state.copyWith(
      currentAccountsPayableIncludingIncomeTax:
          state.currentAccountsPayableIncludingIncomeTax.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentAccountsPayableIncludingIncomeTaxAtEnd(String value) {
    state = state.copyWith(
      currentAccountsPayableIncludingIncomeTax:
          state.currentAccountsPayableIncludingIncomeTax.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentAccountsPayableForInsuranceSettlementsAtBeginning(
      String value) {
    state = state.copyWith(
      currentAccountsPayableForInsuranceSettlements:
          state.currentAccountsPayableForInsuranceSettlements.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentAccountsPayableForInsuranceSettlementsAtEnd(String value) {
    state = state.copyWith(
      currentAccountsPayableForInsuranceSettlements:
          state.currentAccountsPayableForInsuranceSettlements.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentAccountsPayableForLaborPaymentsAtBeginning(String value) {
    state = state.copyWith(
      currentAccountsPayableForLaborPayments:
          state.currentAccountsPayableForLaborPayments.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentAccountsPayableForLaborPaymentsAtEnd(String value) {
    state = state.copyWith(
      currentAccountsPayableForLaborPayments:
          state.currentAccountsPayableForLaborPayments.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentProvisionsAtBeginning(String value) {
    state = state.copyWith(
      currentProvisions: state.currentProvisions.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setCurrentProvisionsAtEnd(String value) {
    state = state.copyWith(
      currentProvisions: state.currentProvisions.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setFuturePeriodRevenuesAtBeginning(String value) {
    state = state.copyWith(
      futurePeriodRevenues: state.futurePeriodRevenues.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setFuturePeriodRevenuesAtEnd(String value) {
    state = state.copyWith(
      futurePeriodRevenues: state.futurePeriodRevenues.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setOtherCurrentLiabilitiesAtBeginning(String value) {
    state = state.copyWith(
      otherCurrentLiabilities: state.otherCurrentLiabilities.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setOtherCurrentLiabilitiesAtEnd(String value) {
    state = state.copyWith(
      otherCurrentLiabilities: state.otherCurrentLiabilities.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setTotalAtBeginning(String value) {
    state = state.copyWith(
      total: state.total.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setTotalAtEnd(String value) {
    state = state.copyWith(
      total: state.total.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  PassiveThirdSection getPassiveThirdSection() => state;
}

final passiveThirdSectionProvider =
    StateNotifierProvider<PassiveThirdSectionNotifier, PassiveThirdSection>(
  (ref) => PassiveThirdSectionNotifier(),
);
