import 'package:flutter/material.dart';

class ButtonCalcWidget extends StatelessWidget {
  final String label;

  const ButtonCalcWidget({Key? key, required this.label}) : super(key: key);

  // ButtonCalcWidget.darkGrey({required String label, required VoidCallback onTap, this.label,})

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.label),
    );
  }
}
