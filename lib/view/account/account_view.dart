import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/assets/assets.dart';
import 'package:tiger_demo_app/res/colors/app_color.dart';
import 'package:tiger_demo_app/res/routes/routes_name.dart';
import 'package:tiger_demo_app/view_models/controllers/account_section/acc_sec_view_model.dart';

class ProfileSectionView extends StatefulWidget {
  const ProfileSectionView({super.key});

  @override
  State<ProfileSectionView> createState() => _ProfileSectionViewState();
}

class _ProfileSectionViewState extends State<ProfileSectionView> {
  final accSecVM = Get.put(AccountViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height - (Get.height - 100),
              ),
              ListTile(
                leading: Image.asset(
                  AssetConstants.profileIcon,
                ),
                title: const Text(
                  'phoneNumber',
                ),
                titleTextStyle: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(
                        color: AppColor.text3Light,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(RouteName.myProfileView);
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'see_profile'.tr,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: AppColor.text4Light,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: Get.width - (Get.width - 5),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: AppColor.divider2.withOpacity(0.3),
                thickness: 1,
              ),
              SizedBox(
                height: Get.height - (Get.height - 20),
              ),
              Text(
                'choose_lang'.tr,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColor.text3Light,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Divider(
                color: AppColor.divider2.withOpacity(0.3),
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(RouteName.myBalanceView);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width - (Get.width - 300),
                      child: ListTile(
                        leading: Image.asset(
                          AssetConstants.walletIcon,
                        ),
                        title: Text(
                          'wallet_balance'.tr,
                        ),
                        titleTextStyle: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: AppColor.text3Light,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'initial_ammount'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    color: AppColor.text3Light,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppColor.icon2Light,
                    )
                  ],
                ),
              ),
              Divider(
                color: AppColor.divider2.withOpacity(0.3),
                thickness: 1,
              ),
              InkWell(
                onTap: () => accSecVM.openBottomSheet(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width - (Get.width - 300),
                      child: ListTile(
                        leading: Image.asset(
                          AssetConstants.helpIcon,
                        ),
                        title: Text(
                          'help'.tr,
                        ),
                        titleTextStyle: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: AppColor.text3Light,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'customer_suppo'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    color: AppColor.text3Light,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppColor.icon2Light,
                    )
                  ],
                ),
              ),
              Divider(
                color: AppColor.divider2.withOpacity(0.3),
                thickness: 1,
              ),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(RouteName.aboutView);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width - (Get.width - 300),
                      child: ListTile(
                        leading: Image.asset(
                          AssetConstants.aboutIcon,
                        ),
                        title: Text(
                          'about'.tr,
                        ),
                        titleTextStyle: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: AppColor.text3Light,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppColor.icon2Light,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              Divider(
                color: AppColor.divider2.withOpacity(0.3),
                thickness: 1,
              ),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(RouteName.referView);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width - (Get.width - 300),
                      child: ListTile(
                        leading: Image.asset(
                          AssetConstants.walletIcon,
                        ),
                        title: Text(
                          'refer'.tr,
                        ),
                        titleTextStyle: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: AppColor.text3Light,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppColor.icon2Light,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              Divider(
                color: AppColor.divider2.withOpacity(0.3),
                thickness: 1,
              ),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width - (Get.width - 300),
                    child: ListTile(
                      leading: Image.asset(
                        AssetConstants.logoutIcon,
                      ),
                      title: Text(
                        'logout'.tr,
                      ),
                      titleTextStyle: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(
                              color: AppColor.text3Light,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppColor.icon2Light,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
