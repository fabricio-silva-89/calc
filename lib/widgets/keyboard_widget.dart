import 'package:calc/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'button_calc_widget.dart';

class KeyboardWidget extends StatelessWidget {
  final VoidCallback onPressed0;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;
  final VoidCallback onPressed3;
  final VoidCallback onPressed4;
  final VoidCallback onPressed5;
  final VoidCallback onPressed6;
  final VoidCallback onPressed7;
  final VoidCallback onPressed8;
  final VoidCallback onPressed9;
  final VoidCallback onPressedClear;
  final VoidCallback onPressedParentheses;
  final VoidCallback onPressedPercent;
  final VoidCallback onPressedDivision;
  final VoidCallback onPressedMutiplication;
  final VoidCallback onPressedAddition;
  final VoidCallback onPressedSubtraction;
  final VoidCallback onPressedEqual;
  final VoidCallback onPressedComma;

  const KeyboardWidget({
    Key? key,
    required this.onPressed0,
    required this.onPressed1,
    required this.onPressed2,
    required this.onPressed3,
    required this.onPressed4,
    required this.onPressed5,
    required this.onPressed6,
    required this.onPressed7,
    required this.onPressed8,
    required this.onPressed9,
    required this.onPressedClear,
    required this.onPressedParentheses,
    required this.onPressedPercent,
    required this.onPressedDivision,
    required this.onPressedMutiplication,
    required this.onPressedAddition,
    required this.onPressedSubtraction,
    required this.onPressedEqual,
    required this.onPressedComma,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: ButtonCalcWidget.symbol(label: "AC", onPressed: onPressedClear)),
              ButtonCalcWidget.symbol(label: "%", onPressed: onPressedPercent),
              ButtonCalcWidget.symbol(label: "/", onPressed: onPressedDivision),
            ],
          ),
          Row(
            children: [
              ButtonCalcWidget.number(label: "7", onPressed: onPressed7),
              ButtonCalcWidget.number(label: "8", onPressed: onPressed8),
              ButtonCalcWidget.number(label: "9", onPressed: onPressed9),
              ButtonCalcWidget.symbol(label: "X", onPressed: onPressedMutiplication),
            ],
          ),
          Row(
            children: [
              ButtonCalcWidget.number(label: "4", onPressed: onPressed4),
              ButtonCalcWidget.number(label: "5", onPressed: onPressed5),
              ButtonCalcWidget.number(label: "6", onPressed: onPressed6),
              ButtonCalcWidget.symbol(label: "-", onPressed: onPressedSubtraction),
            ],
          ),
          Row(
            children: [
              ButtonCalcWidget.number(label: "1", onPressed: onPressed1),
              ButtonCalcWidget.number(label: "2", onPressed: onPressed2),
              ButtonCalcWidget.number(label: "3", onPressed: onPressed3),
              ButtonCalcWidget.symbol(label: "+", onPressed: onPressedAddition),
            ],
          ),
          Row(
            children: [
              Expanded(child: ButtonCalcWidget.number(label: "0", onPressed: onPressed0)),
              ButtonCalcWidget.number(label: ",", onPressed: onPressedComma),
              ButtonCalcWidget.symbol(label: "=", onPressed: onPressedEqual),
            ],
          ),
        ],
      ),
    );
  }
}
