import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../../res/colors/app_color.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  String appVersion = 'app_ver_default'.tr; // Default value

  // Function to get the app version
  Future<void> getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      appVersion = packageInfo.version;
    });
  }

  @override
  void initState() {
    super.initState();
    getAppVersion();
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
          'about'.tr,
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
              Container(
                height: Get.height - (Get.height - 400),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.bg3Light,
                    boxShadow: [
                      BoxShadow(
                          color: AppColor.text3Light.withOpacity(0.1),
                          offset: const Offset(-4, 2),
                          blurRadius: 4),
                      BoxShadow(
                          color: AppColor.text3Light.withOpacity(0.1),
                          offset: const Offset(4, 2),
                          blurRadius: 4),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: Get.width - (Get.width - 300),
                            child: ListTile(
                              title: Text(
                                'rng_cer'.tr,
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
                          const Flexible(
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: AppColor.icon2Light,
                            ),
                          ),
                          SizedBox(
                            width: Get.width - (Get.width - 5),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: AppColor.divider2,
                      thickness: 0.9,
                      indent: 15,
                      endIndent: 15,
                    ),
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: Get.width - (Get.width - 300),
                            child: ListTile(
                              title: Text(
                                'privacy_policy'.tr,
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
                          const Flexible(
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: AppColor.icon2Light,
                            ),
                          ),
                          SizedBox(
                            width: Get.width - (Get.width - 5),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: AppColor.divider2,
                      thickness: 0.9,
                      indent: 15,
                      endIndent: 15,
                    ),
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: Get.width - (Get.width - 300),
                            child: ListTile(
                              title: Text(
                                'about_us'.tr,
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
                          const Flexible(
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: AppColor.icon2Light,
                            ),
                          ),
                          SizedBox(
                            width: Get.width - (Get.width - 5),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: AppColor.divider2,
                      thickness: 0.9,
                      indent: 15,
                      endIndent: 15,
                    ),
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: Get.width - (Get.width - 300),
                            child: ListTile(
                              title: Text(
                                'faq'.tr,
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
                          const Flexible(
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: AppColor.icon2Light,
                            ),
                          ),
                          SizedBox(
                            width: Get.width - (Get.width - 5),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: AppColor.divider2,
                      thickness: 0.9,
                      indent: 15,
                      endIndent: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height - (Get.height - 49),
              ),
              Text(
                '${'app_ver'.tr}: $appVersion',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColor.text3Light,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
