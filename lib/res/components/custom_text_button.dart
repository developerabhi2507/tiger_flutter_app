import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tiger_demo_app/res/colors/app_color.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      this.loading = false,
      required this.title,
      required this.onPress,
      this.textColor = AppColor.buttonFg4Light,
      this.fontWeight = FontWeight.w900,
      this.fontSize = 20});

  final bool loading;
  final String title;
  final VoidCallback onPress;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight),
              ),
            ),
    );
  }
}
