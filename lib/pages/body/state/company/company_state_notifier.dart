import 'package:flutter_labwork_2/models/company.dart';
import 'package:flutter_labwork_2/pages/body/state/company/report_notifier_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CompanyStateNotifier extends StateNotifier<Company> {
  final ReportStateNotifier reportProvider;

  CompanyStateNotifier({
    required this.reportProvider,
  }) : super(Company.initial());

  Company get getCurrentCompany => state;

  void addReport() {
    final report = reportProvider.getreport();
    state = state.copyWith(reports: [
      ...state.reports,
      report,
    ]);
  }

  void reset() {
    state = Company.initial();
  }

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setRegisterInCountry(String registerInCountry) {
    state = state.copyWith(registerInCountry: registerInCountry);
  }

  void setAddress(String address) {
    state = state.copyWith(address: address);
  }

  void setYearsOfExistance(int yearsOfExistance) {
    state = state.copyWith(
      details: state.details.copyWith(
        yearsOfExistance: yearsOfExistance,
      ),
    );
  }

  void setGradationOfProfitLossAnalysis(String gradationOfProfitLossAnalysis) {
    state = state.copyWith(
      details: state.details.copyWith(
        gradationOfProfitLossAnalysis: gradationOfProfitLossAnalysis,
      ),
    );
  }

  void setLargestAmountOfCredit(double largestAmountOfCredit) {
    state = state.copyWith(
      details: state.details.copyWith(
        largestAmountOfCredit: largestAmountOfCredit,
      ),
    );
  }

  void setAmountOfRequiredCredit(double amountOfRequiredCredit) {
    state = state.copyWith(
      details: state.details.copyWith(
        amountOfRequiredCredit: amountOfRequiredCredit,
      ),
    );
  }

  void setNumberOfOwnMoneyInvested(double numberOfOwnMoneyInvested) {
    state = state.copyWith(
      details: state.details.copyWith(
        numberOfOwnMoneyInvested: numberOfOwnMoneyInvested,
      ),
    );
  }

  void setValueOfLiquidProperty(double valueOfLiquidProperty) {
    state = state.copyWith(
      details: state.details.copyWith(
        valueOfLiquidProperty: valueOfLiquidProperty,
      ),
    );
  }
}

final companyStateNotifierProvider =
    StateNotifierProvider<CompanyStateNotifier, Company>((ref) {
  return CompanyStateNotifier(
    reportProvider: ref.read(reportNotifierProvider.notifier),
  );
});
