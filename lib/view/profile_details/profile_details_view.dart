import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/assets/assets.dart';

import '../../res/colors/app_color.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg6Light,
      appBar: AppBar(
          backgroundColor: AppColor.bg6Light,
          foregroundColor: AppColor.text2Light,
          elevation: 0,
          titleTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: AppColor.text2Light,
              fontSize: 22,
              fontWeight: FontWeight.w700),
          centerTitle: false,
          title: Text(
            'my_profiles_title'.tr,
          )),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                    color: AppColor.bg3Light,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: AppColor.text3Light.withOpacity(0.4),
                          offset: const Offset(-4, 0),
                          blurRadius: 4),
                      BoxShadow(
                          color: AppColor.text3Light.withOpacity(0.4),
                          offset: const Offset(4, 0),
                          blurRadius: 4)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: Get.height - (Get.height - 20),
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        AssetConstants.profilePhoto,
                      ),
                      backgroundColor: AppColor.bg6Light,
                      radius: 42,
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 10),
                    ),
                    Text(
                      'phoen_num'.tr,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColor.text3Light,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 10),
                    ),
                    Text(
                      '${'phone_label'.tr}: ${'phoen_num'.tr}',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColor.text3Light,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 10),
                    ),
                    const Divider(
                      color: AppColor.divider2,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'total_games'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: AppColor.text3Light,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            SizedBox(
                              height: Get.height - (Get.height - 10),
                            ),
                            Text(
                              'played'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: AppColor.text3Light,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            SizedBox(
                              height: Get.height - (Get.height - 10),
                            ),
                            Text(
                              'count'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: AppColor.text3Light,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            SizedBox(
                              height: Get.height - (Get.height - 10),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'total_games'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: AppColor.text3Light,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            SizedBox(
                              height: Get.height - (Get.height - 10),
                            ),
                            Text(
                              'won'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: AppColor.text3Light,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            SizedBox(
                              height: Get.height - (Get.height - 10),
                            ),
                            Text(
                              'count'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: AppColor.text3Light,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            SizedBox(
                              height: Get.height - (Get.height - 10),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 30),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: AppColor.bg3Light,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: AppColor.text3Light.withOpacity(0.4),
                          offset: const Offset(-4, 0),
                          blurRadius: 4),
                      BoxShadow(
                          color: AppColor.text3Light.withOpacity(0.4),
                          offset: const Offset(4, 0),
                          blurRadius: 4)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height - (Get.height - 20),
                    ),
                    Text(
                      'game_history'.tr,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColor.text3Light,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 90),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'no_game_played'.tr,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColor.text3Light,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 20),
                    ),
                  ],
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
