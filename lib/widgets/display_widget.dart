import 'dart:ui';

import 'package:calc/core/app_colors.dart';
import 'package:calc/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class DisplayWidget extends StatelessWidget {
  final TextEditingController inOut;

  const DisplayWidget({
    Key? key,
    required this.inOut,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkBlue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 16.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: inOut,
              style: AppTextStyles.result,
              readOnly: true,
              enabled: false,
              textAlign: TextAlign.end,
            ),
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
