import 'package:flutter_labwork_2/models/company.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/state/company/company_state_notifier.dart';
import 'package:flutter_labwork_2/services/companies_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CompaniesStateNotifier extends StateNotifier<List<Company>> {
  final CompanyStateNotifier companyProvider;
  final CompaniesService companiesService;
  CompaniesStateNotifier({
    required this.companyProvider,
    required this.companiesService,
  }) : super([]);

  void addCompany() {
    final company = companyProvider.getCurrentCompany;
    print(company);
    state = [...state, company];
    companyProvider.reset();
    companiesService.saveCompanies(state);
  }
}

final companiesProvider =
    StateNotifierProvider<CompaniesStateNotifier, List<Company>>(
  (ref) => CompaniesStateNotifier(
    companyProvider: ref.read(companyStateNotifierProvider.notifier),
    companiesService: ref.read(companiesServiceProvider),
  ),
);
