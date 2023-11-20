import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/routes/routes_name.dart';
import 'package:tiger_demo_app/view_models/controllers/lobby/lobby_view_model.dart';

import '../../res/assets/assets.dart';
import '../../res/colors/app_color.dart';
import '../../res/components/round_button_widget.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  const PanelWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final lobbyVM = Get.put(LobbyViewModel());
    return Container(
      height: Get.height - (Get.height - 702),
      width: Get.width - (Get.width - 410),
      decoration: BoxDecoration(
        color: AppColor.bg1Light,
        borderRadius: BorderRadius.circular(34),
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
      child: SingleChildScrollView(
        controller: controller,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height - (Get.height - 56),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'tournament'.tr,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: AppColor.text3Light,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: Get.height - (Get.height - 26),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    color: AppColor.bg1Light,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                          color: AppColor.text3Light.withOpacity(0.3),
                          offset: const Offset(-2, 2),
                          blurRadius: 4)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                          color: AppColor.bg4Light,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            AssetConstants.editProfilesIcon,
                            height: 25,
                            width: 25,
                          ),
                          SizedBox(
                            width: Get.width - (Get.width - 7),
                          ),
                          Text(
                            '1+',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.text2Light,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          // SizedBox(
                          //   width: Get.width - (Get.width - 47),
                          // ),
                          Text(
                            'unlimited'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.text2Light,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          // SizedBox(
                          //   width: Get.width - (Get.width - 24),
                          // ),
                          Text(
                            'tourn_name_1'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.text2Light,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 24),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'prize_pool'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: AppColor.text3Light,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: Get.height - (Get.height - 5),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(15, 2, 15, 2),
                              decoration: BoxDecoration(
                                  color: AppColor.bg1Light,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColor.text3Light
                                            .withOpacity(0.3),
                                        offset: const Offset(-2, 2),
                                        blurRadius: 4)
                                  ]),
                              child: Row(
                                children: [
                                  Text(
                                    'prize_money_1'.tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: AppColor.text3Light,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: Get.width - (Get.width - 5),
                                  ),
                                  const Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: AppColor.icon2Light,
                                    size: 30,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'entry_fee'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: AppColor.text3Light,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: Get.height - (Get.height - 5),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColor.bg1Light,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColor.text3Light
                                            .withOpacity(0.3),
                                        offset: const Offset(-2, 2),
                                        blurRadius: 4)
                                  ]),
                              child: RoundButtonWidget(
                                  height: Get.height - (Get.height - 30),
                                  width: Get.width - (Get.width - 100),
                                  title: 'free_play'.tr,
                                  onPress: () {
                                    Get.toNamed(RouteName.gamePlayView);
                                  }),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 10),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(15, 2, 15, 2),
                        decoration: BoxDecoration(
                            color: AppColor.bg1Light,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColor.text3Light.withOpacity(0.3),
                                  offset: const Offset(-2, 2),
                                  blurRadius: 4)
                            ]),
                        child: Obx(
                          () => Text(
                            '${lobbyVM.resendTime.value.inMinutes.toString().padLeft(2, '0')}:${(lobbyVM.resendTime.value.inSeconds % 60).toString().padLeft(2, '0')}',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.timerColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                          ),
                        )),
                    SizedBox(
                      height: Get.height - (Get.height - 10),
                    ),
                    Text(
                      'earn_winnings'.tr,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColor.text3Light,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height - (Get.height - 20),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    color: AppColor.bg1Light,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                          color: AppColor.text3Light.withOpacity(0.3),
                          offset: const Offset(-2, 2),
                          blurRadius: 4)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                          color: AppColor.bg4Light,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      child: Row(
                        children: [
                          Image.asset(
                            AssetConstants.editProfilesIcon,
                            height: 25,
                            width: 25,
                          ),
                          const Spacer(),
                          // SizedBox(
                          //   width: Get.width - (Get.width - 7),
                          // ),
                          Text(
                            '1+',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.text2Light,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          // SizedBox(
                          //   width: Get.width - (Get.width - 47),
                          // ),
                          Text(
                            'upto_50_players'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.text2Light,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                          ),
                          // SizedBox(
                          //   width: Get.width - (Get.width - 24),
                          // ),
                          const Spacer(),
                          Text(
                            'tourn_name_2'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.text2Light,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 24),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'prize_pool'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: AppColor.text3Light,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: Get.height - (Get.height - 5),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(15, 2, 15, 2),
                              decoration: BoxDecoration(
                                  color: AppColor.bg1Light,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColor.text3Light
                                            .withOpacity(0.3),
                                        offset: const Offset(-2, 2),
                                        blurRadius: 4)
                                  ]),
                              child: Row(
                                children: [
                                  Text(
                                    'prize_money_2'.tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: AppColor.text3Light,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: Get.width - (Get.width - 5),
                                  ),
                                  const Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: AppColor.icon2Light,
                                    size: 30,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'entry_fee'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: AppColor.text3Light,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: Get.height - (Get.height - 5),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColor.bg1Light,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColor.text3Light
                                            .withOpacity(0.3),
                                        offset: const Offset(-2, 2),
                                        blurRadius: 4)
                                  ]),
                              child: RoundButtonWidget(
                                  height: Get.height - (Get.height - 30),
                                  width: Get.width - (Get.width - 100),
                                  title: 'paid_play'.tr,
                                  onPress: () {}),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 10),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(15, 2, 15, 2),
                        decoration: BoxDecoration(
                            color: AppColor.bg1Light,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColor.text3Light.withOpacity(0.3),
                                  offset: const Offset(-2, 2),
                                  blurRadius: 4)
                            ]),
                        child: Obx(
                          () => Text(
                            '${lobbyVM.resendTime.value.inMinutes.toString().padLeft(2, '0')}:${(lobbyVM.resendTime.value.inSeconds % 60).toString().padLeft(2, '0')}',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.timerColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                          ),
                        )),
                    SizedBox(
                      height: Get.height - (Get.height - 10),
                    ),
                    Text(
                      'earn_winnings'.tr,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColor.text3Light,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height - (Get.height - 20),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    color: AppColor.bg1Light,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                          color: AppColor.text3Light.withOpacity(0.3),
                          offset: const Offset(-2, 2),
                          blurRadius: 4)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                          color: AppColor.bg4Light,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      child: Row(
                        children: [
                          Image.asset(
                            AssetConstants.editProfilesIcon,
                            height: 25,
                            width: 25,
                          ),
                          SizedBox(
                            width: Get.width - (Get.width - 7),
                          ),
                          Text(
                            '1+',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.text2Light,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          // SizedBox(
                          //   width: Get.width - (Get.width - 47),
                          // ),
                          Text(
                            'upto_10_players'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.text2Light,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          // SizedBox(
                          //   width: Get.width - (Get.width - 24),
                          // ),
                          Text(
                            'tourn_name_3'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.text2Light,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 24),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'prize_pool'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: AppColor.text3Light,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: Get.height - (Get.height - 5),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(15, 2, 15, 2),
                              decoration: BoxDecoration(
                                  color: AppColor.bg1Light,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColor.text3Light
                                            .withOpacity(0.3),
                                        offset: const Offset(-2, 2),
                                        blurRadius: 4)
                                  ]),
                              child: Row(
                                children: [
                                  Text(
                                    'prize_money_3'.tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: AppColor.text3Light,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: Get.width - (Get.width - 5),
                                  ),
                                  const Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: AppColor.icon2Light,
                                    size: 30,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'entry_fee'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: AppColor.text3Light,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: Get.height - (Get.height - 5),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColor.bg1Light,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColor.text3Light
                                            .withOpacity(0.3),
                                        offset: const Offset(-2, 2),
                                        blurRadius: 4)
                                  ]),
                              child: RoundButtonWidget(
                                  height: Get.height - (Get.height - 30),
                                  width: Get.width - (Get.width - 100),
                                  title: 'paid_play'.tr,
                                  onPress: () {}),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height - (Get.height - 10),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(15, 2, 15, 2),
                        decoration: BoxDecoration(
                            color: AppColor.bg1Light,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColor.text3Light.withOpacity(0.3),
                                  offset: const Offset(-2, 2),
                                  blurRadius: 4)
                            ]),
                        child: Obx(
                          () => Text(
                            '${lobbyVM.resendTime.value.inMinutes.toString().padLeft(2, '0')}:${(lobbyVM.resendTime.value.inSeconds % 60).toString().padLeft(2, '0')}',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.timerColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                          ),
                        )),
                    SizedBox(
                      height: Get.height - (Get.height - 10),
                    ),
                    Text(
                      'earn_winnings'.tr,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColor.text3Light,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height - (Get.height - 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
