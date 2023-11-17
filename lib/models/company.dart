import 'package:flutter_labwork_2/models/details.dart';
import 'package:flutter_labwork_2/models/report.dart';

class Company {
  final String name;
  final String registerInCountry;
  final String address;
  final Details details;
  List<Report> reports;

  Company({
    required this.name,
    required this.registerInCountry,
    required this.address,
    this.details = const Details.initial(),
    required this.reports,
  });

  Company copyWith({
    String? name,
    String? registerInCountry,
    String? address,
    Details? details,
    List<Report>? reports,
  }) {
    return Company(
      name: name ?? this.name,
      registerInCountry: registerInCountry ?? this.registerInCountry,
      address: address ?? this.address,
      details: details ?? this.details,
      reports: reports ?? this.reports,
    );
  }

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      name: json['name'],
      registerInCountry: json['registerInCountry'],
      address: json['address'],
      details: Details.fromJson(json['details']),
      reports: json['reports'] != null
          ? (json['reports'] as List).map((i) => Report.fromJson(i)).toList()
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'registerInCountry': registerInCountry,
      'address': address,
      'details': details.toJson(),
      'reports': reports.map((i) => i.toJson()).toList(),
    };
  }

  factory Company.initial() {
    return Company(
      name: '',
      registerInCountry: '',
      address: '',
      details: const Details.initial(),
      reports: [],
    );
  }
}
