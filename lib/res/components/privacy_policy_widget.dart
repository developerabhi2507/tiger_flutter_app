import 'package:flutter/material.dart';
import 'package:tiger_demo_app/res/colors/app_color.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget(
      {super.key,
      required this.onPress,
      required this.child,
      this.shapeColor = AppColor.bg2Light});
  final VoidCallback onPress;
  final Widget child;
  final Color shapeColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 20,
        height: 24,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: AppColor.border1)),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration:
              BoxDecoration(shape: BoxShape.rectangle, color: shapeColor),
          child: child,
        ),
      ),
    );
  }
}
