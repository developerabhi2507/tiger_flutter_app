import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/colors/app_color.dart';
import 'package:tiger_demo_app/view/account/account_view.dart';
import 'package:tiger_demo_app/view/home/home_view.dart';
import 'package:tiger_demo_app/view/login/login_view.dart';

import '../res/assets/assets.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  final pages = [const HomeView(), const ProfileSectionView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
      decoration: const BoxDecoration(
        color: AppColor.bg3Light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Image(
                        image: AssetImage(
                          AssetConstants.homeIcon,
                        ),
                        height: 40,
                        width: 40,
                      )
                    : const Image(
                        image: AssetImage(
                          AssetConstants.homeIconDisabled,
                        ),
                        height: 40,
                        width: 40,
                      ),
              ),
              Text('home_label'.tr)
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Image(
                        image: AssetImage(
                          AssetConstants.personIcon,
                        ),
                        height: 40,
                        width: 40,
                      )
                    : const Image(
                        image: AssetImage(
                          AssetConstants.personIconDisabled,
                        ),
                        height: 50,
                        width: 50,
                      ),
              ),
              Text('account_label'.tr)
            ],
          ),
        ],
      ),
    );
  }
}
