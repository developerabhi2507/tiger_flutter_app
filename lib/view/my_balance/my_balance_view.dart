import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/components/round_button_widget.dart';
import 'package:tiger_demo_app/res/routes/routes_name.dart';

import '../../res/colors/app_color.dart';

class MyBalanceView extends StatefulWidget {
  const MyBalanceView({super.key});

  @override
  State<MyBalanceView> createState() => _MyBalanceViewState();
}

class _MyBalanceViewState extends State<MyBalanceView> {
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
          'my_balances_title'.tr,
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
              const Placeholder(
                fallbackHeight: 70,
                fallbackWidth: 284.25,
              ),
              SizedBox(
                height: Get.height - (Get.height - 49),
              ),
              Container(
                width: Get.width - (Get.width - 320),
                height: Get.height - (Get.height - 220),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: AppColor.bg4Light,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.text3Light.withOpacity(0.3),
                      offset: const Offset(-2, 0),
                      blurRadius: 4,
                    ),
                    BoxShadow(
                      color: AppColor.text3Light.withOpacity(0.3),
                      offset: const Offset(2, 0),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height - (Get.height - 12),
                    ),
                    Text(
                      'total_balance'.tr,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: AppColor.text2Light,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 10),
                    ),
                    Text(
                      'currency'.tr,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: AppColor.text2Light,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 10),
                    ),
                    SizedBox(
                      width: Get.width - (Get.width - 300),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 5, // Width of the dot
                            height: 5, // Height of the dot
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.bg1Light, // Color of the dot
                            ),
                          ),
                          const Expanded(
                            child: Divider(
                              color: AppColor.bg1Light, // Color of the divider
                              height: 1, // Height of the divider
                              thickness: 1, // Thickness of the divider
                              endIndent: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'winning_amount'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                      color: AppColor.text2Light,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'currency'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                      color: AppColor.text2Light,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RoundButtonWidget(
                                width: 120,
                                height: 40,
                                buttonColor: AppColor.buttonBg3Light,
                                textColor: AppColor.buttonFg3Light,
                                title: 'withdraw'.tr,
                                onPress: () {
                                  Get.toNamed(RouteName.withdrawView);
                                }),
                            SizedBox(
                              height: Get.height - (Get.height - 20),
                            ),
                            RoundButtonWidget(
                                width: 120,
                                height: 40,
                                buttonColor: AppColor.buttonBg3Light,
                                textColor: AppColor.buttonFg3Light,
                                title: 'add_money'.tr,
                                onPress: () {
                                  Get.toNamed(RouteName.addMoneyView);
                                }),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height - (Get.height - 49),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(RouteName.transactionHistoryView);
                },
                child: Container(
                  width: Get.width - (Get.width - 283),
                  height: Get.height - (Get.height - 49),
                  decoration: BoxDecoration(
                    color: AppColor.bg4Light,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.text3Light.withOpacity(0.5),
                        offset: const Offset(-2, 0),
                        blurRadius: 4,
                      ),
                      BoxShadow(
                        color: AppColor.text3Light.withOpacity(0.5),
                        offset: const Offset(2, 0),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // SizedBox(width: Get.width - (Get.width - 5)),
                      Text(
                        'trans_history'.tr,
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: AppColor.text2Light,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColor.bg1Light,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
