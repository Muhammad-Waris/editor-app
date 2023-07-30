import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../app_text.dart';


class RoundButton extends StatelessWidget {
  String text;
  RoundButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 15.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.grey,
          width: 1.5,
        ),
      ),
      child: AppText(
        text: text,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryColor,
      ),
    );
  }
}
