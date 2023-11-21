import 'package:flutter_labwork_2/models/asset.dart';
import 'package:flutter_labwork_2/models/passive/passive_second_section.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PassiveSecondSectionNotifier extends StateNotifier<PassiveSecondSection> {
  PassiveSecondSectionNotifier()
      : super(
          PassiveSecondSection(
            deferredTaxLiabilities: Asset(
              name: 'Відстрочені податкові зобов\'язання',
              code: '1500',
            ),
            longTermBankLoans: Asset(
              name: 'Довгострокові кредити банків',
              code: '1510',
            ),
            otherLongTermLiabilities: Asset(
              name: 'Інші довгострокові зобов\'язання',
              code: '1515',
            ),
            longTermProvisions: Asset(
              name: 'Довгострокові забезпечення',
              code: '1520',
            ),
            targetedFunding: Asset(
              name: 'Цільове фінансування',
              code: '1525',
            ),
            total: Asset(
              name: 'Усього за розділом II',
              code: '1595',
            ),
          ),
        );

  void setDeferredTaxLiabilitiesAtBeginning(String value) {
    state = state.copyWith(
      deferredTaxLiabilities: state.deferredTaxLiabilities.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setDeferredTaxLiabilitiesAtEnd(String value) {
    state = state.copyWith(
      deferredTaxLiabilities: state.deferredTaxLiabilities.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setLongTermBankLoansAtBeginning(String value) {
    state = state.copyWith(
      longTermBankLoans: state.longTermBankLoans.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setLongTermBankLoansAtEnd(String value) {
    state = state.copyWith(
      longTermBankLoans: state.longTermBankLoans.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setOtherLongTermLiabilitiesAtBeginning(String value) {
    state = state.copyWith(
      otherLongTermLiabilities: state.otherLongTermLiabilities.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setOtherLongTermLiabilitiesAtEnd(String value) {
    state = state.copyWith(
      otherLongTermLiabilities: state.otherLongTermLiabilities.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setLongTermProvisionsAtBeginning(String value) {
    state = state.copyWith(
      longTermProvisions: state.longTermProvisions.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setLongTermProvisionsAtEnd(String value) {
    state = state.copyWith(
      longTermProvisions: state.longTermProvisions.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setTargetedFundingAtBeginning(String value) {
    state = state.copyWith(
      targetedFunding: state.targetedFunding.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setTargetedFundingAtEnd(String value) {
    state = state.copyWith(
      targetedFunding: state.targetedFunding.copyWith(
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

  PassiveSecondSection getPassiveSecondSection() => state;
}

final passiveSecondSectionProvider =
    StateNotifierProvider<PassiveSecondSectionNotifier, PassiveSecondSection>(
  (ref) => PassiveSecondSectionNotifier(),
);
