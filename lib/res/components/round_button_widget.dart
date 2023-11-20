import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class RoundButtonWidget extends StatelessWidget {
  const RoundButtonWidget(
      {super.key,
      this.buttonColor = AppColor.buttonBg1Light,
      this.textColor = AppColor.buttonFg1Light,
      required this.title,
      required this.onPress,
      this.isPressed = false,
      this.width = 60,
      this.height = 50,
      this.borderRadius = 10,
      this.loading = false});

  final bool loading;
  final String title;
  final double height, width, borderRadius;
  final VoidCallback onPress;
  final bool isPressed;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: buttonColor,
          boxShadow: [
            if (isPressed) // Add a shadow when the button is pressed
              BoxShadow(
                color: AppColor.buttonBg1Light, // Shadow color
                offset: Offset(2, 2), // Shadow offset
                blurRadius: 4, // Shadow blur radius
              ),
          ],
        ),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: textColor, fontSize: 16),
                ),
              ),
      ),
    );
  }
}
