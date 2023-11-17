import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/body/widgets/body_row.dart';

class PassiveHeader extends StatelessWidget {
  const PassiveHeader({super.key});

  @override
  Widget build(BuildContext context) => const Column(
        children: [
          Divider(height: 0),
          BodyRow(
            Text(
              'Пасив',
            ),
            Text(
              'Код рядка',
            ),
            Text(
              'На початок звітного періоду',
            ),
            Text(
              'На кінець звітного періоду',
            ),
            flex1: 2,
          ),
          Divider(height: 0),
        ],
      );
}
