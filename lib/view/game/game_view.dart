import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/assets/assets.dart';
import '../../res/colors/app_color.dart';

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView>
    with SingleTickerProviderStateMixin {
  List<double> sectors = [0, 3, 5, 1, 4, 9, 6, 2];
  int randomSectorIndex = -1; // any index on sectors.
  List<double> sectorRadians = []; // sector degrees/radians
  double angle = 0; // angles in radians to spin to
  // other data
  bool spinning = false; // Whether currently spinning or not
  double earnedValue = 0; // currently earned values
  double totalEarnings = 0; // all earnings in total
  int spins = 0; // number of times spinning so far

  // random object to help generate any random int
  math.Random random = math.Random();

  // spin animation controller
  late AnimationController controller;
  // animation
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    // generate sector radians /fill the list
    generateSectorRadians();

    // animation controller
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3600) // 3.6 sec
        );
    // the tween
    Tween<double> tween = Tween<double>(begin: 0, end: 1);

    // the curve behaviour
    CurvedAnimation curve =
        CurvedAnimation(parent: controller, curve: Curves.decelerate);

    // animation
    animation = tween.animate(curve);

    // rebuild the screen as the animation continues
    controller.addListener(() {
      // only when animation completes
      if (controller.isCompleted) {
        // rebuild
        setState(() {
          //record states
          recordStates();
          // update status bool
          spinning = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetConstants.gameView),
                  fit: BoxFit.cover)),
          child: gameContent(context),
        ),
      ),
    );
  }

  Widget gameContent(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: <Widget>[
        _gameTitle(),
        _gameWheel(),
        _gameWheelBorder(),
        _playButton(),
        // _gameActions(),
        _gameStates(),
      ],
    );
  }

  void generateSectorRadians() {
    //radian for 1 sector
    double sectorRadian =
        2 * math.pi / sectors.length; // ie. 360 degrees = 2*pi

    // make it some how large
    for (int i = 0; i < sectors.length; i++) {
      sectorRadians.add((i + 1) * sectorRadian);
    }
  }

  // used to record game statics
  void recordStates() {
    earnedValue = sectors[
        sectors.length - (randomSectorIndex + 1)]; // current earned value
    totalEarnings = totalEarnings + earnedValue; // total earnings
    spins = spins + 1; // all numbers of spins so far
  }

  Widget _gameTitle() {
    return Positioned(
      top: 100,
      left: Get.width / 3.5,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 200,
          height: 50,
          decoration: const BoxDecoration(
              color: AppColor.text1Light,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(100, 100),
                bottomRight: Radius.elliptical(80, 100),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AssetConstants.prizePotIcon,
                height: 60,
                width: 60,
              ),
              SizedBox(
                width: Get.width - (Get.width - 5),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'prize_pot'.tr,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: AppColor.text2Light,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'currency'.tr,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: AppColor.text2Light,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _gameWheel() {
    // center everything in here
    return Center(
      child: Container(
        height: Get.height - (Get.height - 500),
        width: Get.width - (Get.width - 500),
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage(AssetConstants.spinGameBg))),
        child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Transform.rotate(
                angle: controller.value *
                    angle, // angle and controller value in action
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AssetConstants.gameText))),
                ),
              );
            }),
      ),
    );
  }

  Widget _playButton() {
    return Positioned(
        child: InkWell(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetConstants.centerGameButton))),
      ),
      onTap: () {
        // if not spinning, spin
        setState(() {
          if (!spinning) {
            spin(); // a method to spin the wheel/ do the animation in it
            spinning = true; // now spinning status
          }
        });
      },
    ));
  }

  Widget _gameWheelBorder() {
    return Positioned(
        child: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetConstants.gameTextBorder))),
    ));
  }

  void spin() {
    // spinning here
    // get any random sector index
    randomSectorIndex = random.nextInt(sectors.length); // bound exclusive
    // generate a random radian to spin to the wheel
    double randomRadian = generateRandomRadianToSpinTo();
    controller.reset(); // reset any prev. values
    angle = randomRadian;
    controller.forward(); // spin
  }

  double generateRandomRadianToSpinTo() {
    // make it higher as much as you can.
    return (2 * math.pi * sectors.length) + sectorRadians[randomSectorIndex];
  }

  // game statistics
  Widget _gameStates() {
    return Container();
  }
}
