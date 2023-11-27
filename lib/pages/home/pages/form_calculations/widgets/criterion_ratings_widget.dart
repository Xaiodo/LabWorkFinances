import 'package:flutter/material.dart';

class CriterionRatingsWidget extends StatelessWidget {
  const CriterionRatingsWidget({
    required this.valuesString,
    required this.assetsValues,
    Key? key,
  }) : super(key: key);

  final String valuesString;
  final List<double> assetsValues;

  LevelOfSolvency getLevelOfSolvency() {
    final values = valuesString.trim().split(',');
    double summary = 0.0;

    for (int i = 0; i < 11; i++) {
      double innerLoopResult = 0;
      for (int j = 0; j < 11; j++) {
        innerLoopResult += double.tryParse(values[j]) ?? 0;
      }
      summary += (((double.tryParse(values[i]) ?? 0.0) / innerLoopResult) *
          assetsValues[i]);
    }

    return LevelOfSolvency.valueOf(summary);
  }

  @override
  Widget build(BuildContext context) {
    final levelOfSolvency = getLevelOfSolvency();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(levelOfSolvency.name),
            const SizedBox(height: 8),
            Text(levelOfSolvency.description),
          ],
        ),
      ),
    );
  }
}

class LevelOfSolvency {
  String name;
  String description;

  LevelOfSolvency(this.name, this.description);

  static LevelOfSolvency valueOf(double value) {
    if (value > 0.57 && value <= 1) {
      return LevelOfSolvency(
        'Найвищий рівень кредитоспроможності',
        'Дуже низькі очікування по кредитних ризиках та дуже висока здатність своєчасно погашати фінансові зобов’язання.',
      );
    } else if (value > 0.37 && value <= 0.57) {
      return LevelOfSolvency(
        'Високий рівень кредитоспроможності',
        'Низькі очікування по кредитним ризикам. Здатність вчасно погашати фінансові зобов’язання оцінюється як адекватна, однак негативні зміни обставин і економічної кон’юнктури з більшою вірогідністю можуть знизити цю здатність.',
      );
    } else if (value > 0.19 && value <= 0.37) {
      return LevelOfSolvency(
        'Спекулятивний рейтинг',
        'Існує можливість розвитку кредитних ризиків, особливо в результаті негативних економічних змін, які можуть статися з часом.',
      );
    } else if (value > 0.11 && value < 0.19) {
      return LevelOfSolvency(
        'Можливий дефолт',
        'Рейтинг говорить, що дефолт видається реальною можливістю. Здатність виконувати фінансові зобов’язання цілком залежать від стійкої та сприятливої ділової або економічної кон’юнктури.',
      );
    } else if (value > 1) {
      return LevelOfSolvency(
        'Ідеальний рейтинг',
        'Рейтинг говорить, що це дуже успішний бізнес.',
      );
    } else {
      return LevelOfSolvency(
        'Дефолт неминучий',
        'Рейтинг говорить, що дефолт видається неминучим.',
      );
    }
  }

  factory LevelOfSolvency.initial() {
    return LevelOfSolvency(
      'Рівень кредитоспроможності',
      'Визначається як здатність позичальника виконувати фінансові зобов’язання в повному обсязі та вчасно.',
    );
  }
}
