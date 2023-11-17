import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/body/widgets/body_row.dart';

class ActiveHeader extends StatelessWidget {
  const ActiveHeader({super.key});

  @override
  Widget build(BuildContext context) => const Column(
        children: [
          BodyRow(
            Text(
              'Актив',
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
          Divider(
            height: 0,
          ),
          BodyRow(
            Text(
              '1',
            ),
            Text(
              '2',
            ),
            Text(
              '3',
            ),
            Text(
              '4',
            ),
            flex1: 2,
          ),
          Divider(height: 0),
        ],
      );
}
