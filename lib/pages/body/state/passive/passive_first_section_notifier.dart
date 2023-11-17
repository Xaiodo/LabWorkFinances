import 'package:flutter_labwork_2/models/asset.dart';
import 'package:flutter_labwork_2/models/passive/passive_first_section.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PassiveFirstSectionNotifier extends StateNotifier<PassiveFirstSection> {
  PassiveFirstSectionNotifier()
      : super(
          PassiveFirstSection(
            registeredEquity: Asset(
              name: 'Зареєстрований (пайовий) капітал',
              code: '1400',
            ),
            capitalInRevaluations: Asset(
              name: 'Капітал у дооцінках',
              code: '1405',
            ),
            additionalCapital: Asset(
              name: 'Додатковий капітал',
              code: '1410',
            ),
            reservedCapital: Asset(
              name: 'Резервний капітал',
              code: '1415',
            ),
            undistributedEarningsOrLosses: Asset(
              name: 'Нерозподілений прибуток (непокритий збиток)',
              code: '1420',
            ),
            unpaidCapital: Asset(
              name: 'Неоплачений капітал',
              code: '1425',
            ),
            withdrawnCapital: Asset(
              name: 'Вилучений капітал',
              code: '1430',
            ),
            total: Asset(
              name: 'Усього за розділом I',
              code: '1495',
            ),
          ),
        );

  void setRegisteredEquityAtBeginning(String value) => state = state.copyWith(
        registeredEquity: state.registeredEquity
            .copyWith(priceAtBeginning: double.tryParse(value) ?? 0),
      );

  void setRegisteredEquityAtEnd(String value) => state = state.copyWith(
        registeredEquity: state.registeredEquity
            .copyWith(priceAtEnd: double.tryParse(value) ?? 0),
      );

  void setCapitalInRevaluationsAtBeginning(String value) =>
      state = state.copyWith(
        capitalInRevaluations: state.capitalInRevaluations
            .copyWith(priceAtBeginning: double.tryParse(value) ?? 0),
      );

  void setCapitalInRevaluationsAtEnd(String value) => state = state.copyWith(
        capitalInRevaluations: state.capitalInRevaluations
            .copyWith(priceAtEnd: double.tryParse(value) ?? 0),
      );

  void setAdditionalCapitalAtBeginning(String value) => state = state.copyWith(
        additionalCapital: state.additionalCapital
            .copyWith(priceAtBeginning: double.tryParse(value) ?? 0),
      );

  void setAdditionalCapitalAtEnd(String value) => state = state.copyWith(
        additionalCapital: state.additionalCapital
            .copyWith(priceAtEnd: double.tryParse(value) ?? 0),
      );

  void setReservedCapitalAtBeginning(String value) => state = state.copyWith(
        reservedCapital: state.reservedCapital
            .copyWith(priceAtBeginning: double.tryParse(value) ?? 0),
      );

  void setReservedCapitalAtEnd(String value) => state = state.copyWith(
        reservedCapital: state.reservedCapital
            .copyWith(priceAtEnd: double.tryParse(value) ?? 0),
      );

  void setUndistributedEarningsOrLossesAtBeginning(String value) =>
      state = state.copyWith(
        undistributedEarningsOrLosses: state.undistributedEarningsOrLosses
            .copyWith(priceAtBeginning: double.tryParse(value) ?? 0),
      );

  void setUndistributedEarningsOrLossesAtEnd(String value) =>
      state = state.copyWith(
        undistributedEarningsOrLosses: state.undistributedEarningsOrLosses
            .copyWith(priceAtEnd: double.tryParse(value) ?? 0),
      );

  void setUnpaidCapitalAtBeginning(String value) => state = state.copyWith(
        unpaidCapital: state.unpaidCapital
            .copyWith(priceAtBeginning: double.tryParse(value) ?? 0),
      );

  void setUnpaidCapitalAtEnd(String value) => state = state.copyWith(
        unpaidCapital: state.unpaidCapital
            .copyWith(priceAtEnd: double.tryParse(value) ?? 0),
      );

  void setWithdrawnCapitalAtBeginning(String value) => state = state.copyWith(
        withdrawnCapital: state.withdrawnCapital
            .copyWith(priceAtBeginning: double.tryParse(value) ?? 0),
      );

  void setWithdrawnCapitalAtEnd(String value) => state = state.copyWith(
        withdrawnCapital: state.withdrawnCapital
            .copyWith(priceAtEnd: double.tryParse(value) ?? 0),
      );

  void setTotalAtBeginning(String value) => state = state.copyWith(
        total:
            state.total.copyWith(priceAtBeginning: double.tryParse(value) ?? 0),
      );

  void setTotalAtEnd(String value) => state = state.copyWith(
        total: state.total.copyWith(priceAtEnd: double.tryParse(value) ?? 0),
      );

  PassiveFirstSection getPassiveFirstSection() => state;
}

final passiveFirstSectionProvider =
    StateNotifierProvider<PassiveFirstSectionNotifier, PassiveFirstSection>(
  (ref) => PassiveFirstSectionNotifier(),
);
