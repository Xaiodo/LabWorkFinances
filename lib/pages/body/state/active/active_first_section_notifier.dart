import 'package:flutter_labwork_2/models/active/active_first_section.dart';
import 'package:flutter_labwork_2/models/asset.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActiveFirstSectionNotifier extends StateNotifier<ActiveFirstSection> {
  ActiveFirstSectionNotifier()
      : super(
          ActiveFirstSection(
            intangibleAssets: Asset(
              name: 'Нематеріальні активи',
              code: '1000',
            ),
            initualValueOfIntangibleAssets: Asset(
              name: 'первісна вартість',
              code: '1001',
            ),
            accumulatedAmortizationOfIntangibleAssets: Asset(
              name: 'накопичена амортизація',
              code: '1002',
            ),
            unfinishedCapitalInvestments: Asset(
              name: 'Незавершені капітальні інвестиції',
              code: '1005',
            ),
            mainAssets: Asset(
              name: 'Основні засоби',
              code: '1010',
            ),
            initialValueOfMainAssets: Asset(
              name: 'первісна вартість',
              code: '1011',
            ),
            wearAndTearOfMainAssets: Asset(
              name: 'знос',
              code: '1012',
            ),
            investmentProperty: Asset(
              name: 'Інвестиційна нерухомість',
              code: '1015',
            ),
            longtermBiologicalAssets: Asset(
              name: 'Довгострокові біологічні активи',
              code: '1020',
            ),
            byMethodOfParticipation: Asset(
              name:
                  'Довгострокові фінансові інвестиції, обліковані за методом участі і в капіталі інших підприємств',
              code: '1030',
            ),
            otherFinancialInvestmentsOfLongTerm: Asset(
              name: 'Інші фінансові інвестиції',
              code: '1035',
            ),
            longtermReceivables: Asset(
              name: 'Довгострокові дебіторська заборгованість',
              code: '1040',
            ),
            deferredTaxAssets: Asset(
              name: 'Відстрочені податкові активи',
              code: '1045',
            ),
            otherNonCurrentAssets: Asset(
              name: 'Інші необоротні активи',
              code: '1090',
            ),
            total: Asset(
              name: 'Усього за розділом I',
              code: '1095',
            ),
          ),
        );

  void setIntangibleAssetsPriceAtBeginning(String value) {
    state = state.copyWith(
      intangibleAssets: state.intangibleAssets.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setIntangibleAssetsPriceAtEnd(String value) {
    state = state.copyWith(
      intangibleAssets: state.intangibleAssets.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setnitualValueOfIntangibleAssetsAtBeginning(String value) {
    state = state.copyWith(
      initualValueOfIntangibleAssets:
          state.initualValueOfIntangibleAssets.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setnitualValueOfIntangibleAssetsAtEnd(String value) {
    state = state.copyWith(
      initualValueOfIntangibleAssets:
          state.initualValueOfIntangibleAssets.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setAccumulatedAmortizationOfIntangibleAssetsAtBeginning(String value) {
    state = state.copyWith(
      accumulatedAmortizationOfIntangibleAssets:
          state.accumulatedAmortizationOfIntangibleAssets.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setAccumulatedAmortizationOfIntangibleAssetsAtEnd(String value) {
    state = state.copyWith(
      accumulatedAmortizationOfIntangibleAssets:
          state.accumulatedAmortizationOfIntangibleAssets.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setUnfinishedCapitalInvestmentsAtBeginning(String value) {
    state = state.copyWith(
      unfinishedCapitalInvestments: state.unfinishedCapitalInvestments.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setUnfinishedCapitalInvestmentsAtEnd(String value) {
    state = state.copyWith(
      unfinishedCapitalInvestments: state.unfinishedCapitalInvestments.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setMainAssetsAtBeginning(String value) {
    state = state.copyWith(
      mainAssets: state.mainAssets.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setMainAssetsAtEnd(String value) {
    state = state.copyWith(
      mainAssets: state.mainAssets.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setInitialValueOfMainAssetsAtBeginning(String value) {
    state = state.copyWith(
      initialValueOfMainAssets: state.initialValueOfMainAssets.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setInitialValueOfMainAssetsAtEnd(String value) {
    state = state.copyWith(
      initialValueOfMainAssets: state.initialValueOfMainAssets.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setWearAndTearOfMainAssetsAtBeginning(String value) {
    state = state.copyWith(
      wearAndTearOfMainAssets: state.wearAndTearOfMainAssets.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setWearAndTearOfMainAssetsAtEnd(String value) {
    state = state.copyWith(
      wearAndTearOfMainAssets: state.wearAndTearOfMainAssets.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setInvestmentPropertyAtBeginning(String value) {
    state = state.copyWith(
      investmentProperty: state.investmentProperty.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setInvestmentPropertyAtEnd(String value) {
    state = state.copyWith(
      investmentProperty: state.investmentProperty.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setLongtermBiologicalAssetsAtBeginning(String value) {
    state = state.copyWith(
      longtermBiologicalAssets: state.longtermBiologicalAssets.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setLongtermBiologicalAssetsAtEnd(String value) {
    state = state.copyWith(
      longtermBiologicalAssets: state.longtermBiologicalAssets.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setByMethodOfParticipationAtBeginning(String value) {
    state = state.copyWith(
      byMethodOfParticipation: state.byMethodOfParticipation.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setByMethodOfParticipationAtEnd(String value) {
    state = state.copyWith(
      byMethodOfParticipation: state.byMethodOfParticipation.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setOtherFinancialInvestmentsOfLongTermAtBeginning(String value) {
    state = state.copyWith(
      otherFinancialInvestmentsOfLongTerm:
          state.otherFinancialInvestmentsOfLongTerm.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setOtherFinancialInvestmentsOfLongTermAtEnd(String value) {
    state = state.copyWith(
      otherFinancialInvestmentsOfLongTerm:
          state.otherFinancialInvestmentsOfLongTerm.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setLongtermReceivablesAtBeginning(String value) {
    state = state.copyWith(
      longtermReceivables: state.longtermReceivables.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setLongtermReceivablesAtEnd(String value) {
    state = state.copyWith(
      longtermReceivables: state.longtermReceivables.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setDeferredTaxAssetsAtBeginning(String value) {
    state = state.copyWith(
      deferredTaxAssets: state.deferredTaxAssets.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setDeferredTaxAssetsAtEnd(String value) {
    state = state.copyWith(
      deferredTaxAssets: state.deferredTaxAssets.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setOtherNonCurrentAssetsAtBeginning(String value) {
    state = state.copyWith(
      otherNonCurrentAssets: state.otherNonCurrentAssets.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setOtherNonCurrentAssetsAtEnd(String value) {
    state = state.copyWith(
      otherNonCurrentAssets: state.otherNonCurrentAssets.copyWith(
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

  ActiveFirstSection getActiveFirstSection() {
    return state;
  }
}

final activeFirstSectionProvider =
    StateNotifierProvider<ActiveFirstSectionNotifier, ActiveFirstSection>(
  (ref) => ActiveFirstSectionNotifier(),
);
