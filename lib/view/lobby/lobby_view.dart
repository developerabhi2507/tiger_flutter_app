import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/assets/assets.dart';
import 'package:tiger_demo_app/res/components/round_button_widget.dart';
import 'package:tiger_demo_app/res/routes/routes_name.dart';
import 'package:tiger_demo_app/view_models/controllers/lobby/lobby_view_model.dart';

import '../../res/colors/app_color.dart';

class LobbyView extends StatefulWidget {
  const LobbyView({super.key});

  @override
  State<LobbyView> createState() => _LobbyViewState();
}

class _LobbyViewState extends State<LobbyView> {
  final lobbyVM = Get.put(LobbyViewModel());

  @override
  void initState() {
    super.initState();
    lobbyVM.startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetConstants.lobbyScreenBg),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(
                height: Get.height - (Get.height - 70),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    AssetConstants.videoPlayIcon,
                    height: 70,
                    width: 70,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(RouteName.myBalanceView);
                    },
                    child: Container(
                      height: 35,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.only(bottom: 5),
                      // height: Get.height - (Get.height - 20),
                      width: Get.width - (Get.width - 120),
                      decoration: BoxDecoration(
                          color: AppColor.bg1Light,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '₹0',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColor.text3Light,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: Get.width - (Get.width - 20),
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
                    width: Get.width - (Get.width - 20),
                  )
                ],
              ),
            ],
          ),
          // child: Center(
          //   child: SizedBox(
          //     width: Get.width,
          //     height: Get.height,
          //     child: Center(
          //       child: Column(
          //         children: [
          //           Image.asset(
          //             AssetConstants.logo,
          //           )
          //         ],
          //       ),
          //       // child: Stack(
          //       //   fit: StackFit.expand,
          //       //   clipBehavior: Clip.antiAliasWithSaveLayer,
          //       //   children: <Widget>[
          //       //     Container(
          //       //       decoration: const BoxDecoration(
          //       //         image: DecorationImage(
          //       //             image: AssetImage(AssetConstants.lobbyScreenBg),
          //       //             fit: BoxFit.cover),
          //       //       ),
          //       //     ), //Container
          //       //     Positioned(
          //       //       height: Get.height - (Get.height - 50),
          //       //       width: Get.width - (Get.width - 200),
          //       //       top: Get.height - (Get.height - 80),
          //       //       left: Get.width - (Get.width - 120),
          //       //       child: Container(
          //       //         decoration: const BoxDecoration(
          //       //             color: AppColor.text1Light,
          //       //             borderRadius: BorderRadius.only(
          //       //               bottomLeft: Radius.elliptical(100, 100),
          //       //               bottomRight: Radius.elliptical(80, 100),
          //       //             )),
          //       //         child: Row(
          //       //           mainAxisAlignment: MainAxisAlignment.center,
          //       //           children: [
          //       //             Image.asset(
          //       //               AssetConstants.prizePotIcon,
          //       //               height: 60,
          //       //               width: 60,
          //       //             ),
          //       //             SizedBox(
          //       //               width: Get.width - (Get.width - 10),
          //       //             ),
          //       //             Column(
          //       //               children: [],
          //       //             )
          //       //           ],
          //       //         ),
          //       //       ),
          //       //     ),
          //       //     Positioned(
          //       //         top: Get.height - (Get.height - 150),
          //       //         height: Get.height - (Get.height - 430),
          //       //         width: Get.width - (Get.width - 427),
          //       //         child: Image.asset(AssetConstants.logo)), //Container
          //       //     Positioned(
          //       //         top: 550,
          //       //         height: Get.height,
          //       //         width: Get.width,
          //       //         child: Container(
          //       //           color: AppColor.bg1Light,
          //       //         )),
          //       //     // Positioned(
          //       //     //   left: Get.width - (Get.width - 10),
          //       //     //   top: Get.height - (Get.height - 290),
          //       //     //   child: Container(
          //       //     //     height: Get.height - (Get.height - 702),
          //       //     //     width: Get.width - (Get.width - 410),
          //       //     //     decoration: BoxDecoration(
          //       //     //       color: AppColor.bg1Light,
          //       //     //       borderRadius: BorderRadius.circular(34),
          //       //     //       boxShadow: [
          //       //     //         BoxShadow(
          //       //     //           color: AppColor.boxShadow.withOpacity(0.5),
          //       //     //           offset: const Offset(-4, 0),
          //       //     //           blurRadius: 4,
          //       //     //         ),
          //       //     //         BoxShadow(
          //       //     //           color: AppColor.boxShadow.withOpacity(0.5),
          //       //     //           offset: const Offset(4, 4),
          //       //     //           blurRadius: 4,
          //       //     //         ),
          //       //     //       ],
          //       //     //     ),
          //       //     //     child: SingleChildScrollView(
          //       //     //       child: Padding(
          //       //     //         padding: const EdgeInsets.symmetric(horizontal: 20),
          //       //     //         child: Column(
          //       //     //           crossAxisAlignment: CrossAxisAlignment.center,
          //       //     //           children: [
          //       //     //             SizedBox(
          //       //     //               height: Get.height - (Get.height - 26),
          //       //     //             ),
          //       //     //             Align(
          //       //     //               alignment: Alignment.centerLeft,
          //       //     //               child: Text(
          //       //     //                 'tournament'.tr,
          //       //     //                 style: Theme.of(context)
          //       //     //                     .textTheme
          //       //     //                     .labelLarge!
          //       //     //                     .copyWith(
          //       //     //                         color: AppColor.text3Light,
          //       //     //                         fontSize: 22,
          //       //     //                         fontWeight: FontWeight.w700),
          //       //     //               ),
          //       //     //             ),
          //       //     //             SizedBox(
          //       //     //               height: Get.height - (Get.height - 26),
          //       //     //             ),
          //       //     //             Container(
          //       //     //               height: 200,
          //       //     //               decoration: BoxDecoration(
          //       //     //                   color: AppColor.bg1Light,
          //       //     //                   borderRadius: BorderRadius.circular(20.0),
          //       //     //                   boxShadow: [
          //       //     //                     BoxShadow(
          //       //     //                         color: AppColor.text3Light
          //       //     //                             .withOpacity(0.3),
          //       //     //                         offset: const Offset(-2, 2),
          //       //     //                         blurRadius: 4)
          //       //     //                   ]),
          //       //     //               child: Column(
          //       //     //                 crossAxisAlignment: CrossAxisAlignment.center,
          //       //     //                 children: [
          //       //     //                   Container(
          //       //     //                     width: double.infinity,
          //       //     //                     padding: const EdgeInsets.all(10.0),
          //       //     //                     decoration: const BoxDecoration(
          //       //     //                         color: AppColor.bg4Light,
          //       //     //                         borderRadius: BorderRadius.vertical(
          //       //     //                             top: Radius.circular(20))),
          //       //     //                     child: Row(
          //       //     //                       children: [
          //       //     //                         Image.asset(
          //       //     //                           AssetConstants.editProfilesIcon,
          //       //     //                           height: 25,
          //       //     //                           width: 25,
          //       //     //                         ),
          //       //     //                         SizedBox(
          //       //     //                           width: Get.width - (Get.width - 7),
          //       //     //                         ),
          //       //     //                         Text(
          //       //     //                           '1+',
          //       //     //                           style: Theme.of(context)
          //       //     //                               .textTheme
          //       //     //                               .bodySmall!
          //       //     //                               .copyWith(
          //       //     //                                   color: AppColor.text2Light,
          //       //     //                                   fontSize: 16,
          //       //     //                                   fontWeight: FontWeight.w400),
          //       //     //                         ),
          //       //     //                         SizedBox(
          //       //     //                           width: Get.width - (Get.width - 47),
          //       //     //                         ),
          //       //     //                         Text(
          //       //     //                           'unlimited'.tr,
          //       //     //                           style: Theme.of(context)
          //       //     //                               .textTheme
          //       //     //                               .bodySmall!
          //       //     //                               .copyWith(
          //       //     //                                   color: AppColor.text2Light,
          //       //     //                                   fontSize: 16,
          //       //     //                                   fontWeight: FontWeight.w400),
          //       //     //                         ),
          //       //     //                         SizedBox(
          //       //     //                           width: Get.width - (Get.width - 24),
          //       //     //                         ),
          //       //     //                         Text(
          //       //     //                           'tourn_name_1'.tr,
          //       //     //                           style: Theme.of(context)
          //       //     //                               .textTheme
          //       //     //                               .bodySmall!
          //       //     //                               .copyWith(
          //       //     //                                   color: AppColor.text2Light,
          //       //     //                                   fontSize: 16,
          //       //     //                                   fontWeight: FontWeight.w700),
          //       //     //                         ),
          //       //     //                       ],
          //       //     //                     ),
          //       //     //                   ),
          //       //     //                   SizedBox(
          //       //     //                     height: Get.height - (Get.height - 24),
          //       //     //                   ),
          //       //     //                   Row(
          //       //     //                     mainAxisAlignment:
          //       //     //                         MainAxisAlignment.spaceAround,
          //       //     //                     children: [
          //       //     //                       Column(
          //       //     //                         mainAxisAlignment:
          //       //     //                             MainAxisAlignment.center,
          //       //     //                         children: [
          //       //     //                           Text(
          //       //     //                             'prize_pool'.tr,
          //       //     //                             style: Theme.of(context)
          //       //     //                                 .textTheme
          //       //     //                                 .bodySmall!
          //       //     //                                 .copyWith(
          //       //     //                                     color: AppColor.text3Light,
          //       //     //                                     fontSize: 18,
          //       //     //                                     fontWeight:
          //       //     //                                         FontWeight.w400),
          //       //     //                           ),
          //       //     //                           SizedBox(
          //       //     //                             height:
          //       //     //                                 Get.height - (Get.height - 5),
          //       //     //                           ),
          //       //     //                           Container(
          //       //     //                             padding: const EdgeInsets.fromLTRB(
          //       //     //                                 15, 2, 15, 2),
          //       //     //                             decoration: BoxDecoration(
          //       //     //                                 color: AppColor.bg1Light,
          //       //     //                                 borderRadius:
          //       //     //                                     BorderRadius.circular(20),
          //       //     //                                 boxShadow: [
          //       //     //                                   BoxShadow(
          //       //     //                                       color: AppColor.text3Light
          //       //     //                                           .withOpacity(0.3),
          //       //     //                                       offset:
          //       //     //                                           const Offset(-2, 2),
          //       //     //                                       blurRadius: 4)
          //       //     //                                 ]),
          //       //     //                             child: Row(
          //       //     //                               children: [
          //       //     //                                 Text(
          //       //     //                                   'prize_money_1'.tr,
          //       //     //                                   style: Theme.of(context)
          //       //     //                                       .textTheme
          //       //     //                                       .bodySmall!
          //       //     //                                       .copyWith(
          //       //     //                                           color: AppColor
          //       //     //                                               .text3Light,
          //       //     //                                           fontSize: 18,
          //       //     //                                           fontWeight:
          //       //     //                                               FontWeight.w400),
          //       //     //                                 ),
          //       //     //                                 SizedBox(
          //       //     //                                   width: Get.width -
          //       //     //                                       (Get.width - 5),
          //       //     //                                 ),
          //       //     //                                 const Icon(
          //       //     //                                   Icons
          //       //     //                                       .arrow_drop_down_outlined,
          //       //     //                                   color: AppColor.icon2Light,
          //       //     //                                   size: 30,
          //       //     //                                 )
          //       //     //                               ],
          //       //     //                             ),
          //       //     //                           )
          //       //     //                         ],
          //       //     //                       ),
          //       //     //                       Column(
          //       //     //                         mainAxisAlignment:
          //       //     //                             MainAxisAlignment.center,
          //       //     //                         children: [
          //       //     //                           Text(
          //       //     //                             'entry_fee'.tr,
          //       //     //                             style: Theme.of(context)
          //       //     //                                 .textTheme
          //       //     //                                 .bodySmall!
          //       //     //                                 .copyWith(
          //       //     //                                     color: AppColor.text3Light,
          //       //     //                                     fontSize: 18,
          //       //     //                                     fontWeight:
          //       //     //                                         FontWeight.w400),
          //       //     //                           ),
          //       //     //                           SizedBox(
          //       //     //                             height:
          //       //     //                                 Get.height - (Get.height - 5),
          //       //     //                           ),
          //       //     //                           Container(
          //       //     //                             decoration: BoxDecoration(
          //       //     //                                 color: AppColor.bg1Light,
          //       //     //                                 borderRadius:
          //       //     //                                     BorderRadius.circular(20),
          //       //     //                                 boxShadow: [
          //       //     //                                   BoxShadow(
          //       //     //                                       color: AppColor.text3Light
          //       //     //                                           .withOpacity(0.3),
          //       //     //                                       offset:
          //       //     //                                           const Offset(-2, 2),
          //       //     //                                       blurRadius: 4)
          //       //     //                                 ]),
          //       //     //                             child: RoundButtonWidget(
          //       //     //                                 height: Get.height -
          //       //     //                                     (Get.height - 30),
          //       //     //                                 width: Get.width -
          //       //     //                                     (Get.width - 100),
          //       //     //                                 title: 'free_play'.tr,
          //       //     //                                 onPress: () {}),
          //       //     //                           )
          //       //     //                         ],
          //       //     //                       ),
          //       //     //                     ],
          //       //     //                   ),
          //       //     //                   SizedBox(
          //       //     //                     height: Get.height - (Get.height - 10),
          //       //     //                   ),
          //       //     //                   Container(
          //       //     //                       padding: const EdgeInsets.fromLTRB(
          //       //     //                           15, 2, 15, 2),
          //       //     //                       decoration: BoxDecoration(
          //       //     //                           color: AppColor.bg1Light,
          //       //     //                           borderRadius:
          //       //     //                               BorderRadius.circular(20),
          //       //     //                           boxShadow: [
          //       //     //                             BoxShadow(
          //       //     //                                 color: AppColor.text3Light
          //       //     //                                     .withOpacity(0.3),
          //       //     //                                 offset: const Offset(-2, 2),
          //       //     //                                 blurRadius: 4)
          //       //     //                           ]),
          //       //     //                       child: Obx(
          //       //     //                         () => Text(
          //       //     //                           '${lobbyVM.resendTime.value.inMinutes.toString().padLeft(2, '0')}:${(lobbyVM.resendTime.value.inSeconds % 60).toString().padLeft(2, '0')}',
          //       //     //                           style: Theme.of(context)
          //       //     //                               .textTheme
          //       //     //                               .bodySmall!
          //       //     //                               .copyWith(
          //       //     //                                   color: AppColor.timerColor,
          //       //     //                                   fontSize: 16,
          //       //     //                                   fontWeight: FontWeight.w400),
          //       //     //                         ),
          //       //     //                       )),
          //       //     //                   SizedBox(
          //       //     //                     height: Get.height - (Get.height - 10),
          //       //     //                   ),
          //       //     //                   Text(
          //       //     //                     'earn_winnings'.tr,
          //       //     //                     style: Theme.of(context)
          //       //     //                         .textTheme
          //       //     //                         .bodySmall!
          //       //     //                         .copyWith(
          //       //     //                             color: AppColor.text3Light,
          //       //     //                             fontSize: 16,
          //       //     //                             fontWeight: FontWeight.w400),
          //       //     //                   ),
          //       //     //                 ],
          //       //     //               ),
          //       //     //             ),
          //       //     //             SizedBox(
          //       //     //               height: Get.height - (Get.height - 20),
          //       //     //             ),
          //       //     //             Container(
          //       //     //               height: 200,
          //       //     //               decoration: BoxDecoration(
          //       //     //                   color: AppColor.bg1Light,
          //       //     //                   borderRadius: BorderRadius.circular(20.0),
          //       //     //                   boxShadow: [
          //       //     //                     BoxShadow(
          //       //     //                         color: AppColor.text3Light
          //       //     //                             .withOpacity(0.3),
          //       //     //                         offset: const Offset(-2, 2),
          //       //     //                         blurRadius: 4)
          //       //     //                   ]),
          //       //     //               child: Column(
          //       //     //                 crossAxisAlignment: CrossAxisAlignment.center,
          //       //     //                 children: [
          //       //     //                   Container(
          //       //     //                     width: double.infinity,
          //       //     //                     padding: const EdgeInsets.all(10.0),
          //       //     //                     decoration: const BoxDecoration(
          //       //     //                         color: AppColor.bg4Light,
          //       //     //                         borderRadius: BorderRadius.vertical(
          //       //     //                             top: Radius.circular(20))),
          //       //     //                     child: Row(
          //       //     //                       children: [
          //       //     //                         Image.asset(
          //       //     //                           AssetConstants.editProfilesIcon,
          //       //     //                           height: 25,
          //       //     //                           width: 25,
          //       //     //                         ),
          //       //     //                         SizedBox(
          //       //     //                           width: Get.width - (Get.width - 7),
          //       //     //                         ),
          //       //     //                         Text(
          //       //     //                           '1+',
          //       //     //                           style: Theme.of(context)
          //       //     //                               .textTheme
          //       //     //                               .bodySmall!
          //       //     //                               .copyWith(
          //       //     //                                   color: AppColor.text2Light,
          //       //     //                                   fontSize: 16,
          //       //     //                                   fontWeight: FontWeight.w400),
          //       //     //                         ),
          //       //     //                         SizedBox(
          //       //     //                           width: Get.width - (Get.width - 47),
          //       //     //                         ),
          //       //     //                         Text(
          //       //     //                           'upto_50_players'.tr,
          //       //     //                           style: Theme.of(context)
          //       //     //                               .textTheme
          //       //     //                               .bodySmall!
          //       //     //                               .copyWith(
          //       //     //                                   color: AppColor.text2Light,
          //       //     //                                   fontSize: 16,
          //       //     //                                   fontWeight: FontWeight.w400),
          //       //     //                         ),
          //       //     //                         SizedBox(
          //       //     //                           width: Get.width - (Get.width - 24),
          //       //     //                         ),
          //       //     //                         Text(
          //       //     //                           'tourn_name_2'.tr,
          //       //     //                           style: Theme.of(context)
          //       //     //                               .textTheme
          //       //     //                               .bodySmall!
          //       //     //                               .copyWith(
          //       //     //                                   color: AppColor.text2Light,
          //       //     //                                   fontSize: 16,
          //       //     //                                   fontWeight: FontWeight.w700),
          //       //     //                         ),
          //       //     //                       ],
          //       //     //                     ),
          //       //     //                   ),
          //       //     //                   SizedBox(
          //       //     //                     height: Get.height - (Get.height - 24),
          //       //     //                   ),
          //       //     //                   Row(
          //       //     //                     mainAxisAlignment:
          //       //     //                         MainAxisAlignment.spaceAround,
          //       //     //                     children: [
          //       //     //                       Column(
          //       //     //                         mainAxisAlignment:
          //       //     //                             MainAxisAlignment.center,
          //       //     //                         children: [
          //       //     //                           Text(
          //       //     //                             'prize_pool'.tr,
          //       //     //                             style: Theme.of(context)
          //       //     //                                 .textTheme
          //       //     //                                 .bodySmall!
          //       //     //                                 .copyWith(
          //       //     //                                     color: AppColor.text3Light,
          //       //     //                                     fontSize: 18,
          //       //     //                                     fontWeight:
          //       //     //                                         FontWeight.w400),
          //       //     //                           ),
          //       //     //                           SizedBox(
          //       //     //                             height:
          //       //     //                                 Get.height - (Get.height - 5),
          //       //     //                           ),
          //       //     //                           Container(
          //       //     //                             padding: const EdgeInsets.fromLTRB(
          //       //     //                                 15, 2, 15, 2),
          //       //     //                             decoration: BoxDecoration(
          //       //     //                                 color: AppColor.bg1Light,
          //       //     //                                 borderRadius:
          //       //     //                                     BorderRadius.circular(20),
          //       //     //                                 boxShadow: [
          //       //     //                                   BoxShadow(
          //       //     //                                       color: AppColor.text3Light
          //       //     //                                           .withOpacity(0.3),
          //       //     //                                       offset:
          //       //     //                                           const Offset(-2, 2),
          //       //     //                                       blurRadius: 4)
          //       //     //                                 ]),
          //       //     //                             child: Row(
          //       //     //                               children: [
          //       //     //                                 Text(
          //       //     //                                   'prize_money_2'.tr,
          //       //     //                                   style: Theme.of(context)
          //       //     //                                       .textTheme
          //       //     //                                       .bodySmall!
          //       //     //                                       .copyWith(
          //       //     //                                           color: AppColor
          //       //     //                                               .text3Light,
          //       //     //                                           fontSize: 18,
          //       //     //                                           fontWeight:
          //       //     //                                               FontWeight.w400),
          //       //     //                                 ),
          //       //     //                                 SizedBox(
          //       //     //                                   width: Get.width -
          //       //     //                                       (Get.width - 5),
          //       //     //                                 ),
          //       //     //                                 const Icon(
          //       //     //                                   Icons
          //       //     //                                       .arrow_drop_down_outlined,
          //       //     //                                   color: AppColor.icon2Light,
          //       //     //                                   size: 30,
          //       //     //                                 )
          //       //     //                               ],
          //       //     //                             ),
          //       //     //                           )
          //       //     //                         ],
          //       //     //                       ),
          //       //     //                       Column(
          //       //     //                         mainAxisAlignment:
          //       //     //                             MainAxisAlignment.center,
          //       //     //                         children: [
          //       //     //                           Text(
          //       //     //                             'entry_fee'.tr,
          //       //     //                             style: Theme.of(context)
          //       //     //                                 .textTheme
          //       //     //                                 .bodySmall!
          //       //     //                                 .copyWith(
          //       //     //                                     color: AppColor.text3Light,
          //       //     //                                     fontSize: 18,
          //       //     //                                     fontWeight:
          //       //     //                                         FontWeight.w400),
          //       //     //                           ),
          //       //     //                           SizedBox(
          //       //     //                             height:
          //       //     //                                 Get.height - (Get.height - 5),
          //       //     //                           ),
          //       //     //                           Container(
          //       //     //                             decoration: BoxDecoration(
          //       //     //                                 color: AppColor.bg1Light,
          //       //     //                                 borderRadius:
          //       //     //                                     BorderRadius.circular(20),
          //       //     //                                 boxShadow: [
          //       //     //                                   BoxShadow(
          //       //     //                                       color: AppColor.text3Light
          //       //     //                                           .withOpacity(0.3),
          //       //     //                                       offset:
          //       //     //                                           const Offset(-2, 2),
          //       //     //                                       blurRadius: 4)
          //       //     //                                 ]),
          //       //     //                             child: RoundButtonWidget(
          //       //     //                                 height: Get.height -
          //       //     //                                     (Get.height - 30),
          //       //     //                                 width: Get.width -
          //       //     //                                     (Get.width - 100),
          //       //     //                                 title: 'paid_play'.tr,
          //       //     //                                 onPress: () {}),
          //       //     //                           )
          //       //     //                         ],
          //       //     //                       ),
          //       //     //                     ],
          //       //     //                   ),
          //       //     //                   SizedBox(
          //       //     //                     height: Get.height - (Get.height - 10),
          //       //     //                   ),
          //       //     //                   Container(
          //       //     //                       padding: const EdgeInsets.fromLTRB(
          //       //     //                           15, 2, 15, 2),
          //       //     //                       decoration: BoxDecoration(
          //       //     //                           color: AppColor.bg1Light,
          //       //     //                           borderRadius:
          //       //     //                               BorderRadius.circular(20),
          //       //     //                           boxShadow: [
          //       //     //                             BoxShadow(
          //       //     //                                 color: AppColor.text3Light
          //       //     //                                     .withOpacity(0.3),
          //       //     //                                 offset: const Offset(-2, 2),
          //       //     //                                 blurRadius: 4)
          //       //     //                           ]),
          //       //     //                       child: Obx(
          //       //     //                         () => Text(
          //       //     //                           '${lobbyVM.resendTime.value.inMinutes.toString().padLeft(2, '0')}:${(lobbyVM.resendTime.value.inSeconds % 60).toString().padLeft(2, '0')}',
          //       //     //                           style: Theme.of(context)
          //       //     //                               .textTheme
          //       //     //                               .bodySmall!
          //       //     //                               .copyWith(
          //       //     //                                   color: AppColor.timerColor,
          //       //     //                                   fontSize: 16,
          //       //     //                                   fontWeight: FontWeight.w400),
          //       //     //                         ),
          //       //     //                       )),
          //       //     //                   SizedBox(
          //       //     //                     height: Get.height - (Get.height - 10),
          //       //     //                   ),
          //       //     //                   Text(
          //       //     //                     'earn_winnings'.tr,
          //       //     //                     style: Theme.of(context)
          //       //     //                         .textTheme
          //       //     //                         .bodySmall!
          //       //     //                         .copyWith(
          //       //     //                             color: AppColor.text3Light,
          //       //     //                             fontSize: 16,
          //       //     //                             fontWeight: FontWeight.w400),
          //       //     //                   ),
          //       //     //                 ],
          //       //     //               ),
          //       //     //             ),
          //       //     //             SizedBox(
          //       //     //               height: Get.height - (Get.height - 20),
          //       //     //             ),
          //       //     //             Container(
          //       //     //               height: 200,
          //       //     //               decoration: BoxDecoration(
          //       //     //                   color: AppColor.bg1Light,
          //       //     //                   borderRadius: BorderRadius.circular(20.0),
          //       //     //                   boxShadow: [
          //       //     //                     BoxShadow(
          //       //     //                         color: AppColor.text3Light
          //       //     //                             .withOpacity(0.3),
          //       //     //                         offset: const Offset(-2, 2),
          //       //     //                         blurRadius: 4)
          //       //     //                   ]),
          //       //     //               child: Column(
          //       //     //                 crossAxisAlignment: CrossAxisAlignment.center,
          //       //     //                 children: [
          //       //     //                   Container(
          //       //     //                     width: double.infinity,
          //       //     //                     padding: const EdgeInsets.all(10.0),
          //       //     //                     decoration: const BoxDecoration(
          //       //     //                         color: AppColor.bg4Light,
          //       //     //                         borderRadius: BorderRadius.vertical(
          //       //     //                             top: Radius.circular(20))),
          //       //     //                     child: Row(
          //       //     //                       children: [
          //       //     //                         Image.asset(
          //       //     //                           AssetConstants.editProfilesIcon,
          //       //     //                           height: 25,
          //       //     //                           width: 25,
          //       //     //                         ),
          //       //     //                         SizedBox(
          //       //     //                           width: Get.width - (Get.width - 7),
          //       //     //                         ),
          //       //     //                         Text(
          //       //     //                           '1+',
          //       //     //                           style: Theme.of(context)
          //       //     //                               .textTheme
          //       //     //                               .bodySmall!
          //       //     //                               .copyWith(
          //       //     //                                   color: AppColor.text2Light,
          //       //     //                                   fontSize: 16,
          //       //     //                                   fontWeight: FontWeight.w400),
          //       //     //                         ),
          //       //     //                         SizedBox(
          //       //     //                           width: Get.width - (Get.width - 47),
          //       //     //                         ),
          //       //     //                         Text(
          //       //     //                           'upto_10_players'.tr,
          //       //     //                           style: Theme.of(context)
          //       //     //                               .textTheme
          //       //     //                               .bodySmall!
          //       //     //                               .copyWith(
          //       //     //                                   color: AppColor.text2Light,
          //       //     //                                   fontSize: 16,
          //       //     //                                   fontWeight: FontWeight.w400),
          //       //     //                         ),
          //       //     //                         SizedBox(
          //       //     //                           width: Get.width - (Get.width - 24),
          //       //     //                         ),
          //       //     //                         Text(
          //       //     //                           'tourn_name_3'.tr,
          //       //     //                           style: Theme.of(context)
          //       //     //                               .textTheme
          //       //     //                               .bodySmall!
          //       //     //                               .copyWith(
          //       //     //                                   color: AppColor.text2Light,
          //       //     //                                   fontSize: 16,
          //       //     //                                   fontWeight: FontWeight.w700),
          //       //     //                         ),
          //       //     //                       ],
          //       //     //                     ),
          //       //     //                   ),
          //       //     //                   SizedBox(
          //       //     //                     height: Get.height - (Get.height - 24),
          //       //     //                   ),
          //       //     //                   Row(
          //       //     //                     mainAxisAlignment:
          //       //     //                         MainAxisAlignment.spaceAround,
          //       //     //                     children: [
          //       //     //                       Column(
          //       //     //                         mainAxisAlignment:
          //       //     //                             MainAxisAlignment.center,
          //       //     //                         children: [
          //       //     //                           Text(
          //       //     //                             'prize_pool'.tr,
          //       //     //                             style: Theme.of(context)
          //       //     //                                 .textTheme
          //       //     //                                 .bodySmall!
          //       //     //                                 .copyWith(
          //       //     //                                     color: AppColor.text3Light,
          //       //     //                                     fontSize: 18,
          //       //     //                                     fontWeight:
          //       //     //                                         FontWeight.w400),
          //       //     //                           ),
          //       //     //                           SizedBox(
          //       //     //                             height:
          //       //     //                                 Get.height - (Get.height - 5),
          //       //     //                           ),
          //       //     //                           Container(
          //       //     //                             padding: const EdgeInsets.fromLTRB(
          //       //     //                                 15, 2, 15, 2),
          //       //     //                             decoration: BoxDecoration(
          //       //     //                                 color: AppColor.bg1Light,
          //       //     //                                 borderRadius:
          //       //     //                                     BorderRadius.circular(20),
          //       //     //                                 boxShadow: [
          //       //     //                                   BoxShadow(
          //       //     //                                       color: AppColor.text3Light
          //       //     //                                           .withOpacity(0.3),
          //       //     //                                       offset:
          //       //     //                                           const Offset(-2, 2),
          //       //     //                                       blurRadius: 4)
          //       //     //                                 ]),
          //       //     //                             child: Row(
          //       //     //                               children: [
          //       //     //                                 Text(
          //       //     //                                   'prize_money_3'.tr,
          //       //     //                                   style: Theme.of(context)
          //       //     //                                       .textTheme
          //       //     //                                       .bodySmall!
          //       //     //                                       .copyWith(
          //       //     //                                           color: AppColor
          //       //     //                                               .text3Light,
          //       //     //                                           fontSize: 18,
          //       //     //                                           fontWeight:
          //       //     //                                               FontWeight.w400),
          //       //     //                                 ),
          //       //     //                                 SizedBox(
          //       //     //                                   width: Get.width -
          //       //     //                                       (Get.width - 5),
          //       //     //                                 ),
          //       //     //                                 const Icon(
          //       //     //                                   Icons
          //       //     //                                       .arrow_drop_down_outlined,
          //       //     //                                   color: AppColor.icon2Light,
          //       //     //                                   size: 30,
          //       //     //                                 )
          //       //     //                               ],
          //       //     //                             ),
          //       //     //                           )
          //       //     //                         ],
          //       //     //                       ),
          //       //     //                       Column(
          //       //     //                         mainAxisAlignment:
          //       //     //                             MainAxisAlignment.center,
          //       //     //                         children: [
          //       //     //                           Text(
          //       //     //                             'entry_fee'.tr,
          //       //     //                             style: Theme.of(context)
          //       //     //                                 .textTheme
          //       //     //                                 .bodySmall!
          //       //     //                                 .copyWith(
          //       //     //                                     color: AppColor.text3Light,
          //       //     //                                     fontSize: 18,
          //       //     //                                     fontWeight:
          //       //     //                                         FontWeight.w400),
          //       //     //                           ),
          //       //     //                           SizedBox(
          //       //     //                             height:
          //       //     //                                 Get.height - (Get.height - 5),
          //       //     //                           ),
          //       //     //                           Container(
          //       //     //                             decoration: BoxDecoration(
          //       //     //                                 color: AppColor.bg1Light,
          //       //     //                                 borderRadius:
          //       //     //                                     BorderRadius.circular(20),
          //       //     //                                 boxShadow: [
          //       //     //                                   BoxShadow(
          //       //     //                                       color: AppColor.text3Light
          //       //     //                                           .withOpacity(0.3),
          //       //     //                                       offset:
          //       //     //                                           const Offset(-2, 2),
          //       //     //                                       blurRadius: 4)
          //       //     //                                 ]),
          //       //     //                             child: RoundButtonWidget(
          //       //     //                                 height: Get.height -
          //       //     //                                     (Get.height - 30),
          //       //     //                                 width: Get.width -
          //       //     //                                     (Get.width - 100),
          //       //     //                                 title: 'paid_play'.tr,
          //       //     //                                 onPress: () {}),
          //       //     //                           )
          //       //     //                         ],
          //       //     //                       ),
          //       //     //                     ],
          //       //     //                   ),
          //       //     //                   SizedBox(
          //       //     //                     height: Get.height - (Get.height - 10),
          //       //     //                   ),
          //       //     //                   Container(
          //       //     //                       padding: const EdgeInsets.fromLTRB(
          //       //     //                           15, 2, 15, 2),
          //       //     //                       decoration: BoxDecoration(
          //       //     //                           color: AppColor.bg1Light,
          //       //     //                           borderRadius:
          //       //     //                               BorderRadius.circular(20),
          //       //     //                           boxShadow: [
          //       //     //                             BoxShadow(
          //       //     //                                 color: AppColor.text3Light
          //       //     //                                     .withOpacity(0.3),
          //       //     //                                 offset: const Offset(-2, 2),
          //       //     //                                 blurRadius: 4)
          //       //     //                           ]),
          //       //     //                       child: Obx(
          //       //     //                         () => Text(
          //       //     //                           '${lobbyVM.resendTime.value.inMinutes.toString().padLeft(2, '0')}:${(lobbyVM.resendTime.value.inSeconds % 60).toString().padLeft(2, '0')}',
          //       //     //                           style: Theme.of(context)
          //       //     //                               .textTheme
          //       //     //                               .bodySmall!
          //       //     //                               .copyWith(
          //       //     //                                   color: AppColor.timerColor,
          //       //     //                                   fontSize: 16,
          //       //     //                                   fontWeight: FontWeight.w400),
          //       //     //                         ),
          //       //     //                       )),
          //       //     //                   SizedBox(
          //       //     //                     height: Get.height - (Get.height - 10),
          //       //     //                   ),
          //       //     //                   Text(
          //       //     //                     'earn_winnings'.tr,
          //       //     //                     style: Theme.of(context)
          //       //     //                         .textTheme
          //       //     //                         .bodySmall!
          //       //     //                         .copyWith(
          //       //     //                             color: AppColor.text3Light,
          //       //     //                             fontSize: 16,
          //       //     //                             fontWeight: FontWeight.w400),
          //       //     //                   ),
          //       //     //                 ],
          //       //     //               ),
          //       //     //             ),
          //       //     //             SizedBox(
          //       //     //               height: Get.height - (Get.height - 100),
          //       //     //             ),
          //       //     //           ],
          //       //     //         ),
          //       //     //       ),
          //       //     //     ),
          //       //     //   ),
          //       //     // ), //Container
          //       //   ], //<Widget>[]
          //       // ), //Stack
          //     ), //Center
          //   ), //SizedBox
          // ),
        ));
  }
}
