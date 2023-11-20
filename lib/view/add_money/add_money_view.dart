import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/assets/assets.dart';
import '../../res/colors/app_color.dart';
import '../../res/components/round_button_widget.dart';
import '../../res/routes/routes_name.dart';

class AddMoneyView extends StatefulWidget {
  const AddMoneyView({super.key});

  @override
  State<AddMoneyView> createState() => _AddMoneyViewState();
}

class _AddMoneyViewState extends State<AddMoneyView> {
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
          'add_money_title'.tr,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height - (Get.height - 49),
                ),
                Container(
                  width: Get.width - (Get.width - 320),
                  height: Get.height - (Get.height - 140),
                  padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'add_money_title'.tr,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColor.text2Light,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: Get.width - (Get.width - 20)),
                          Text(
                            'currency'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: AppColor.text2Light,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          SizedBox(width: Get.width - (Get.width - 10)),
                          SizedBox(
                            width: Get.width - (Get.width - 150),
                            child: TextField(
                              autofocus: true,
                              keyboardType: TextInputType.number,
                              maxLines: 1,
                              textInputAction: TextInputAction.done,
                              cursorColor: AppColor.cursor,
                              // textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'enter_amount_text'.tr,
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: AppColor.text2Light,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                alignLabelWithHint: true,
                              ),
                            ),
                          ),
                        ],
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
                                color:
                                    AppColor.bg1Light, // Color of the divider
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
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'add_money_max'.tr,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppColor.text2Light,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height - (Get.height - 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height - (Get.height - 20),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'add_money_modes'.tr,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColor.text3Light,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height - (Get.height - 20),
                ),
                Container(
                  width: Get.width - (Get.width - 320),
                  height: Get.height - (Get.height - 70),
                  padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: AppColor.bg4Light,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.text3Light.withOpacity(0.3),
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage(
                          AssetConstants.upiIcon,
                        ),
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: Get.width - (Get.width - 17),
                      ),
                      Text('upi_id_text'.tr,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppColor.text2Light,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  )),
                      SizedBox(
                        width: Get.width - (Get.width - 90),
                      ),
                      RoundButtonWidget(
                          height: 30,
                          width: 70,
                          buttonColor: AppColor.buttonBg2Light,
                          textColor: AppColor.text1Light,
                          borderRadius: 20,
                          title: 'link_button'.tr,
                          onPress: () {})
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height - (Get.height - 20),
                ),
                Container(
                  width: Get.width - (Get.width - 320),
                  height: Get.height - (Get.height - 70),
                  padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: AppColor.bg4Light,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.text3Light.withOpacity(0.3),
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage(
                          AssetConstants.bankAccIcon,
                        ),
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: Get.width - (Get.width - 17),
                      ),
                      Text('bank_acc'.tr,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppColor.text2Light,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  )),
                      SizedBox(
                        width: Get.width - (Get.width - 35),
                      ),
                      Flexible(
                        child: RoundButtonWidget(
                            height: 30,
                            width: 70,
                            buttonColor: AppColor.buttonBg2Light,
                            textColor: AppColor.text1Light,
                            borderRadius: 20,
                            title: 'add_button'.tr,
                            onPress: () {
                              Get.toNamed(RouteName.addBankAccView);
                            }),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
