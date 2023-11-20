import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/assets/assets.dart';

import '../../res/colors/app_color.dart';

class ReferAndGetCashView extends StatefulWidget {
  const ReferAndGetCashView({super.key});

  @override
  State<ReferAndGetCashView> createState() => _ReferAndGetCashViewState();
}

class _ReferAndGetCashViewState extends State<ReferAndGetCashView> {
  final String dummyCode = 'dummy_code'.tr;

  // Function to copy the code to the clipboard
  void copyCodeToClipboard() {
    Clipboard.setData(ClipboardData(text: dummyCode));
    Get.snackbar(
      'Code Copied',
      'The code has been copied to the clipboard',
    );
  }

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
          'refer'.tr,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height - (Get.height - 49),
              ),
              Text(
                'refer_and_earn_text'.tr,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColor.text1Light,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(
                height: Get.height - (Get.height - 20),
              ),
              Text(
                'play_games_text'.tr,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColor.text3Light,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(
                height: Get.height - (Get.height - 30),
              ),
              Container(
                height: Get.height - (Get.height - 90),
                width: Get.width - (Get.width - 190),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AssetConstants.referCodeBg),
                      fit: BoxFit.contain),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: copyCodeToClipboard,
                      child: Text(
                        dummyCode,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColor.text2Light,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                    Text(
                      'copy_code'.tr,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColor.text2Light,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
