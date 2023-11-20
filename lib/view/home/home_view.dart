import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/assets/assets.dart';
import 'package:tiger_demo_app/res/colors/app_color.dart';
import 'package:tiger_demo_app/res/components/round_button_widget.dart';
import 'package:tiger_demo_app/res/routes/routes_name.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('app_name'.tr),
        centerTitle: false,
        // toolbarOpacity: 0.8,
        titleSpacing: 40,
        // toolbarHeight: 60,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)),
        ),
        // elevation: 0.00,
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteName.notificationView);
            },
            child: Icon(Icons.notifications),
          ),
          SizedBox(
            width: Get.width - (Get.width - 45),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(RouteName.myBalanceView);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 5),
              // height: Get.height - (Get.height - 20),
              width: Get.width - (Get.width - 120),
              decoration: BoxDecoration(
                  color: AppColor.bg2Light,
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '₹0',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColor.text2Light,
                        fontSize: 19,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: Get.width - (Get.width - 10),
                  ),
                  Flexible(
                    child: Image.asset(
                      AssetConstants.homeWalletIcon,
                      height: 30,
                      width: 30,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: Get.height - (Get.height - 49),
              ),
              Placeholder(
                fallbackHeight: 70,
                fallbackWidth: 284.25,
              ),
              SizedBox(
                height: Get.height - (Get.height - 20),
              ),
              Container(
                width: Get.width - (Get.width - 350),
                height: Get.height - (Get.height - 380),
                decoration: BoxDecoration(
                  color: AppColor.bg1Light,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.text3Light.withOpacity(0.5),
                      offset: Offset(-2, 0),
                      blurRadius: 4,
                    ),
                    BoxShadow(
                      color: AppColor.text3Light.withOpacity(0.5),
                      offset: Offset(2, 0),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(
                      AssetConstants.homeBanner,
                      width: Get.width - (Get.width - 350),
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: ListTile(
                        title: Text(
                          'spin_wheel_title'.tr,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: AppColor.text1Light,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text(
                          'classic__spin'.tr,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: AppColor.text3Light.withOpacity(0.6),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                        ),
                        trailing: RoundButtonWidget(
                            height: Get.height - (Get.height - 50),
                            width: Get.width - (Get.width - 100),
                            title: 'play_now_button'.tr,
                            onPress: () {
                              Get.toNamed(RouteName.howToPlayView);
                            }),
                      ),
                    )
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
