import 'dart:convert';
import 'dart:io';
import 'package:flutter_labwork_2/models/company.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

class CompaniesService {
  Future<void> saveCompanies(List<Company> companies) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/companies.json');
    file.writeAsString('');
    await file.writeAsString(jsonEncode(companies));
  }

  Future<List<Company>> getCompanies() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/companies.json');
    if (!file.existsSync()) {
      return [];
    }
    final json = await file.readAsString();
    if (json.isEmpty) {
      return [];
    }

    final companiesJson = jsonDecode(json);
    return companiesJson
        .map<Company>((companyJson) => Company.fromJson(companyJson))
        .toList();
  }
}

final companiesServiceProvider =
    Provider<CompaniesService>((ref) => CompaniesService());
