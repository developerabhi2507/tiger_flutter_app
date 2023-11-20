import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/colors/app_color.dart';
import 'package:tiger_demo_app/res/components/round_button_widget.dart';
import 'package:tiger_demo_app/res/routes/routes_name.dart';

import '../../res/assets/assets.dart';

class LearnToPlayView extends StatefulWidget {
  const LearnToPlayView({super.key});

  @override
  State<LearnToPlayView> createState() => _LearnToPlayViewState();
}

class _LearnToPlayViewState extends State<LearnToPlayView> {
  RxBool isNextButtonPressed = false.obs;
  int _currentIndex = 0;
  List<Widget> getCarouselItems(BuildContext context) {
    return [
      Container(
        margin: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: const DecorationImage(
            image: AssetImage(AssetConstants.logo),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        width: Get.width - (Get.width - 330),
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: AppColor.bg1Light,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColor.boxShadow.withOpacity(0.5),
              offset: const Offset(-4, 0),
              blurRadius: 4,
            ),
            BoxShadow(
              color: AppColor.boxShadow.withOpacity(0.5),
              offset: const Offset(4, 4),
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'tournament_time'.tr,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColor.text3Light,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: Get.width - (Get.width - 10),
                ),
                Container(
                  width: Get.width - (Get.width - 120),
                  height: Get.height - (Get.height - 42),
                  decoration: BoxDecoration(
                    color: AppColor.bg5Light,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.text3Light.withOpacity(0.5),
                        offset: const Offset(-2, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        AssetConstants.totalTimeIcon,
                        height: 30,
                        width: 30,
                      ),
                      Flexible(
                          child: Text(
                        '60_second'.tr,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColor.text1Light,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height - (Get.height - 20),
            ),
            SizedBox(
              width: Get.width - (Get.width - 280),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 5, // Width of the dot
                    height: 5, // Height of the dot
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.text1Light, // Color of the dot
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: AppColor.text1Light, // Color of the divider
                      height: 1, // Height of the divider
                      thickness: 1, // Thickness of the divider
                      endIndent: 8,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height - (Get.height - 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'game_time'.tr,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColor.text3Light,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: Get.width - (Get.width - 10),
                ),
                Image.asset(
                  AssetConstants.person2Icon,
                  height: 60,
                  width: 60,
                ),
              ],
            ),
            SizedBox(
              height: Get.height - (Get.height - 20),
            ),
            SizedBox(
              width: Get.width - (Get.width - 280),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 5, // Width of the dot
                    height: 5, // Height of the dot
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.text1Light, // Color of the dot
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: AppColor.text1Light, // Color of the divider
                      height: 1, // Height of the divider
                      thickness: 1, // Thickness of the divider
                      endIndent: 8,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height - (Get.height - 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'settlement_time'.tr,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColor.text3Light,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: Get.width - (Get.width - 10),
                ),
                Image.asset(
                  AssetConstants.startGameIcon,
                  height: 60,
                  width: 60,
                ),
              ],
            ),
            SizedBox(
              height: Get.height - (Get.height - 20),
            ),
            SizedBox(
              width: Get.width - (Get.width - 280),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 5, // Width of the dot
                    height: 5, // Height of the dot
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.text1Light, // Color of the dot
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: AppColor.text1Light, // Color of the divider
                      height: 1, // Height of the divider
                      thickness: 1, // Thickness of the divider
                      endIndent: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: Get.height - (Get.height - 76),
              ),
              Text(
                'learn_to_play_title'.tr,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColor.text1Light,
                    fontSize: 28,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Get.height - (Get.height - 20),
              ),
              CarouselSlider(
                  items: getCarouselItems(context),
                  options: CarouselOptions(
                    height: 450.0,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 1.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  )),
              SizedBox(
                height: Get.height - (Get.height - 28),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    getCarouselItems(context).asMap().entries.map((entry) {
                  return Container(
                    width: 30, // Adjust the width as needed
                    height: 9, // Adjust the height as needed
                    margin: const EdgeInsets.symmetric(
                        horizontal: 4), // Adjust the margin as needed
                    decoration: BoxDecoration(
                      color: _currentIndex == entry.key
                          ? Colors.blue
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(
                          20), // Adjust the border radius as needed
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: Get.height - (Get.height - 20),
              ),

              Obx(() {
                if (!isNextButtonPressed.value) {
                  return RoundButtonWidget(
                      width: Get.width - (Get.width - 200),
                      title: 'next_button'.tr,
                      onPress: () {
                        isNextButtonPressed.value = true;
                      });
                }
                return RoundButtonWidget(
                    width: Get.width - (Get.width - 200),
                    title: 'play_button'.tr,
                    onPress: () {
                      isNextButtonPressed.value = false;
                      Get.toNamed(RouteName.lobbyView);
                    });
              }),
              // if (isNextButtonPressed.value)
              //   Obx(() => RoundButtonWidget(
              //       width: Get.width - (Get.width - 200),
              //       title: 'play_button'.tr,
              //       onPress: () {}))
            ],
          ),
        ),
      ),
    );
  }
}
