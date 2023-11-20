import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:tiger_demo_app/res/components/round_button_widget.dart';
import 'package:tiger_demo_app/res/components/showcase_widget.dart';
import 'package:tiger_demo_app/res/routes/routes_name.dart';

import '../../res/assets/assets.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final GlobalKey globalKeyOne = GlobalKey();
  final GlobalKey globalKeyTwo = GlobalKey();
  final GlobalKey globalKeyThree = GlobalKey();
  final GlobalKey globalKeyFour = GlobalKey();
  int _currentIndex = 0;
  var locale = Locale('hi', 'IN');
  List<Widget> carouselItems = [
    Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: const DecorationImage(
          image: AssetImage(AssetConstants.onboard1),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: const DecorationImage(
          image: AssetImage(AssetConstants.onboard2),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: const DecorationImage(
          image: AssetImage(AssetConstants.onboard3),
          fit: BoxFit.fill,
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    // Check if the showcase has already been displayed
    SharedPreferences.getInstance().then((prefs) {
      final bool showcaseAlreadyDisplayed =
          prefs.getBool('showcaseDisplayed') ?? false;
      if (!showcaseAlreadyDisplayed) {
        // If the showcase has not been displayed, show it and set the flag
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ShowCaseWidget.of(context).startShowCase([
            globalKeyOne,
            globalKeyTwo,
            globalKeyThree,
            globalKeyFour,
          ]);
          // Set the flag to indicate that the showcase has been displayed
          prefs.setBool('showcaseDisplayed', true);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //     ShowCaseWidget.of(context).startShowCase(
    //         [globalKeyOne, globalKeyTwo, globalKeyThree, globalKeyFour]);
    //   });

    return Scaffold(
        // backgroundColor: Colors.white,
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            CarouselSlider(
                items: carouselItems,
                options: CarouselOptions(
                  height: 350.0,
                  enlargeCenterPage: true,
                  autoPlay: false,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.9,
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
              children: carouselItems.asMap().entries.map((entry) {
                return Container(
                  width: 20, // Adjust the width as needed
                  height: 6, // Adjust the height as needed
                  margin: const EdgeInsets.symmetric(
                      horizontal: 4), // Adjust the margin as needed
                  decoration: BoxDecoration(
                    color:
                        _currentIndex == entry.key ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(
                        20), // Adjust the border radius as needed
                  ),
                );
              }).toList(),
            ),
            const Spacer(),
            ShowCaseWidgets(
              globalKey: globalKeyOne,
              title: 'continue_button_eng'.tr,
              desc: 'switched_to_eng'.tr,
              shapeBorder: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: RoundButtonWidget(
                  width: Get.width - (Get.width - 250),
                  title: 'continue_button_eng'.tr,
                  onPress: () {
                    Get.toNamed(RouteName.signUpView);
                  }),
            ),
            SizedBox(
              height: Get.height - (Get.height - 20),
            ),
            ShowCaseWidgets(
              globalKey: globalKeyTwo,
              title: 'continue_button_hin'.tr,
              desc: 'switched_to_hin'.tr,
              shapeBorder: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: RoundButtonWidget(
                  width: Get.width - (Get.width - 250),
                  title: 'continue_button_hin'.tr,
                  onPress: () {
                    Get.updateLocale(locale);
                    Get.toNamed(RouteName.signUpView);
                  }),
            ),
            SizedBox(
              height: Get.height - (Get.height - 20),
            )
          ],
        ),
      ),
    ));
  }
}
