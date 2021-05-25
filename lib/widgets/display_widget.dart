import 'package:calc/core/app_colors.dart';
import 'package:calc/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class DisplayWidget extends StatelessWidget {
  final String input;
  final String output;

  const DisplayWidget({Key? key, required this.input, required this.output}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      color: AppColors.darkBlue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(input, style: AppTextStyles.input),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(output, style: AppTextStyles.result),
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
