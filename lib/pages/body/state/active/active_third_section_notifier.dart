import 'package:flutter_labwork_2/models/active/active_third_section.dart';
import 'package:flutter_labwork_2/models/asset.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActiveThirdSectionNotfier extends StateNotifier<ActiveThirdSection> {
  ActiveThirdSectionNotfier()
      : super(
          ActiveThirdSection(
            balance: Asset(
              name: 'Баланс',
              code: '1300',
            ),
          ),
        );

  void setBalanceAtBeginning(String value) {
    state = state.copyWith(
      balance: state.balance.copyWith(
        priceAtBeginning: double.tryParse(value) ?? 0,
      ),
    );
  }

  void setBalanceAtEnd(String value) {
    state = state.copyWith(
      balance: state.balance.copyWith(
        priceAtEnd: double.tryParse(value) ?? 0,
      ),
    );
  }

  ActiveThirdSection getActiveThirdSection() => state;
}

final activeThirdSectionProvider =
    StateNotifierProvider<ActiveThirdSectionNotfier, ActiveThirdSection>(
  (ref) => ActiveThirdSectionNotfier(),
);
