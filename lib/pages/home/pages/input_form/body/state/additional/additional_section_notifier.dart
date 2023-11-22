import 'package:flutter_labwork_2/models/additional/additional_section.dart';
import 'package:flutter_labwork_2/models/asset.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdditionalSectionNotifier extends StateNotifier<AdditionalSection> {
  AdditionalSectionNotifier()
      : super(
          AdditionalSection(
            netIncome: Asset(
              name: "Чистий прибуток",
              code: "2350",
            ),
            materialCosts: Asset(
              name: "Матеріальні затрати",
              code: "2500",
            ),
            laborCosts: Asset(
              name: "Витрати на оплату праці",
              code: "2505",
            ),
            socialSecurityContributions: Asset(
              name: "Відрахування на соціальні заходи",
              code: "2510",
            ),
            depreciation: Asset(
              name: "Амортизація",
              code: "2515",
            ),
            otherOperatingExpenses: Asset(
              name: "Інші операційні витрати",
              code: "2520",
            ),
          ),
        );

  void setNetIncomePriceAtBeginning(String value) {
    state = state.copyWith(
      netIncome: state.netIncome.copyWith(
        priceAtBeginning: double.tryParse(value),
      ),
    );
  }

  void setNetIncomePriceAtEnd(String value) {
    state = state.copyWith(
      netIncome: state.netIncome.copyWith(
        priceAtEnd: double.tryParse(value),
      ),
    );
  }

  void setMaterialCostsPriceAtBeginning(String value) {
    state = state.copyWith(
      materialCosts: state.materialCosts.copyWith(
        priceAtBeginning: double.tryParse(value),
      ),
    );
  }

  void setMaterialCostsPriceAtEnd(String value) {
    state = state.copyWith(
      materialCosts: state.materialCosts.copyWith(
        priceAtEnd: double.tryParse(value),
      ),
    );
  }

  void setLaborCostsPriceAtBeginning(String value) {
    state = state.copyWith(
      laborCosts: state.laborCosts.copyWith(
        priceAtBeginning: double.tryParse(value),
      ),
    );
  }

  void setLaborCostsPriceAtEnd(String value) {
    state = state.copyWith(
      laborCosts: state.laborCosts.copyWith(
        priceAtEnd: double.tryParse(value),
      ),
    );
  }

  void setSocialSecurityContributionsPriceAtBeginning(String value) {
    state = state.copyWith(
      socialSecurityContributions: state.socialSecurityContributions.copyWith(
        priceAtBeginning: double.tryParse(value),
      ),
    );
  }

  void setSocialSecurityContributionsPriceAtEnd(String value) {
    state = state.copyWith(
      socialSecurityContributions: state.socialSecurityContributions.copyWith(
        priceAtEnd: double.tryParse(value),
      ),
    );
  }

  void setDepreciationPriceAtBeginning(String value) {
    state = state.copyWith(
      depreciation: state.depreciation.copyWith(
        priceAtBeginning: double.tryParse(value),
      ),
    );
  }

  void setDepreciationPriceAtEnd(String value) {
    state = state.copyWith(
      depreciation: state.depreciation.copyWith(
        priceAtEnd: double.tryParse(value),
      ),
    );
  }

  void setOtherOperatingExpensesPriceAtBeginning(String value) {
    state = state.copyWith(
      otherOperatingExpenses: state.otherOperatingExpenses.copyWith(
        priceAtBeginning: double.tryParse(value),
      ),
    );
  }

  void setOtherOperatingExpensesPriceAtEnd(String value) {
    state = state.copyWith(
      otherOperatingExpenses: state.otherOperatingExpenses.copyWith(
        priceAtEnd: double.tryParse(value),
      ),
    );
  }
}

final additionalSectionNotifierProvider =
    StateNotifierProvider<AdditionalSectionNotifier, AdditionalSection>(
  (ref) => AdditionalSectionNotifier(),
);
