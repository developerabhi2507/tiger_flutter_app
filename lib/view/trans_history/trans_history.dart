import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/assets/assets.dart';
import 'package:tiger_demo_app/res/components/round_button_widget.dart';

import '../../res/colors/app_color.dart';

class TransactionHistoryView extends StatefulWidget {
  const TransactionHistoryView({super.key});

  @override
  State<TransactionHistoryView> createState() => _TransactionHistoryViewState();
}

class _TransactionHistoryViewState extends State<TransactionHistoryView> {
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
          'trans_history_title'.tr,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetConstants.transHistory,
            ),
            SizedBox(
              height: Get.height - (Get.height - 20),
            ),
            Text(
              'filter_select'.tr,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColor.text3Light,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: Get.height - (Get.height - 20),
            ),
            RoundButtonWidget(
                width: Get.width - (Get.width - 200),
                title: 'reset_button'.tr,
                onPress: () {})
          ],
        ),
      ),
    );
  }
}
