import 'package:calc/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class ButtonCalcWidget extends StatelessWidget {
  final String label;
  final TextStyle fontStyle;
  final VoidCallback? onPressed;

  const ButtonCalcWidget({
    Key? key,
    required this.label,
    this.onPressed,
    required this.fontStyle,
  }) : super(key: key);

  ButtonCalcWidget.number({
    required String label,
    VoidCallback? onPressed,
  })  : this.label = label,
        this.fontStyle = AppTextStyles.keyboardNumber,
        this.onPressed = onPressed;

  ButtonCalcWidget.symbol({
    required String label,
    VoidCallback? onPressed,
  })  : this.label = label,
        this.fontStyle = AppTextStyles.keyboardSymbol,
        this.onPressed = onPressed;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width / 4;

    return Container(
      height: size,
      width: size,
      child: TextButton(
        child: Text(
          label,
          style: fontStyle,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
