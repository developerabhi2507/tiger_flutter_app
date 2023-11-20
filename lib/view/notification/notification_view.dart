import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/assets/assets.dart';

import '../../res/colors/app_color.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bg1Light,
        foregroundColor: AppColor.text3Light,
        elevation: 0,
        titleTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: AppColor.text3Light,
            fontSize: 22,
            fontWeight: FontWeight.w700),
        centerTitle: false,
        title: Text(
          'notification_title'.tr,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: Get.height - (Get.height - 49),
            ),
            Image.asset(AssetConstants.notificationGif),
            SizedBox(
              height: Get.height - (Get.height - 49),
            ),
            Text(
              'no_notification'.tr,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColor.text3Light,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
