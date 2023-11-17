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
}

final companiesServiceProvider =
    Provider<CompaniesService>((ref) => CompaniesService());
