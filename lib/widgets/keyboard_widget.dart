import 'package:flutter/material.dart';
import 'button_calc_widget.dart';

class KeyboardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ButtonCalcWidget.symbol(label: "AC", onPressed: () {}),
            ButtonCalcWidget.symbol(label: "()", onPressed: () {}),
            ButtonCalcWidget.symbol(label: "%", onPressed: () {}),
            ButtonCalcWidget.symbol(label: "/", onPressed: () {}),
          ],
        ),
        Row(
          children: [
            ButtonCalcWidget.number(label: "7", onPressed: () {}),
            ButtonCalcWidget.number(label: "8", onPressed: () {}),
            ButtonCalcWidget.number(label: "9", onPressed: () {}),
            ButtonCalcWidget.symbol(label: "X", onPressed: () {}),
          ],
        ),
        Row(
          children: [
            ButtonCalcWidget.number(label: "4", onPressed: () {}),
            ButtonCalcWidget.number(label: "5", onPressed: () {}),
            ButtonCalcWidget.number(label: "6", onPressed: () {}),
            ButtonCalcWidget.symbol(label: "-", onPressed: () {}),
          ],
        ),
        Row(
          children: [
            ButtonCalcWidget.number(label: "1", onPressed: () {}),
            ButtonCalcWidget.number(label: "2", onPressed: () {}),
            ButtonCalcWidget.number(label: "3", onPressed: () {}),
            ButtonCalcWidget.symbol(label: "+", onPressed: () {}),
          ],
        ),
        Row(
          children: [
            ButtonCalcWidget.number(label: ""),
            ButtonCalcWidget.number(label: "0", onPressed: () {}),
            ButtonCalcWidget.number(label: ".", onPressed: () {}),
            ButtonCalcWidget.symbol(label: "=", onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
