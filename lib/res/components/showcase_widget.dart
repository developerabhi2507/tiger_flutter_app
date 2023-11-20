import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:tiger_demo_app/res/colors/app_color.dart';

class ShowCaseWidgets extends StatelessWidget {
  const ShowCaseWidgets(
      {super.key,
      required this.globalKey,
      required this.title,
      required this.desc,
      required this.child,
      this.shapeBorder = const CircleBorder()});

  final GlobalKey globalKey;
  final String title;
  final String desc;
  final Widget child;
  final ShapeBorder shapeBorder;
  @override
  Widget build(BuildContext context) {
    return Showcase(
      key: globalKey,
      description: desc,
      targetShapeBorder: shapeBorder,
      tooltipBackgroundColor: AppColor.bg1Light,
      descTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
          color: AppColor.text3Light,
          fontSize: 12,
          fontWeight: FontWeight.w700),
      child: child,
    );
  }
}
