class Details {
  final int? yearsOfExistance;
  final String? gradationOfProfitLossAnalysis;
  final double? largestAmountOfCredit;
  final double? amountOfRequiredCredit;
  final double? numberOfOwnMoneyInvested;
  final double? valueOfLiquidProperty;

  Details({
    this.yearsOfExistance,
    this.gradationOfProfitLossAnalysis,
    this.largestAmountOfCredit,
    this.amountOfRequiredCredit,
    this.numberOfOwnMoneyInvested,
    this.valueOfLiquidProperty,
  });

  const Details.initial()
      : yearsOfExistance = 0,
        gradationOfProfitLossAnalysis = '',
        largestAmountOfCredit = 0,
        amountOfRequiredCredit = 0,
        numberOfOwnMoneyInvested = 0,
        valueOfLiquidProperty = 0;

  Details copyWith({
    int? yearsOfExistance,
    String? gradationOfProfitLossAnalysis,
    double? largestAmountOfCredit,
    double? amountOfRequiredCredit,
    double? numberOfOwnMoneyInvested,
    double? valueOfLiquidProperty,
  }) {
    return Details(
      yearsOfExistance: yearsOfExistance ?? this.yearsOfExistance,
      gradationOfProfitLossAnalysis:
          gradationOfProfitLossAnalysis ?? this.gradationOfProfitLossAnalysis,
      largestAmountOfCredit:
          largestAmountOfCredit ?? this.largestAmountOfCredit,
      amountOfRequiredCredit:
          amountOfRequiredCredit ?? this.amountOfRequiredCredit,
      numberOfOwnMoneyInvested:
          numberOfOwnMoneyInvested ?? this.numberOfOwnMoneyInvested,
      valueOfLiquidProperty:
          valueOfLiquidProperty ?? this.valueOfLiquidProperty,
    );
  }

  factory Details.fromJson(Map<String, dynamic> json) {
    return Details(
      yearsOfExistance: json['yearsOfExistance'],
      gradationOfProfitLossAnalysis: json['gradationOfProfitLossAnalysis'],
      largestAmountOfCredit: json['largestAmountOfCredit'],
      amountOfRequiredCredit: json['amountOfRequiredCredit'],
      numberOfOwnMoneyInvested: json['numberOfOwnMoneyInvested'],
      valueOfLiquidProperty: json['valueOfLiquidProperty'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'yearsOfExistance': yearsOfExistance,
      'gradationOfProfitLossAnalysis': gradationOfProfitLossAnalysis,
      'largestAmountOfCredit': largestAmountOfCredit,
      'amountOfRequiredCredit': amountOfRequiredCredit,
      'numberOfOwnMoneyInvested': numberOfOwnMoneyInvested,
      'valueOfLiquidProperty': valueOfLiquidProperty,
    };
  }
}
