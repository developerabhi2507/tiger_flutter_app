import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/assets/assets.dart';
import 'package:tiger_demo_app/res/colors/app_color.dart';

class AccountViewModel extends GetxController {
  final RxBool value = false.obs;

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 400, // Adjust the height as needed
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: AppColor.bg3Light,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height - (Get.height - 21),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () => Get.back(),
                        icon: const Icon(
                          Icons.close,
                          color: AppColor.text3Light,
                        ))
                  ],
                ),
                CircleAvatar(
                  backgroundColor: AppColor.bg3Light,
                  radius: 70,
                  backgroundImage: AssetImage(
                    AssetConstants.contactUsIcon,
                  ),
                ),
                SizedBox(
                  height: Get.height - (Get.height - 10),
                ),
                Text(
                  'contact_us_title'.tr,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: AppColor.text3Light,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: Get.height - (Get.height - 10),
                ),
                Text(
                  'contact_us_text'.tr,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: AppColor.text3Light,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
