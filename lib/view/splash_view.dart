import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/colors/app_color.dart';

import '../res/assets/assets.dart';
import '../view_models/services/splash_services.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    super.initState();
    splashServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        body: Center(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AssetConstants.splashBg,
                ))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              // SizedBox(
              //   height: Get.height - (Get.height - 78),
              // ),
              CircleAvatar(
                  backgroundColor: Colors.transparent,
                  maxRadius: 140,
                  minRadius: 140,
                  child: Image.asset(AssetConstants.logo)),
              SizedBox(
                height: Get.height - (Get.height - 20),
              ),
              Text(
                'app_name'.tr,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 40, color: AppColor.text2Light),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AssetConstants.splash1),
                      SizedBox(
                        height: Get.height - (Get.height - 10),
                      ),
                      Text(
                        'splash1'.tr,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColor.text2Light,
                            ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  SizedBox(
                    width: Get.width - (Get.width - 20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AssetConstants.splash2),
                      SizedBox(
                        height: Get.height - (Get.height - 10),
                      ),
                      Text(
                        'splash2'.tr,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColor.text2Light,
                            ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  SizedBox(
                    width: Get.width - (Get.width - 20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AssetConstants.splash3),
                      SizedBox(
                        height: Get.height - (Get.height - 10),
                      ),
                      Text(
                        'splash3'.tr,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColor.text2Light,
                            ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: Get.height - (Get.height - 20),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
