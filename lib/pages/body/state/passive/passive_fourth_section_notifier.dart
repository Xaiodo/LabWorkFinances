import 'package:flutter_labwork_2/models/asset.dart';
import 'package:flutter_labwork_2/models/passive/passive_fourth_section.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PassiveFourthSectionNotifier extends StateNotifier<PassiveFourthSection> {
  PassiveFourthSectionNotifier()
      : super(
          PassiveFourthSection(
            balance: Asset(
              name: 'Баланс',
              code: '1900',
            ),
          ),
        );

  void setBalanceAtBeginning(String value) => state = state.copyWith(
        balance: state.balance.copyWith(
          priceAtBeginning: double.tryParse(value) ?? 0,
        ),
      );

  void setBalanceAtEnd(String value) => state = state.copyWith(
        balance: state.balance.copyWith(
          priceAtEnd: double.tryParse(value) ?? 0,
        ),
      );

  PassiveFourthSection getPassiveFourthSection() => state;
}

final passiveFourthSectionProvider =
    StateNotifierProvider<PassiveFourthSectionNotifier, PassiveFourthSection>(
  (ref) => PassiveFourthSectionNotifier(),
);
