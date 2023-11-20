import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/assets/assets.dart';

import '../../res/colors/app_color.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: AppColor.text3Light,
              fontSize: 20,
              fontWeight: FontWeight.w700),
          centerTitle: true,
          title: Text('app_name'.tr),
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            image: AssetImage(
              AssetConstants.loadingView,
            ),
          )),
        ));
  }
}
