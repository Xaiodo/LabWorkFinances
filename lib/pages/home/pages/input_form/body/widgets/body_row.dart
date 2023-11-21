import 'package:flutter/material.dart';

class BodyRow extends StatelessWidget {
  const BodyRow(
    this.firstItem,
    this.secondItem,
    this.thirdItem,
    this.fourthItem, {
    this.flex1 = 1,
    this.flex2 = 1,
    this.flex3 = 1,
    this.flex4 = 1,
    super.key,
  });

  final Widget? firstItem;
  final Widget? secondItem;
  final Widget? thirdItem;
  final Widget? fourthItem;

  final int flex1;
  final int flex2;
  final int flex3;
  final int flex4;

  @override
  Widget build(BuildContext context) => IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: flex1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: firstItem,
                ),
              ),
            ),
            VerticalDivider(
              color: secondItem == null ? Colors.transparent : Colors.white70,
            ),
            Expanded(
              flex: flex2,
              child: Center(
                child: secondItem,
              ),
            ),
            VerticalDivider(
              color: thirdItem == null ? Colors.transparent : Colors.white70,
            ),
            Expanded(
              flex: flex3,
              child: Center(
                child: thirdItem,
              ),
            ),
            VerticalDivider(
              color: fourthItem == null ? Colors.transparent : Colors.white70,
            ),
            Expanded(
              flex: flex4,
              child: Center(
                child: fourthItem,
              ),
            ),
          ],
        ),
      );
}
