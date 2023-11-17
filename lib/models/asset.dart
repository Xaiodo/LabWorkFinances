class Asset {
  final String name;
  final String code;
  final double? priceAtBeginning;
  final double? priceAtEnd;

  Asset({
    required this.name,
    required this.code,
    this.priceAtBeginning = 0,
    this.priceAtEnd = 0,
  });

  factory Asset.initial() {
    return Asset(
      name: '',
      code: '',
    );
  }

  Asset copyWith({
    String? name,
    String? code,
    double? priceAtBeginning,
    double? priceAtEnd,
  }) {
    return Asset(
      name: name ?? this.name,
      code: code ?? this.code,
      priceAtBeginning: priceAtBeginning ?? this.priceAtBeginning,
      priceAtEnd: priceAtEnd ?? this.priceAtEnd,
    );
  }

  factory Asset.fromJson(Map<String, dynamic> json) {
    return Asset(
      name: json['name'],
      code: json['code'],
      priceAtBeginning: json['priceAtBeginning'],
      priceAtEnd: json['priceAtEnd'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'code': code,
      'priceAtBeginning': priceAtBeginning,
      'priceAtEnd': priceAtEnd,
    };
  }
}
